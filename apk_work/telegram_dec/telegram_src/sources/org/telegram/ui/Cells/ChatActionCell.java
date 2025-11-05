package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessageSuggestionParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars$StarGift;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.ChannelAdminLogActivity;
import org.telegram.ui.ChatBackgroundDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RadialProgress2;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TopicSeparator;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.GradientClip;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarGiftUniqueActionLayout;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.UploadingDotsSpannable;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.PreviewView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ChatActionCell extends BaseCell implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
    private static Map monthsToEmoticon;
    private int TAG;
    private SpannableStringBuilder accessibilityText;
    private int adaptiveEmojiColor;
    private ColorFilter adaptiveEmojiColorFilter;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private boolean attachedToWindow;
    private AvatarDrawable avatarDrawable;
    StoriesUtilities.AvatarStoryParams avatarStoryParams;
    private int backgroundButtonTop;
    private int backgroundHeight;
    private int backgroundLeft;
    private Path backgroundPath;
    private RectF backgroundRect;
    private int backgroundRectHeight;
    private int backgroundRight;
    private ButtonBounce bounce;
    private boolean buttonClickableAsImage;
    private boolean canDrawInParent;
    private Path clipPath;
    private int currentAccount;
    private MessageObject currentMessageObject;
    private ImageLocation currentVideoLocation;
    private int customDate;
    private CharSequence customText;
    private ChatActionCellDelegate delegate;
    private float dimAmount;
    private final Paint dimPaint;
    public boolean firstInChat;
    private boolean forceWasUnread;
    private boolean giftButtonPressed;
    private RectF giftButtonRect;
    private TLRPC.VideoSize giftEffectAnimation;
    private int giftPremiumAdditionalHeight;
    private StaticLayout giftPremiumButtonLayout;
    private float giftPremiumButtonWidth;
    private Text giftPremiumReleasedText;
    private StaticLayout giftPremiumSubtitleLayout;
    private TextLayout giftPremiumText;
    private GradientClip giftPremiumTextClip;
    private boolean giftPremiumTextCollapsed;
    private int giftPremiumTextCollapsedHeight;
    private AnimatedFloat giftPremiumTextExpandedAnimated;
    private Text giftPremiumTextMore;
    private int giftPremiumTextMoreH;
    private int giftPremiumTextMoreX;
    private int giftPremiumTextMoreY;
    private boolean giftPremiumTextUncollapsed;
    private StaticLayout giftPremiumTitleLayout;
    private boolean giftRectEmpty;
    private int giftRectSize;
    private Paint giftReleasedBackgroundPaint;
    private CornerPathEffect giftRibbonPaintEffect;
    private ColorMatrixColorFilter giftRibbonPaintFilter;
    private boolean giftRibbonPaintFilterDark;
    private Path giftRibbonPath;
    private Text giftRibbonText;
    private TLRPC.Document giftSticker;
    private ImageReceiver.ImageReceiverDelegate giftStickerDelegate;
    private TextPaint giftSubtitlePaint;
    private TextPaint giftTextPaint;
    private TextPaint giftTitlePaint;
    private boolean hasReplyMessage;
    private boolean imagePressed;
    private ImageReceiver imageReceiver;
    private boolean invalidateColors;
    private Runnable invalidateListener;
    private boolean invalidatePath;
    private View invalidateWithParent;
    private boolean invalidatesParent;
    public boolean isAllChats;
    public boolean isForum;
    public boolean isMonoForum;
    public boolean isSideMenuEnabled;
    public boolean isSideMenued;
    private boolean isSpoilerRevealing;
    private float lastTouchX;
    private float lastTouchY;
    private ArrayList lineHeights;
    private ArrayList lineWidths;
    private LoadingDrawable loadingDrawable;
    private int overriddenMaxWidth;
    private int overrideBackground;
    private Paint overrideBackgroundPaint;
    private int overrideText;
    private TextPaint overrideTextPaint;
    private URLSpan pressedLink;
    private int previousWidth;
    float progressToProgress;
    RadialProgressView progressView;
    private RadialProgress2 radialProgress;
    public final ReactionsLayoutInBubble reactionsLayoutInBubble;
    private RectF rect;
    private View rippleView;
    private StaticLayout settingWallpaperLayout;
    TextPaint settingWallpaperPaint;
    private float settingWallpaperProgress;
    private StaticLayout settingWallpaperProgressTextLayout;
    public boolean showTopicSeparator;
    public float sideMenuAlpha;
    public int sideMenuWidth;
    private SpoilerEffect spoilerPressed;
    public List spoilers;
    private Stack spoilersPool;
    public final StarGiftUniqueActionLayout starGiftLayout;
    public float starGiftLayoutX;
    public float starGiftLayoutY;
    private StarParticlesView.Drawable starParticlesDrawable;
    private Path starsPath;
    private int starsSize;
    private int stickerSize;
    private int textHeight;
    private StaticLayout textLayout;
    TextPaint textPaint;
    private boolean textPressed;
    private int textWidth;
    private int textX;
    private int textXLeft;
    private int textY;
    private Theme.ResourcesProvider themeDelegate;
    private int titleHeight;
    private StaticLayout titleLayout;
    private int titleXLeft;
    public TopicSeparator topicSeparator;
    private int topicSeparatorTopPadding;
    public final TransitionParams transitionParams;
    private float viewTop;
    private float viewTranslationX;
    private boolean visiblePartSet;
    private Drawable wallpaperPreviewDrawable;
    private boolean wasLayout;

    public interface ChatActionCellDelegate {

        /* renamed from: org.telegram.ui.Cells.ChatActionCell$ChatActionCellDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static boolean $default$canDrawOutboundsContent(ChatActionCellDelegate chatActionCellDelegate) {
                return true;
            }

            public static void $default$didClickButton(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static void $default$didClickImage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static boolean $default$didLongPress(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, float f, float f2) {
                return false;
            }

            public static void $default$didOpenPremiumGift(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str, boolean z) {
            }

            public static void $default$didOpenPremiumGiftChannel(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, String str, boolean z) {
            }

            public static void $default$didPressReaction(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
            }

            public static void $default$didPressReplyMessage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, int i) {
            }

            public static void $default$didPressTaskLink(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, int i, int i2) {
            }

            public static void $default$forceUpdate(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, boolean z) {
            }

            public static BaseFragment $default$getBaseFragment(ChatActionCellDelegate chatActionCellDelegate) {
                return null;
            }

            public static long $default$getDialogId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0L;
            }

            public static long $default$getTopicId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0L;
            }

            public static void $default$needOpenInviteLink(ChatActionCellDelegate chatActionCellDelegate, TLRPC.TL_chatInviteExported tL_chatInviteExported) {
            }

            public static void $default$needOpenUserProfile(ChatActionCellDelegate chatActionCellDelegate, long j) {
            }

            public static void $default$needShowEffectOverlay(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.Document document, TLRPC.VideoSize videoSize) {
            }

            public static void $default$onTopicClick(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }
        }

        boolean canDrawOutboundsContent();

        void didClickButton(ChatActionCell chatActionCell);

        void didClickImage(ChatActionCell chatActionCell);

        boolean didLongPress(ChatActionCell chatActionCell, float f, float f2);

        void didOpenPremiumGift(ChatActionCell chatActionCell, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str, boolean z);

        void didOpenPremiumGiftChannel(ChatActionCell chatActionCell, String str, boolean z);

        void didPressReaction(ChatActionCell chatActionCell, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2);

        void didPressReplyMessage(ChatActionCell chatActionCell, int i);

        void didPressTaskLink(ChatActionCell chatActionCell, int i, int i2);

        void forceUpdate(ChatActionCell chatActionCell, boolean z);

        BaseFragment getBaseFragment();

        long getDialogId();

        long getTopicId();

        void needOpenInviteLink(TLRPC.TL_chatInviteExported tL_chatInviteExported);

        void needOpenUserProfile(long j);

        void needShowEffectOverlay(ChatActionCell chatActionCell, TLRPC.Document document, TLRPC.VideoSize videoSize);

        void onTopicClick(ChatActionCell chatActionCell);
    }

    class TextLayout {
        public AnimatedEmojiSpan.EmojiGroupedSpans emoji;
        public StaticLayout layout;
        public TextPaint paint;
        public int width;
        public float x;
        public float y;
        public List spoilers = new ArrayList();
        public final AtomicReference patchedLayout = new AtomicReference();

        TextLayout() {
        }

        public void attach() {
            this.emoji = AnimatedEmojiSpan.update(0, (View) ChatActionCell.this, false, this.emoji, this.layout);
        }

        public void detach() {
            AnimatedEmojiSpan.release(ChatActionCell.this, this.emoji);
        }

        public void setText(CharSequence charSequence, TextPaint textPaint, int i) {
            this.paint = textPaint;
            this.width = i;
            this.layout = new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_CENTER, 1.1f, BitmapDescriptorFactory.HUE_RED, false);
            if (ChatActionCell.this.currentMessageObject == null || !ChatActionCell.this.currentMessageObject.isSpoilersRevealed) {
                SpoilerEffect.addSpoilers(ChatActionCell.this, this.layout, -1, i, null, this.spoilers);
            } else {
                List list = this.spoilers;
                if (list != null) {
                    list.clear();
                }
            }
            attach();
        }
    }

    public interface ThemeDelegate extends Theme.ResourcesProvider {

        /* renamed from: org.telegram.ui.Cells.ChatActionCell$ThemeDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
        }
    }

    public class TransitionParams {
        public boolean animateChange;
        public float animateChangeProgress = 1.0f;
        public boolean wasDraw;

        public TransitionParams() {
        }

        public boolean animateChange() {
            if (this.wasDraw) {
                return ChatActionCell.this.reactionsLayoutInBubble.animateChange();
            }
            return false;
        }

        public void onDetach() {
            this.wasDraw = false;
        }

        public void recordDrawingState() {
            this.wasDraw = true;
            ChatActionCell.this.reactionsLayoutInBubble.recordDrawingState();
        }

        public void resetAnimation() {
            this.animateChange = false;
            this.animateChangeProgress = 1.0f;
        }

        public boolean supportChangeAnimation() {
            return true;
        }
    }

    static {
        HashMap map = new HashMap();
        monthsToEmoticon = map;
        map.put(1, "1⃣");
        monthsToEmoticon.put(3, "2⃣");
        monthsToEmoticon.put(6, "3⃣");
        monthsToEmoticon.put(12, "4⃣");
        monthsToEmoticon.put(24, "5⃣");
    }

    public ChatActionCell(Context context) {
        this(context, false, null);
    }

    public ChatActionCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.bounce = new ButtonBounce(this);
        this.currentAccount = UserConfig.selectedAccount;
        this.avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false);
        this.showTopicSeparator = true;
        this.giftButtonRect = new RectF();
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.reactionsLayoutInBubble = new ReactionsLayoutInBubble(this);
        this.overrideBackground = -1;
        this.overrideText = -1;
        this.lineWidths = new ArrayList();
        this.lineHeights = new ArrayList();
        this.backgroundPath = new Path();
        this.rect = new RectF();
        this.invalidatePath = true;
        this.invalidateColors = false;
        this.giftPremiumTextUncollapsed = false;
        this.giftPremiumTextCollapsed = false;
        this.giftPremiumTextExpandedAnimated = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.buttonClickableAsImage = true;
        this.giftTitlePaint = new TextPaint(1);
        this.giftTextPaint = new TextPaint(1);
        this.giftSubtitlePaint = new TextPaint(1);
        this.radialProgress = new RadialProgress2(this);
        this.giftStickerDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z2, boolean z3, boolean z4) {
                this.f$0.lambda$new$0(imageReceiver, z2, z3, z4);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        };
        this.starsPath = new Path();
        this.dimPaint = new Paint(1);
        this.transitionParams = new TransitionParams();
        this.avatarStoryParams.drawSegments = false;
        this.canDrawInParent = z;
        this.themeDelegate = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
        this.avatarDrawable = new AvatarDrawable();
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.starGiftLayout = new StarGiftUniqueActionLayout(this.currentAccount, this, resourcesProvider);
        this.giftTitlePaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
        this.giftSubtitlePaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        this.giftTextPaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(-16777216, 0.1f), 7, AndroidUtilities.dp(16.0f)));
        this.rippleView.setVisibility(8);
        addView(this.rippleView);
        StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(10);
        this.starParticlesDrawable = drawable;
        drawable.type = 100;
        drawable.isCircle = false;
        drawable.roundEffect = true;
        drawable.useRotate = false;
        drawable.useBlur = true;
        drawable.checkBounds = true;
        drawable.size1 = 1;
        drawable.k3 = 0.98f;
        drawable.k2 = 0.98f;
        drawable.k1 = 0.98f;
        drawable.paused = false;
        drawable.speedScale = BitmapDescriptorFactory.HUE_RED;
        drawable.minLifeTime = 750L;
        drawable.randLifeTime = 750;
        drawable.init();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015a  */
    /* JADX WARN: Type inference failed for: r0v41, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r1v130, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v8, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildLayout() {
        CharSequence charSequenceCreateActionTextWithTopic;
        CharSequence charSequence;
        CharSequence charSequenceReplaceTags;
        int i;
        CharSequence charSequence2;
        boolean z;
        String string;
        CharSequence charSequence3;
        boolean z2;
        int i2;
        String string2;
        String str;
        ArrayList arrayList;
        TLRPC.Photo photo;
        ArrayList arrayList2;
        Spannable spannableReplaceAnimatedEmoji;
        CharSequence string3;
        String string4;
        int i3;
        boolean z3;
        boolean z4;
        CharSequence charSequence4;
        SpannableStringBuilder spannableStringBuilderReplaceSingleTagToLink;
        boolean z5;
        String string5;
        int i4;
        String str2;
        ChatActionCell chatActionCell;
        String str3;
        String str4;
        ?? r8;
        String str5;
        boolean z6;
        int i5;
        String str6;
        int i6;
        String string6;
        int i7;
        CharSequence pluralStringComma;
        TL_stars$StarGift tL_stars$StarGift;
        TL_stars$StarGift tL_stars$StarGift2;
        String publicUsername;
        char c;
        Object objValueOf;
        int i8;
        boolean z7;
        boolean z8;
        CharSequence charSequence5;
        CharSequence charSequence6;
        CharSequence charSequence7;
        boolean z9;
        String string7;
        TLRPC.Message message;
        TLRPC.MessageAction messageAction;
        int i9;
        TLRPC.MessageMedia messageMedia;
        int i10;
        this.giftRectEmpty = false;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            if (messageObject.isExpiredStory()) {
                charSequenceCreateActionTextWithTopic = messageObject.messageOwner.media.user_id != UserConfig.getInstance(this.currentAccount).getClientUserId() ? StoriesUtilities.createExpiredStoryString(true, R.string.ExpiredStoryMention, new Object[0]) : StoriesUtilities.createExpiredStoryString(true, R.string.ExpiredStoryMentioned, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name);
            } else {
                ChatActionCellDelegate chatActionCellDelegate = this.delegate;
                charSequenceCreateActionTextWithTopic = (chatActionCellDelegate != null && chatActionCellDelegate.getTopicId() == 0 && MessageObject.isTopicActionMessage(messageObject)) ? ForumUtilities.createActionTextWithTopic(MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, true)), messageObject) : null;
            }
            if (charSequenceCreateActionTextWithTopic == null) {
                TLRPC.Message message2 = messageObject.messageOwner;
                if (message2 == null || (messageMedia = message2.media) == null || messageMedia.ttl_seconds == 0) {
                    charSequenceCreateActionTextWithTopic = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                } else {
                    if (messageMedia.photo != null) {
                        i10 = R.string.AttachPhotoExpired;
                    } else {
                        TLRPC.Document document = messageMedia.document;
                        if ((document instanceof TLRPC.TL_documentEmpty) || ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && document == null)) {
                            i10 = messageMedia.voice ? R.string.AttachVoiceExpired : messageMedia.round ? R.string.AttachRoundExpired : R.string.AttachVideoExpired;
                        }
                        charSequenceCreateActionTextWithTopic = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                    }
                    charSequenceCreateActionTextWithTopic = LocaleController.getString(i10);
                }
            }
        } else {
            charSequenceCreateActionTextWithTopic = this.customText;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null && messageObject2.isRepostPreview) {
            charSequenceCreateActionTextWithTopic = "";
        }
        if (messageObject2 == null || (message = messageObject2.messageOwner) == null || (messageAction = message.action) == null) {
            charSequence = charSequenceCreateActionTextWithTopic;
        } else {
            if (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                i9 = R.drawable.mini_checklist_add;
            } else if (messageAction instanceof TLRPC.TL_messageActionTodoCompletions) {
                TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction;
                i9 = tL_messageActionTodoCompletions.incompleted.size() > tL_messageActionTodoCompletions.completed.size() ? R.drawable.mini_checklist_undone : R.drawable.mini_checklist_done;
            } else {
                i9 = 0;
            }
            if (i9 != 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceCreateActionTextWithTopic);
                spannableStringBuilder.insert(0, (CharSequence) "i ");
                spannableStringBuilder.setSpan(new ColoredImageSpan(i9), 0, 1, 33);
                charSequence = spannableStringBuilder;
            }
        }
        createLayout(charSequence, this.previousWidth);
        if (messageObject != null) {
            TLRPC.Message message3 = messageObject.messageOwner;
            if (message3 != null) {
                TLRPC.MessageAction messageAction2 = message3.action;
                if ((messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction2).balance_too_low) {
                    string7 = !ChatObject.canManageMonoForum(this.currentAccount, messageObject.getDialogId()) ? LocaleController.getString(R.string.StarsBuy) : null;
                    i8 = this.giftRectSize;
                    z7 = false;
                    z8 = true;
                    charSequence5 = null;
                    charSequence6 = null;
                    charSequence7 = null;
                    z9 = false;
                } else {
                    if (message3 != null) {
                        TLRPC.MessageAction messageAction3 = message3.action;
                        if ((messageAction3 instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction3).rejected) {
                            i8 = this.giftRectSize;
                            z7 = false;
                            z8 = true;
                            charSequence5 = null;
                            charSequence6 = null;
                            charSequence7 = null;
                            z9 = false;
                            string7 = null;
                        }
                    }
                    int i11 = messageObject.type;
                    if (i11 == 11) {
                        float fDp = this.textHeight + AndroidUtilities.dp(19.0f);
                        float f = AndroidUtilities.roundMessageSize;
                        this.imageReceiver.setImageCoords((this.previousWidth - AndroidUtilities.roundMessageSize) / 2.0f, fDp, f, f);
                    } else if (i11 == 25) {
                        createGiftPremiumChannelLayouts();
                    } else {
                        if (i11 == 30) {
                            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.currentMessageObject.getDialogId()));
                            TLRPC.MessageAction messageAction4 = messageObject.messageOwner.action;
                            if (messageAction4 instanceof TLRPC.TL_messageActionGiftStars) {
                                String pluralStringComma2 = LocaleController.formatPluralStringComma("ActionGiftStarsTitle", (int) ((TLRPC.TL_messageActionGiftStars) messageAction4).stars);
                                string3 = AndroidUtilities.replaceTags(this.currentMessageObject.isOutOwner() ? LocaleController.formatString(R.string.ActionGiftStarsSubtitle, UserObject.getForcedFirstName(user)) : LocaleController.getString(R.string.ActionGiftStarsSubtitleYou));
                                string4 = LocaleController.getString(R.string.ActionGiftStarsView);
                                i3 = this.giftRectSize;
                                z3 = true;
                                z4 = false;
                                charSequence4 = null;
                                spannableStringBuilderReplaceSingleTagToLink = null;
                                z5 = false;
                                str4 = pluralStringComma2;
                                i4 = 11;
                                string5 = null;
                                str3 = str4;
                                chatActionCell = this;
                                str2 = str3;
                            } else if ((messageAction4 instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction4).refunded) {
                                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                if (messageObject.isOutOwner() != (!((TLRPC.TL_messageActionStarGiftUnique) messageObject.messageOwner.action).upgrade)) {
                                    clientUserId = messageObject.getDialogId();
                                }
                                TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(clientUserId));
                                ?? spannableStringBuilder2 = new SpannableStringBuilder();
                                spannableStringBuilder2.append(LocaleController.getString(R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                if (user2 != null && user2.photo != null) {
                                    spannableStringBuilder2.append("a ");
                                    AvatarSpan avatarSpan = new AvatarSpan(this, this.currentAccount, 18.0f);
                                    avatarSpan.setUser(user2);
                                    spannableStringBuilder2.setSpan(avatarSpan, spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 33);
                                }
                                spannableStringBuilder2.append(UserObject.getForcedFirstName(user2));
                                string3 = LocaleController.getString(R.string.Gift2ActionUpgradeRefundedText);
                                string4 = LocaleController.getString(R.string.ActionGiftStarsView);
                                string5 = LocaleController.getString(R.string.Gift2UniqueRibbon);
                                i3 = this.giftRectSize;
                                z3 = true;
                                z4 = false;
                                charSequence4 = null;
                                spannableStringBuilderReplaceSingleTagToLink = null;
                                z5 = false;
                                i4 = 12;
                                str3 = spannableStringBuilder2;
                                chatActionCell = this;
                                str2 = str3;
                            } else if (messageAction4 instanceof TLRPC.TL_messageActionStarGift) {
                                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction4;
                                long j = tL_messageActionStarGift.convert_stars;
                                long clientUserId2 = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                boolean z10 = tL_messageActionStarGift.peer != null;
                                boolean z11 = messageObject.getDialogId() == clientUserId2 && !z10;
                                long fromChatId = messageObject.getFromChatId();
                                TLRPC.Peer peer = tL_messageActionStarGift.from_id;
                                if (peer != null) {
                                    fromChatId = DialogObject.getPeerDialogId(peer);
                                }
                                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                                TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(fromChatId);
                                boolean z12 = tL_messageActionStarGift.can_upgrade && !tL_messageActionStarGift.converted && tL_messageActionStarGift.upgrade_stars > 0 && !tL_messageActionStarGift.upgraded;
                                if (z11) {
                                    spannableStringBuilder3.append((CharSequence) LocaleController.getString(R.string.Gift2ActionSelfTitle));
                                    r8 = spannableStringBuilder3;
                                } else {
                                    spannableStringBuilder3.append((CharSequence) LocaleController.getString(R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                    if (DialogObject.hasPhoto(userOrChat)) {
                                        spannableStringBuilder3.append((CharSequence) "a ");
                                        AvatarSpan avatarSpan2 = new AvatarSpan(this, this.currentAccount, 18.0f);
                                        avatarSpan2.setObject(userOrChat);
                                        spannableStringBuilder3.setSpan(avatarSpan2, spannableStringBuilder3.length() - 2, spannableStringBuilder3.length() - 1, 33);
                                    }
                                    r8 = spannableStringBuilder3;
                                    r8.append(DialogObject.getShortName(userOrChat));
                                }
                                int currentTime = MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - messageObject.messageOwner.date);
                                if ((!messageObject.isOutOwner() || z11) && tL_messageActionStarGift.converted) {
                                    str5 = r8;
                                } else {
                                    str5 = r8;
                                    if (tL_messageActionStarGift.convert_stars > 0 && currentTime > 0 && !tL_messageActionStarGift.refunded) {
                                        z6 = true;
                                    }
                                    if (tL_messageActionStarGift.refunded) {
                                        TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageActionStarGift.message;
                                        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text)) {
                                            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                            this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
                                            MessageObject.addEntitiesToText(spannableStringBuilder4, tL_messageActionStarGift.message.entities, false, false, true, true);
                                            pluralStringComma = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder4, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_messageActionStarGift.message.entities, this.giftTextPaint.getFontMetricsInt());
                                        } else if (z10) {
                                            if (!tL_messageActionStarGift.converted) {
                                                if (!z6 || j <= 0) {
                                                    i7 = R.string.Gift2ActionInfoChannelNoConvert;
                                                    string6 = LocaleController.getString(i7);
                                                    pluralStringComma = AndroidUtilities.replaceTags(string6);
                                                } else {
                                                    i5 = (int) j;
                                                    str6 = "Gift2ActionInfoChannel";
                                                    string6 = LocaleController.formatPluralStringComma(str6, i5);
                                                    pluralStringComma = AndroidUtilities.replaceTags(string6);
                                                }
                                            }
                                            pluralStringComma = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                        } else if (z11) {
                                            if (!tL_messageActionStarGift.converted || j <= 0) {
                                                i7 = tL_messageActionStarGift.can_upgrade ? R.string.Gift2ActionSelfInfoUpgrade : R.string.Gift2ActionSelfInfoNoConvert;
                                                string6 = LocaleController.getString(i7);
                                                pluralStringComma = AndroidUtilities.replaceTags(string6);
                                            }
                                            pluralStringComma = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                        } else {
                                            if (z12) {
                                                if (messageObject.isOutOwner()) {
                                                    string6 = LocaleController.formatString(R.string.Gift2ActionUpgradeOut, UserObject.getForcedFirstName(user));
                                                } else {
                                                    i7 = R.string.Gift2ActionUpgrade;
                                                    string6 = LocaleController.getString(i7);
                                                }
                                            } else if (messageObject.isOutOwner()) {
                                                string6 = (!z6 || j <= 0) ? tL_messageActionStarGift.can_upgrade ? LocaleController.formatString(R.string.Gift2ActionOutInfoUpgrade, UserObject.getForcedFirstName(user)) : LocaleController.formatString(R.string.Gift2ActionOutInfoNoConvert, UserObject.getForcedFirstName(user)) : LocaleController.formatPluralStringComma("Gift2ActionOutInfo", (int) j, UserObject.getForcedFirstName(user));
                                            } else {
                                                if (!tL_messageActionStarGift.converted) {
                                                    if (tL_messageActionStarGift.saved) {
                                                        i6 = !z6 ? R.string.Gift2ActionBotSavedInfo : R.string.Gift2ActionSavedInfo;
                                                    } else if (z6) {
                                                        i5 = (int) j;
                                                        str6 = "Gift2ActionInfo";
                                                        string6 = LocaleController.formatPluralStringComma(str6, i5);
                                                    } else {
                                                        i6 = R.string.Gift2ActionBotInfo;
                                                    }
                                                }
                                                pluralStringComma = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                            }
                                            pluralStringComma = AndroidUtilities.replaceTags(string6);
                                        }
                                        CharSequence charSequence8 = pluralStringComma;
                                        tL_stars$StarGift = tL_messageActionStarGift.gift;
                                        if (tL_stars$StarGift == null || !tL_stars$StarGift.limited) {
                                            string5 = null;
                                        } else {
                                            int i12 = R.string.Gift2Limited1OfRibbon;
                                            int i13 = tL_stars$StarGift.availability_total;
                                            if (i13 > 1500) {
                                                c = 0;
                                                objValueOf = AndroidUtilities.formatWholeNumber(i13, 0);
                                            } else {
                                                c = 0;
                                                objValueOf = Integer.valueOf(i13);
                                            }
                                            Object[] objArr = new Object[1];
                                            objArr[c] = objValueOf;
                                            string5 = LocaleController.formatString(i12, objArr);
                                        }
                                        String string8 = LocaleController.getString(R.string.ActionGiftStarsView);
                                        if ((messageObject.isOutOwner() || tL_messageActionStarGift.forceIn || z12) && !messageObject.isOutOwner() && z12) {
                                            ?? spannableStringBuilder5 = new SpannableStringBuilder();
                                            spannableStringBuilder5.append("^  ");
                                            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.gift_unpack);
                                            coloredImageSpan.setScale(0.8f, 0.8f);
                                            spannableStringBuilder5.setSpan(coloredImageSpan, 0, 1, 33);
                                            spannableStringBuilder5.append(LocaleController.getString(R.string.Gift2Unpack));
                                            string4 = spannableStringBuilder5;
                                        } else {
                                            string4 = string8;
                                        }
                                        tL_stars$StarGift2 = tL_messageActionStarGift.gift;
                                        if (tL_stars$StarGift2 == null || tL_stars$StarGift2.released_by == null || (publicUsername = DialogObject.getPublicUsername(MessagesController.getInstance(this.currentAccount).getUserOrChat(DialogObject.getPeerDialogId(tL_messageActionStarGift.gift.released_by)))) == null) {
                                            spannableStringBuilderReplaceSingleTagToLink = null;
                                        } else {
                                            spannableStringBuilderReplaceSingleTagToLink = StarGiftSheet.replaceSingleTagToLink(LocaleController.formatString(R.string.Gift2ActionReleasedBy, "@" + publicUsername), null);
                                        }
                                        i3 = this.giftRectSize;
                                        z3 = true;
                                        z4 = false;
                                        charSequence4 = null;
                                        chatActionCell = this;
                                        str2 = str5;
                                        string3 = charSequence8;
                                        z5 = false;
                                        i4 = 11;
                                    } else {
                                        i6 = R.string.Gift2ActionConvertRefundedText;
                                    }
                                    pluralStringComma = LocaleController.getString(i6);
                                    CharSequence charSequence82 = pluralStringComma;
                                    tL_stars$StarGift = tL_messageActionStarGift.gift;
                                    if (tL_stars$StarGift == null) {
                                        string5 = null;
                                        String string82 = LocaleController.getString(R.string.ActionGiftStarsView);
                                        if (messageObject.isOutOwner()) {
                                            ?? spannableStringBuilder52 = new SpannableStringBuilder();
                                            spannableStringBuilder52.append("^  ");
                                            ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(R.drawable.gift_unpack);
                                            coloredImageSpan2.setScale(0.8f, 0.8f);
                                            spannableStringBuilder52.setSpan(coloredImageSpan2, 0, 1, 33);
                                            spannableStringBuilder52.append(LocaleController.getString(R.string.Gift2Unpack));
                                            string4 = spannableStringBuilder52;
                                            tL_stars$StarGift2 = tL_messageActionStarGift.gift;
                                            if (tL_stars$StarGift2 == null) {
                                                spannableStringBuilderReplaceSingleTagToLink = null;
                                                i3 = this.giftRectSize;
                                                z3 = true;
                                                z4 = false;
                                                charSequence4 = null;
                                                chatActionCell = this;
                                                str2 = str5;
                                                string3 = charSequence82;
                                                z5 = false;
                                                i4 = 11;
                                            }
                                        } else {
                                            ?? spannableStringBuilder522 = new SpannableStringBuilder();
                                            spannableStringBuilder522.append("^  ");
                                            ColoredImageSpan coloredImageSpan22 = new ColoredImageSpan(R.drawable.gift_unpack);
                                            coloredImageSpan22.setScale(0.8f, 0.8f);
                                            spannableStringBuilder522.setSpan(coloredImageSpan22, 0, 1, 33);
                                            spannableStringBuilder522.append(LocaleController.getString(R.string.Gift2Unpack));
                                            string4 = spannableStringBuilder522;
                                            tL_stars$StarGift2 = tL_messageActionStarGift.gift;
                                            if (tL_stars$StarGift2 == null) {
                                            }
                                        }
                                    }
                                }
                                z6 = false;
                                if (tL_messageActionStarGift.refunded) {
                                }
                                pluralStringComma = LocaleController.getString(i6);
                                CharSequence charSequence822 = pluralStringComma;
                                tL_stars$StarGift = tL_messageActionStarGift.gift;
                                if (tL_stars$StarGift == null) {
                                }
                            } else {
                                String string9 = LocaleController.getString(messageAction4 instanceof TLRPC.TL_messageActionGiftTon ? R.string.ActionGiftTonTitle : R.string.ActionStarGiveawayPrizeTitle);
                                charSequence3 = this.currentMessageObject.messageText;
                                string2 = LocaleController.getString(R.string.ActionGiftStarsView);
                                i2 = this.giftRectSize;
                                z2 = true;
                                str = string9;
                                createGiftPremiumLayouts(str, null, null, charSequence3, false, string2, 11, null, i2, z2, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            }
                        } else if (i11 == 18) {
                            TLRPC.MessageAction messageAction5 = message3.action;
                            TLRPC.TL_textWithEntities tL_textWithEntities2 = messageAction5 instanceof TLRPC.TL_messageActionGiftPremium ? ((TLRPC.TL_messageActionGiftPremium) messageAction5).message : messageAction5 instanceof TLRPC.TL_messageActionGiftCode ? ((TLRPC.TL_messageActionGiftCode) messageAction5).message : null;
                            if (tL_textWithEntities2 == null || TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                spannableReplaceAnimatedEmoji = null;
                            } else {
                                SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(tL_textWithEntities2.text);
                                this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
                                MessageObject.addEntitiesToText(spannableStringBuilder6, tL_textWithEntities2.entities, false, false, true, true);
                                spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder6, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_textWithEntities2.entities, this.giftTextPaint.getFontMetricsInt());
                            }
                            string3 = spannableReplaceAnimatedEmoji == null ? LocaleController.getString(R.string.ActionGiftPremiumText) : spannableReplaceAnimatedEmoji;
                            string4 = LocaleController.getString((!isGiftCode() || isSelfGiftCode()) ? R.string.ActionGiftPremiumView : R.string.GiftPremiumUseGiftBtn);
                            String pluralStringComma3 = LocaleController.formatPluralStringComma("ActionGiftPremiumTitle2", messageObject.messageOwner.action.months);
                            i3 = this.giftRectSize;
                            z3 = false;
                            z4 = false;
                            charSequence4 = null;
                            spannableStringBuilderReplaceSingleTagToLink = null;
                            z5 = true;
                            str4 = pluralStringComma3;
                            i4 = 11;
                            string5 = null;
                            str3 = str4;
                            chatActionCell = this;
                            str2 = str3;
                        } else {
                            if (i11 == 21) {
                                TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) message3.action;
                                TLRPC.User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                                boolean z13 = tL_messageActionSuggestProfilePhoto.video || !((photo = tL_messageActionSuggestProfilePhoto.photo) == null || (arrayList2 = photo.video_sizes) == null || arrayList2.isEmpty());
                                if (user3.id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                                    charSequenceReplaceTags = z13 ? LocaleController.formatString(R.string.ActionSuggestVideoFromYouDescription, user4.first_name) : LocaleController.formatString(R.string.ActionSuggestPhotoFromYouDescription, user4.first_name);
                                } else {
                                    charSequenceReplaceTags = z13 ? LocaleController.formatString(R.string.ActionSuggestVideoToYouDescription, user3.first_name) : LocaleController.formatString(R.string.ActionSuggestPhotoToYouDescription, user3.first_name);
                                }
                                i = (tL_messageActionSuggestProfilePhoto.video || !((arrayList = tL_messageActionSuggestProfilePhoto.photo.video_sizes) == null || arrayList.isEmpty())) ? R.string.ViewVideoAction : R.string.ViewPhotoAction;
                            } else if (i11 == 22) {
                                TLRPC.User user5 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                                if (messageObject.getDialogId() >= 0) {
                                    if (!messageObject.isOutOwner() && messageObject.isWallpaperForBoth() && messageObject.isCurrentWallpaper()) {
                                        charSequence2 = messageObject.messageText;
                                        string = LocaleController.getString(R.string.RemoveWallpaperAction);
                                        z = false;
                                    } else if (user5 == null || user5.id != UserConfig.getInstance(this.currentAccount).clientUserId) {
                                        charSequence2 = messageObject.messageText;
                                        string = LocaleController.getString(R.string.ViewWallpaperAction);
                                        z = true;
                                    } else {
                                        charSequence2 = messageObject.messageText;
                                        z = true;
                                        string = null;
                                    }
                                    charSequence3 = charSequence2;
                                    z2 = z;
                                    i2 = this.giftRectSize;
                                    string2 = string;
                                    str = null;
                                    createGiftPremiumLayouts(str, null, null, charSequence3, false, string2, 11, null, i2, z2, false);
                                    this.textLayout = null;
                                    this.textHeight = 0;
                                    this.titleLayout = null;
                                    this.titleHeight = 0;
                                    this.textY = 0;
                                }
                            } else if (messageObject.isStoryMention()) {
                                TLRPC.User user6 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                                charSequenceReplaceTags = AndroidUtilities.replaceTags(user6.self ? LocaleController.formatString("StoryYouMentionedTitle", R.string.StoryYouMentionedTitle, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name) : LocaleController.formatString("StoryMentionedTitle", R.string.StoryMentionedTitle, user6.first_name));
                                i = R.string.StoryMentionedAction;
                            }
                            charSequence3 = charSequenceReplaceTags;
                            string2 = LocaleController.getString(i);
                            i2 = this.giftRectSize;
                            str = null;
                            z2 = true;
                            createGiftPremiumLayouts(str, null, null, charSequence3, false, string2, 11, null, i2, z2, false);
                            this.textLayout = null;
                            this.textHeight = 0;
                            this.titleLayout = null;
                            this.titleHeight = 0;
                            this.textY = 0;
                        }
                        chatActionCell.createGiftPremiumLayouts(str2, charSequence4, spannableStringBuilderReplaceSingleTagToLink, string3, z5, string4, i4, string5, i3, z3, z4);
                    }
                }
                createGiftPremiumLayouts(charSequence5, charSequence6, charSequence7, charSequence, z9, string7, 11, null, i8, z7, z8);
                this.textLayout = null;
                this.textHeight = 0;
                this.titleLayout = null;
                this.titleHeight = 0;
                this.textY = 0;
                this.giftRectEmpty = true;
            }
        }
        this.reactionsLayoutInBubble.x = AndroidUtilities.dp(12.0f);
        this.reactionsLayoutInBubble.measure(this.previousWidth - AndroidUtilities.dp(24.0f), 1);
    }

    private void checkLeftRightBounds() {
        this.backgroundLeft = (int) Math.min(this.backgroundLeft, this.rect.left);
        this.backgroundRight = (int) Math.max(this.backgroundRight, this.rect.right);
    }

    private void createGiftPremiumChannelLayouts() {
        int i;
        String str;
        SpannableStringBuilder spannableStringBuilder;
        String string;
        int iDp = this.giftRectSize - AndroidUtilities.dp(16.0f);
        this.giftTitlePaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
        TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
        int i2 = tL_messageActionGiftCode.months;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
        String str2 = chat == null ? null : chat.title;
        boolean z = tL_messageActionGiftCode.via_giveaway;
        if (tL_messageActionGiftCode.unclaimed) {
            i = R.string.BoostingUnclaimedPrize;
            str = "BoostingUnclaimedPrize";
        } else {
            i = R.string.BoostingCongratulations;
            str = "BoostingCongratulations";
        }
        String string2 = LocaleController.getString(str, i);
        String pluralString = i2 == 12 ? LocaleController.formatPluralString("BoldYears", 1, new Object[0]) : LocaleController.formatPluralString("BoldMonths", i2, new Object[0]);
        if (!z) {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(str2 == null ? LocaleController.getString("BoostingReceivedGiftNoName", R.string.BoostingReceivedGiftNoName) : LocaleController.formatString("BoostingReceivedGiftFrom", R.string.BoostingReceivedGiftFrom, str2)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            string = LocaleController.formatString("BoostingReceivedGiftDuration", R.string.BoostingReceivedGiftDuration, pluralString);
        } else if (tL_messageActionGiftCode.unclaimed) {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingYouHaveUnclaimedPrize", R.string.BoostingYouHaveUnclaimedPrize, str2)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            string = LocaleController.formatString("BoostingUnclaimedPrizeDuration", R.string.BoostingUnclaimedPrizeDuration, pluralString);
        } else {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReceivedPrizeFrom", R.string.BoostingReceivedPrizeFrom, str2)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            string = LocaleController.formatString("BoostingReceivedPrizeDuration", R.string.BoostingReceivedPrizeDuration, pluralString);
        }
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(string));
        String string3 = LocaleController.getString("BoostingReceivedGiftOpenBtn", R.string.BoostingReceivedGiftOpenBtn);
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string2);
        spannableStringBuilderValueOf.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf.length(), 33);
        TextPaint textPaint = this.giftTitlePaint;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        this.giftPremiumTitleLayout = new StaticLayout(spannableStringBuilderValueOf, textPaint, iDp, alignment, 1.1f, BitmapDescriptorFactory.HUE_RED, false);
        this.giftPremiumSubtitleLayout = null;
        this.giftPremiumReleasedText = null;
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.detach();
        }
        TextLayout textLayout2 = new TextLayout();
        this.giftPremiumText = textLayout2;
        textLayout2.setText(spannableStringBuilder, this.giftTextPaint, iDp);
        SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(string3);
        spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf2.length(), 33);
        this.giftPremiumTextCollapsed = false;
        this.giftPremiumTextCollapsedHeight = 0;
        this.giftPremiumTextMore = null;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), iDp, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.giftPremiumButtonLayout = staticLayout;
        this.buttonClickableAsImage = true;
        this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
    }

    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.graphics.Path, android.text.StaticLayout, org.telegram.ui.Cells.ChatActionCell$TextLayout, org.telegram.ui.Components.Text] */
    /* JADX WARN: Type inference failed for: r6v5 */
    private void createGiftPremiumLayouts(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, boolean z, CharSequence charSequence5, int i, CharSequence charSequence6, int i2, boolean z2, boolean z3) {
        ?? r6;
        TextPaint textPaint;
        float f;
        int i3;
        float fMeasureLayoutWidth;
        int iCutInFancyHalf;
        int i4;
        CharSequence charSequenceReplaceEmoji = charSequence4;
        int iDp = i2 - AndroidUtilities.dp(16.0f);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 30) {
            iDp -= AndroidUtilities.dp(16.0f);
        }
        if (charSequence != null) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (messageObject2 == null || messageObject2.type != 30) {
                this.giftTitlePaint.setTextSize(AndroidUtilities.dp(16.0f));
            } else {
                this.giftTitlePaint.setTextSize(AndroidUtilities.dp(14.0f));
            }
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
            spannableStringBuilderValueOf.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf.length(), 33);
            r6 = 0;
            this.giftPremiumTitleLayout = new StaticLayout(spannableStringBuilderValueOf, this.giftTitlePaint, iDp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            r6 = 0;
            this.giftPremiumTitleLayout = null;
        }
        if (charSequence2 != null) {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.dp(13.0f));
            this.giftPremiumSubtitleLayout = new StaticLayout(charSequence2, this.giftSubtitlePaint, iDp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            this.giftPremiumSubtitleLayout = r6;
        }
        if (charSequence3 != null) {
            Text text = new Text(charSequence3, 10.0f);
            this.giftPremiumReleasedText = text;
            text.paint.linkColor = -1;
        } else {
            this.giftPremiumReleasedText = r6;
        }
        if (this.currentMessageObject == null || !(isNewStyleButtonLayout() || (i4 = this.currentMessageObject.type) == 30 || i4 == 18)) {
            textPaint = this.giftTextPaint;
            f = 15.0f;
        } else {
            textPaint = this.giftTextPaint;
            f = 13.0f;
        }
        textPaint.setTextSize(AndroidUtilities.dp(f));
        int iDp2 = iDp - AndroidUtilities.dp(12.0f);
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 != null && messageObject3.type == 22 && messageObject3.getDialogId() >= 0 && (iCutInFancyHalf = HintView2.cutInFancyHalf(charSequenceReplaceEmoji, this.giftTextPaint)) < iDp2 && iCutInFancyHalf > iDp2 / 5.0f) {
            iDp2 = iCutInFancyHalf;
        }
        if (charSequenceReplaceEmoji == null) {
            TextLayout textLayout = this.giftPremiumText;
            if (textLayout != null) {
                textLayout.detach();
                this.giftPremiumText = r6;
            }
            this.giftPremiumTextCollapsed = false;
            i3 = 0;
        } else {
            if (this.giftPremiumText == null) {
                this.giftPremiumText = new TextLayout();
            }
            try {
                charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceReplaceEmoji, this.giftTextPaint.getFontMetricsInt(), false);
            } catch (Exception unused) {
            }
            this.giftPremiumText.setText(charSequenceReplaceEmoji, this.giftTextPaint, iDp2);
            if (!z || this.giftPremiumText.layout.getLineCount() <= 3) {
                i3 = 0;
                this.giftPremiumTextCollapsed = false;
                this.giftPremiumTextExpandedAnimated.set(true, true);
                this.giftPremiumTextCollapsedHeight = 0;
            } else {
                this.giftPremiumTextCollapsed = !this.giftPremiumTextUncollapsed;
                this.giftPremiumTextCollapsedHeight = this.giftPremiumText.layout.getLineBottom(2);
                this.giftPremiumTextMore = new Text(LocaleController.getString(R.string.Gift2CaptionMore), this.giftTextPaint.getTextSize() / AndroidUtilities.density, AndroidUtilities.bold());
                int lineBottom = this.giftPremiumText.layout.getLineBottom(2);
                this.giftPremiumTextMoreY = lineBottom;
                this.giftPremiumTextMoreH = lineBottom - this.giftPremiumText.layout.getLineTop(2);
                this.giftPremiumTextMoreX = (int) this.giftPremiumText.layout.getLineRight(2);
                i3 = 0;
            }
            if (this.giftPremiumTextCollapsed) {
                this.giftPremiumText.setText(charSequenceReplaceEmoji.subSequence(i3, this.giftPremiumText.layout.getLineEnd(2) - 1), this.giftTextPaint, iDp2);
            }
        }
        if (charSequence5 != null) {
            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(charSequence5);
            spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), i3, spannableStringBuilderValueOf2.length(), 33);
            StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), iDp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.giftPremiumButtonLayout = staticLayout;
            this.buttonClickableAsImage = z2 && !this.giftPremiumTextCollapsed;
            fMeasureLayoutWidth = measureLayoutWidth(staticLayout);
        } else {
            this.giftPremiumButtonLayout = r6;
            this.buttonClickableAsImage = false;
            fMeasureLayoutWidth = BitmapDescriptorFactory.HUE_RED;
        }
        this.giftPremiumButtonWidth = fMeasureLayoutWidth;
        if (charSequence6 == null) {
            this.giftRibbonPath = r6;
            this.giftRibbonText = r6;
            return;
        }
        if (this.giftRibbonPaintEffect == null) {
            this.giftRibbonPaintEffect = new CornerPathEffect(AndroidUtilities.dp(5.0f));
        }
        if (this.giftRibbonPath == null) {
            Path path = new Path();
            this.giftRibbonPath = path;
            GiftSheet.RibbonDrawable.fillRibbonPath(path, 1.35f);
        }
        Text text2 = new Text(charSequence6, i, AndroidUtilities.bold());
        this.giftRibbonText = text2;
        text2.ellipsize(AndroidUtilities.dp(62.0f));
    }

    private void createLayout(CharSequence charSequence, int i) {
        String str;
        ChatActionCellDelegate chatActionCellDelegate;
        TLRPC.Message message;
        CharSequence charSequenceReplaceEmoji = charSequence;
        int iDp = i - AndroidUtilities.dp(30.0f);
        if (this.isSideMenued) {
            iDp -= AndroidUtilities.dp(64.0f);
        }
        if (isMessageActionSuggestedPostApproval()) {
            iDp = Math.min(iDp - AndroidUtilities.dp(this.isSideMenued ? 28.0f : 82.0f), AndroidUtilities.dp(272.0f));
        }
        if (iDp < 0) {
            return;
        }
        int i2 = this.overriddenMaxWidth;
        if (i2 > 0) {
            iDp = Math.min(i2, iDp);
        }
        int i3 = iDp;
        this.invalidatePath = true;
        if (isMessageActionSuggestedPostApproval()) {
            str = "paintChatActionText3";
        } else {
            MessageObject messageObject = this.currentMessageObject;
            str = (messageObject == null || !messageObject.drawServiceWithDefaultTypeface) ? "paintChatActionText" : "paintChatActionText2";
        }
        TextPaint textPaint = (TextPaint) getThemedPaint(str);
        textPaint.linkColor = textPaint.getColor();
        if (isMessageActionSuggestedPostApproval()) {
            if (charSequenceReplaceEmoji instanceof Spannable) {
                Spannable spannable = (Spannable) charSequenceReplaceEmoji;
                for (Emoji.EmojiSpan emojiSpan : (Emoji.EmojiSpan[]) spannable.getSpans(0, spannable.length(), Emoji.EmojiSpan.class)) {
                    spannable.removeSpan(emojiSpan);
                }
            }
            charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequence, textPaint.getFontMetricsInt(), false, null, 0, 0.85f);
        }
        CharSequence charSequence2 = charSequenceReplaceEmoji;
        this.textLayout = new StaticLayout(charSequence2, textPaint, i3, isMessageActionSuggestedPostApproval() ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.titleLayout = null;
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null && (message = messageObject2.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                TLRPC.TL_messageActionSuggestedPostApproval tL_messageActionSuggestedPostApproval = (TLRPC.TL_messageActionSuggestedPostApproval) messageAction;
                if (!tL_messageActionSuggestedPostApproval.rejected && !tL_messageActionSuggestedPostApproval.balance_too_low) {
                    this.titleLayout = new StaticLayout(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.getString(R.string.SuggestionAgreementReached)), textPaint.getFontMetricsInt(), false, null, 0, 1.0f), textPaint, i3, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            }
        }
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        this.textHeight = 0;
        this.textWidth = 0;
        this.titleHeight = 0;
        StaticLayout staticLayout = this.titleLayout;
        if (staticLayout != null) {
            int height = staticLayout.getHeight();
            this.titleHeight = height;
            this.titleHeight = height + AndroidUtilities.dp(12.0f);
        }
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 == null || !messageObject3.isRepostPreview) {
            try {
                int lineCount = this.textLayout.getLineCount();
                for (int i4 = 0; i4 < lineCount; i4++) {
                    try {
                        float lineWidth = this.textLayout.getLineWidth(i4);
                        float f = i3;
                        if (lineWidth > f) {
                            lineWidth = f;
                        }
                        this.textHeight = (int) Math.max(this.textHeight, Math.ceil(this.textLayout.getLineBottom(i4)));
                        this.textWidth = (int) Math.max(this.textWidth, Math.ceil(lineWidth));
                    } catch (Exception e) {
                        FileLog.e(e);
                        return;
                    }
                }
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
        this.textX = (i - this.textWidth) / 2;
        int iDp2 = AndroidUtilities.dp(7.0f);
        this.textY = iDp2;
        if (this.titleLayout != null) {
            this.textY = iDp2 + this.titleHeight + AndroidUtilities.dp(11.0f);
        }
        this.textXLeft = (i - (isMessageActionSuggestedPostApproval() ? this.textWidth : this.textLayout.getWidth())) / 2;
        this.titleXLeft = (i - i3) / 2;
        this.spoilersPool.addAll(this.spoilers);
        this.spoilers.clear();
        if (charSequence2 instanceof Spannable) {
            StaticLayout staticLayout2 = this.textLayout;
            int i5 = this.textX;
            SpoilerEffect.addSpoilers(this, staticLayout2, i5, i5 + this.textWidth, (Spannable) charSequence2, this.spoilersPool, this.spoilers, null);
        }
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i) {
        if (i != this.adaptiveEmojiColor || this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = i;
            this.adaptiveEmojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter;
    }

    private int getImageSize(MessageObject messageObject) {
        int iDp = this.stickerSize;
        if (messageObject.type == 21 || isNewStyleButtonLayout()) {
            iDp = AndroidUtilities.dp(78.0f);
        }
        if (isMessageActionSuggestedPostApproval()) {
            return 0;
        }
        return iDp;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.themeDelegate);
    }

    private float getUploadingInfoProgress(MessageObject messageObject) {
        MessagesController messagesController;
        String str;
        if (messageObject == null) {
            return 1.0f;
        }
        try {
            if (messageObject.type == 22 && (str = (messagesController = MessagesController.getInstance(this.currentAccount)).uploadingWallpaper) != null && TextUtils.equals(messageObject.messageOwner.action.wallpaper.uploadingImage, str)) {
                return messagesController.uploadingWallpaperInfo.uploadingProgress;
            }
            return 1.0f;
        } catch (Exception e) {
            FileLog.e(e);
            return 1.0f;
        }
    }

    private boolean isButtonLayout(MessageObject messageObject) {
        int i;
        return messageObject != null && ((i = messageObject.type) == 30 || i == 18 || i == 25 || isNewStyleButtonLayout());
    }

    private boolean isGiftChannel(MessageObject messageObject) {
        return messageObject != null && messageObject.type == 25;
    }

    private boolean isGiftCode() {
        MessageObject messageObject = this.currentMessageObject;
        return messageObject != null && (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionGiftCode);
    }

    private boolean isMessageActionSuggestedPostApproval() {
        TLRPC.Message message;
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || (message = messageObject.messageOwner) == null || !(message.action instanceof TLRPC.TL_messageActionSuggestedPostApproval)) ? false : true;
    }

    private boolean isNewStyleButtonLayout() {
        MessageObject messageObject;
        int i;
        if (!this.starGiftLayout.has() && (i = (messageObject = this.currentMessageObject).type) != 21 && i != 22 && !messageObject.isStoryMention()) {
            TLRPC.Message message = this.currentMessageObject.messageOwner;
            if (message != null) {
                TLRPC.MessageAction messageAction = message.action;
                if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                    TLRPC.TL_messageActionSuggestedPostApproval tL_messageActionSuggestedPostApproval = (TLRPC.TL_messageActionSuggestedPostApproval) messageAction;
                    if (tL_messageActionSuggestedPostApproval.balance_too_low || tL_messageActionSuggestedPostApproval.rejected) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    private boolean isSelfGiftCode() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return false;
        }
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.MessageAction messageAction = message.action;
        if (((messageAction instanceof TLRPC.TL_messageActionGiftCode) || (messageAction instanceof TLRPC.TL_messageActionGiftStars)) && (message.from_id instanceof TLRPC.TL_peerUser)) {
            return UserObject.isUserSelf(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.currentMessageObject.messageOwner.from_id.user_id)));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        ChatActionCellDelegate chatActionCellDelegate;
        if (!z || (lottieAnimation = this.imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.playedGiftAnimation) {
            if (lottieAnimation.getCurrentFrame() < 1) {
                lottieAnimation.stop();
                lottieAnimation.setCurrentFrame(lottieAnimation.getFramesCount() - 1, false);
                return;
            }
            return;
        }
        messageObject.playedGiftAnimation = true;
        lottieAnimation.setCurrentFrame(0, false);
        AndroidUtilities.runOnUIThread(new ChatActionCell$$ExternalSyntheticLambda8(lottieAnimation));
        if (messageObject.wasUnread || this.forceWasUnread) {
            messageObject.wasUnread = false;
            this.forceWasUnread = false;
            try {
                performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (getContext() instanceof LaunchActivity) {
                ((LaunchActivity) getContext()).getFireworksOverlay().start();
            }
            TLRPC.VideoSize videoSize = this.giftEffectAnimation;
            if (videoSize == null || (chatActionCellDelegate = this.delegate) == null) {
                return;
            }
            chatActionCellDelegate.needShowEffectOverlay(this, this.giftSticker, videoSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$2() {
        this.isSpoilerRevealing = false;
        getMessageObject().isSpoilersRevealed = true;
        List list = this.giftPremiumText.spoilers;
        if (list != null) {
            list.clear();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$3() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTouchEvent$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPremiumGiftChannel$4(TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode) {
        this.delegate.didOpenPremiumGiftChannel(this, tL_messageActionGiftCode.slug, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPremiumGiftPreview$5(TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str) {
        this.delegate.didOpenPremiumGift(this, tL_premiumGiftOption, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageObject$1() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            chatActionCellDelegate.onTopicClick(this);
        }
    }

    private float measureLayoutWidth(Layout layout) {
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < layout.getLineCount(); i++) {
            float fCeil = (int) Math.ceil(layout.getLineWidth(i));
            if (fCeil > f) {
                f = fCeil;
            }
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLink(CharacterStyle characterStyle) throws NumberFormatException {
        if (this.delegate == null || !(characterStyle instanceof URLSpan)) {
            return;
        }
        String url = ((URLSpan) characterStyle).getURL();
        if (url.startsWith("task")) {
            this.delegate.didPressTaskLink(this, this.currentMessageObject.getReplyMsgId(), Integer.parseInt(url.substring(5)));
            return;
        }
        if (url.startsWith("topic")) {
            URLSpan uRLSpan = this.pressedLink;
            if (uRLSpan instanceof URLSpanNoUnderline) {
                TLObject object = ((URLSpanNoUnderline) uRLSpan).getObject();
                if (object instanceof TLRPC.TL_forumTopic) {
                    ForumUtilities.openTopic(this.delegate.getBaseFragment(), -this.delegate.getDialogId(), (TLRPC.TL_forumTopic) object, 0);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("invite")) {
            URLSpan uRLSpan2 = this.pressedLink;
            if (uRLSpan2 instanceof URLSpanNoUnderline) {
                TLObject object2 = ((URLSpanNoUnderline) uRLSpan2).getObject();
                if (object2 instanceof TLRPC.TL_chatInviteExported) {
                    this.delegate.needOpenInviteLink((TLRPC.TL_chatInviteExported) object2);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("game")) {
            this.delegate.didPressReplyMessage(this, this.currentMessageObject.getReplyMsgId());
        } else if (url.startsWith("http")) {
            Browser.openUrl(getContext(), url);
        } else {
            this.delegate.needOpenUserProfile(Long.parseLong(url));
        }
    }

    private void openPremiumGiftChannel() {
        if (this.delegate != null) {
            final TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openPremiumGiftChannel$4(tL_messageActionGiftCode);
                }
            });
        }
    }

    private void openPremiumGiftPreview() {
        final TLRPC.TL_premiumGiftOption tL_premiumGiftOption = new TLRPC.TL_premiumGiftOption();
        TLRPC.MessageAction messageAction = this.currentMessageObject.messageOwner.action;
        tL_premiumGiftOption.amount = messageAction.amount;
        tL_premiumGiftOption.months = messageAction.months;
        tL_premiumGiftOption.currency = messageAction.currency;
        final String str = (!isGiftCode() || isSelfGiftCode()) ? null : ((TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action).slug;
        if (this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openPremiumGiftPreview$5(tL_premiumGiftOption, str);
                }
            });
        }
    }

    private void openStarsGiftTransaction() {
        TLRPC.Message message;
        StarGiftSheet starGiftSheet;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionGiftStars) {
            Context context = getContext();
            int i = this.currentAccount;
            TLRPC.Message message2 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context, i, message2.date, message2.from_id, message2.peer_id, (TLRPC.TL_messageActionGiftStars) message2.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionPrizeStars) {
            Context context2 = getContext();
            int i2 = this.currentAccount;
            TLRPC.Message message3 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context2, i2, message3.date, message3.from_id, message3.peer_id, (TLRPC.TL_messageActionPrizeStars) message3.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionGiftTon) {
            Context context3 = getContext();
            int i3 = this.currentAccount;
            TLRPC.Message message4 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context3, i3, message4.date, message4.from_id, message4.peer_id, (TLRPC.TL_messageActionGiftTon) message4.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
            if (((TLRPC.TL_messageActionStarGift) messageAction).forceIn) {
                return;
            } else {
                starGiftSheet = new StarGiftSheet(getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.themeDelegate);
            }
        } else if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
            return;
        } else {
            starGiftSheet = new StarGiftSheet(getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.themeDelegate);
        }
        starGiftSheet.set(this.currentMessageObject).show();
    }

    private void openStarsNeedSheet() {
        MessageSuggestionParams messageSuggestionParamsObtainSuggestionOffer = this.currentMessageObject.obtainSuggestionOffer();
        AmountUtils$Amount amountUtils$Amount = messageSuggestionParamsObtainSuggestionOffer.amount;
        if (amountUtils$Amount == null || amountUtils$Amount.currency != AmountUtils$Currency.STARS) {
            return;
        }
        new StarsIntroActivity.StarsNeededSheet(getContext(), this.themeDelegate, messageSuggestionParamsObtainSuggestionOffer.amount.asDecimal(), 13, ForumUtilities.getMonoForumTitle(this.currentAccount, this.currentMessageObject.getDialogId(), true), null).show();
    }

    private void setStarsPaused(boolean z) {
        StarParticlesView.Drawable drawable = this.starParticlesDrawable;
        if (z == drawable.paused) {
            return;
        }
        drawable.paused = z;
        if (z) {
            drawable.pausedTime = System.currentTimeMillis();
            return;
        }
        for (int i = 0; i < this.starParticlesDrawable.particles.size(); i++) {
            ((StarParticlesView.Drawable.Particle) this.starParticlesDrawable.particles.get(i)).lifeTime += System.currentTimeMillis() - this.starParticlesDrawable.pausedTime;
        }
        invalidate();
    }

    private void updateTextInternal(boolean z) {
        if (getMeasuredWidth() != 0) {
            createLayout(this.customText, getMeasuredWidth());
            invalidate();
        }
        if (this.wasLayout) {
            buildLayout();
        } else if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.requestLayout();
                }
            });
        } else {
            requestLayout();
        }
    }

    public boolean checkUnreadReactions(float f, int i) {
        if (!this.reactionsLayoutInBubble.hasUnreadReactions) {
            return false;
        }
        float y = getY();
        float f2 = y + r2.y;
        return f2 > f && (f2 + ((float) this.reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.dp(16.0f)) < ((float) i);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageObject messageObject;
        if (i == NotificationCenter.startSpoilers) {
            setSpoilersSuppressed(false);
            return;
        }
        if (i == NotificationCenter.stopSpoilers) {
            setSpoilersSuppressed(true);
            return;
        }
        if (i == NotificationCenter.didUpdatePremiumGiftStickers || i == NotificationCenter.starGiftsLoaded || i == NotificationCenter.didUpdateTonGiftStickers) {
            messageObject = this.currentMessageObject;
            if (messageObject == null) {
                return;
            }
        } else if (i != NotificationCenter.diceStickersDidLoad || !Objects.equals(objArr[0], UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack) || (messageObject = this.currentMessageObject) == null) {
            return;
        }
        setMessageObject(messageObject, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x0495 A[PHI: r3 r4 r5 r6
      0x0495: PHI (r3v8 int) = (r3v5 int), (r3v11 int) binds: [B:159:0x0492, B:150:0x046a] A[DONT_GENERATE, DONT_INLINE]
      0x0495: PHI (r4v11 int) = (r4v8 int), (r4v12 int) binds: [B:159:0x0492, B:150:0x046a] A[DONT_GENERATE, DONT_INLINE]
      0x0495: PHI (r5v12 float) = (r5v7 float), (r5v18 float) binds: [B:159:0x0492, B:150:0x046a] A[DONT_GENERATE, DONT_INLINE]
      0x0495: PHI (r6v5 android.graphics.Paint) = (r6v2 android.graphics.Paint), (r6v10 android.graphics.Paint) binds: [B:159:0x0492, B:150:0x046a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawBackground(Canvas canvas, boolean z) {
        Paint paint;
        Paint paint2;
        Paint paint3;
        Paint paint4;
        int alpha;
        int alpha2;
        float alpha3;
        Canvas canvas2;
        float fDp;
        TextLayout textLayout;
        float f;
        Paint paint5;
        Paint paint6;
        int iIntValue;
        float f2;
        int i;
        float f3;
        int i2;
        int i3;
        int i4;
        float f4;
        Path path;
        RectF rectF;
        float f5;
        float f6;
        int i5;
        if (this.canDrawInParent) {
            if (hasGradientService() && !z) {
                return;
            }
            if (!hasGradientService() && z) {
                return;
            }
        }
        Paint themedPaint = getThemedPaint("paintChatActionBackground");
        Paint themedPaint2 = getThemedPaint("paintChatActionBackgroundDarken");
        this.textPaint = (TextPaint) getThemedPaint("paintChatActionText");
        int i6 = this.overrideBackground;
        if (i6 >= 0) {
            int themedColor = getThemedColor(i6);
            if (this.overrideBackgroundPaint == null) {
                Paint paint7 = new Paint(1);
                this.overrideBackgroundPaint = paint7;
                paint7.setColor(themedColor);
                TextPaint textPaint = new TextPaint(1);
                this.overrideTextPaint = textPaint;
                textPaint.setTypeface(AndroidUtilities.bold());
                this.overrideTextPaint.setTextSize(AndroidUtilities.dp(Math.max(16, SharedConfig.fontSize) - 2));
                this.overrideTextPaint.setColor(getThemedColor(this.overrideText));
            }
            themedPaint = this.overrideBackgroundPaint;
            this.textPaint = this.overrideTextPaint;
        }
        if (this.invalidatePath) {
            this.invalidatePath = false;
            this.backgroundLeft = getWidth();
            this.backgroundRight = 0;
            this.lineWidths.clear();
            StaticLayout staticLayout = this.textLayout;
            int lineCount = staticLayout == null ? 0 : staticLayout.getLineCount();
            int iDp = AndroidUtilities.dp(11.0f);
            int iDp2 = AndroidUtilities.dp(8.0f);
            int i7 = 0;
            int i8 = 0;
            while (true) {
                f = 1.5f;
                if (i7 >= lineCount) {
                    break;
                }
                int iCeil = (int) Math.ceil(this.textLayout.getLineWidth(i7));
                if (i7 == 0 || (i5 = i8 - iCeil) <= 0 || i5 > (iDp * 1.5f) + iDp2) {
                    i8 = iCeil;
                }
                this.lineWidths.add(Integer.valueOf(i8));
                i7++;
            }
            int i9 = lineCount - 2;
            while (i9 >= 0) {
                int iIntValue2 = ((Integer) this.lineWidths.get(i9)).intValue();
                int i10 = i8 - iIntValue2;
                if (i10 <= 0 || i10 > (iDp * f) + iDp2) {
                    i8 = iIntValue2;
                }
                this.lineWidths.set(i9, Integer.valueOf(i8));
                i9--;
                f = 1.5f;
            }
            int iDp3 = AndroidUtilities.dp(4.0f);
            int measuredWidth = getMeasuredWidth() / 2;
            int iDp4 = AndroidUtilities.dp(3.0f);
            int iDp5 = AndroidUtilities.dp(6.0f);
            int i11 = iDp - iDp4;
            this.lineHeights.clear();
            this.backgroundPath.reset();
            float f7 = measuredWidth;
            this.backgroundPath.moveTo(f7, iDp3);
            int i12 = 0;
            int i13 = 0;
            while (i12 < lineCount) {
                int iIntValue3 = ((Integer) this.lineWidths.get(i12)).intValue();
                int i14 = iDp5;
                int lineBottom = this.textLayout.getLineBottom(i12);
                int i15 = lineCount - 1;
                if (i12 < i15) {
                    paint6 = themedPaint2;
                    paint5 = themedPaint;
                    iIntValue = ((Integer) this.lineWidths.get(i12 + 1)).intValue();
                } else {
                    paint5 = themedPaint;
                    paint6 = themedPaint2;
                    iIntValue = 0;
                }
                int iDp6 = lineBottom - i13;
                if (i12 == 0 || iIntValue3 > i8) {
                    f2 = 3.0f;
                    iDp6 += AndroidUtilities.dp(3.0f);
                } else {
                    f2 = 3.0f;
                }
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    iDp6 += AndroidUtilities.dp(f2);
                }
                float f8 = (iIntValue3 / 2.0f) + f7;
                int i16 = (i12 == i15 || iIntValue3 >= iIntValue || i12 == 0 || iIntValue3 >= i8) ? iDp2 : i14;
                if (i12 == 0 || iIntValue3 > i8) {
                    i = measuredWidth;
                    f3 = f7;
                    i2 = lineCount;
                    i3 = i8;
                    i4 = lineBottom;
                    this.rect.set((f8 - iDp4) - iDp, iDp3, i11 + f8, (iDp * 2) + iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, 90.0f);
                } else if (iIntValue3 < i8) {
                    i4 = lineBottom;
                    f3 = f7;
                    float f9 = i11 + f8;
                    i = measuredWidth;
                    i2 = lineCount;
                    i3 = i8;
                    this.rect.set(f9, iDp3, (i16 * 2) + f9, r10 + iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, -90.0f);
                } else {
                    i = measuredWidth;
                    f3 = f7;
                    i2 = lineCount;
                    i3 = i8;
                    i4 = lineBottom;
                }
                iDp3 += iDp6;
                if (i12 == i15 || iIntValue3 >= iIntValue) {
                    f4 = 3.0f;
                } else {
                    f4 = 3.0f;
                    iDp3 -= AndroidUtilities.dp(3.0f);
                    iDp6 -= AndroidUtilities.dp(3.0f);
                }
                if (i12 != 0 && iIntValue3 < i3) {
                    iDp3 -= AndroidUtilities.dp(f4);
                    iDp6 -= AndroidUtilities.dp(f4);
                }
                this.lineHeights.add(Integer.valueOf(iDp6));
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    this.rect.set((f8 - iDp4) - iDp, iDp3 - (iDp * 2), f8 + i11, iDp3);
                    checkLeftRightBounds();
                    path = this.backgroundPath;
                    rectF = this.rect;
                    f5 = BitmapDescriptorFactory.HUE_RED;
                    f6 = 90.0f;
                } else if (iIntValue3 < iIntValue) {
                    float f10 = f8 + i11;
                    this.rect.set(f10, iDp3 - r2, (i16 * 2) + f10, iDp3);
                    checkLeftRightBounds();
                    path = this.backgroundPath;
                    rectF = this.rect;
                    f5 = 180.0f;
                    f6 = -90.0f;
                } else {
                    i12++;
                    i8 = iIntValue3;
                    iDp5 = i14;
                    themedPaint2 = paint6;
                    themedPaint = paint5;
                    i13 = i4;
                    f7 = f3;
                    measuredWidth = i;
                    lineCount = i2;
                }
                path.arcTo(rectF, f5, f6);
                i12++;
                i8 = iIntValue3;
                iDp5 = i14;
                themedPaint2 = paint6;
                themedPaint = paint5;
                i13 = i4;
                f7 = f3;
                measuredWidth = i;
                lineCount = i2;
            }
            paint = themedPaint;
            paint2 = themedPaint2;
            int i17 = measuredWidth;
            float f11 = f7;
            int i18 = iDp5;
            int i19 = lineCount - 1;
            int i20 = i19;
            while (i20 >= 0) {
                int iIntValue4 = i20 != 0 ? ((Integer) this.lineWidths.get(i20 - 1)).intValue() : 0;
                int iIntValue5 = ((Integer) this.lineWidths.get(i20)).intValue();
                int iIntValue6 = i20 != i19 ? ((Integer) this.lineWidths.get(i20 + 1)).intValue() : 0;
                this.textLayout.getLineBottom(i20);
                float f12 = i17 - (iIntValue5 / 2);
                int i21 = (i20 == i19 || iIntValue5 >= iIntValue6 || i20 == 0 || iIntValue5 >= iIntValue4) ? iDp2 : i18;
                if (i20 == i19 || iIntValue5 > iIntValue6) {
                    this.rect.set(f12 - i11, iDp3 - (iDp * 2), iDp4 + f12 + iDp, iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, 90.0f);
                } else if (iIntValue5 < iIntValue6) {
                    float f13 = f12 - i11;
                    this.rect.set(f13 - (i21 * 2), iDp3 - r12, f13, iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, -90.0f);
                }
                iDp3 -= ((Integer) this.lineHeights.get(i20)).intValue();
                if (i20 == 0 || iIntValue5 > iIntValue4) {
                    this.rect.set(f12 - i11, iDp3, f12 + iDp4 + iDp, (iDp * 2) + iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 180.0f, 90.0f);
                } else if (iIntValue5 < iIntValue4) {
                    float f14 = f12 - i11;
                    this.rect.set(f14 - (i21 * 2), iDp3, f14, r7 + iDp3);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, -90.0f);
                }
                i20--;
            }
            this.backgroundPath.close();
            if (isMessageActionSuggestedPostApproval() && !isNewStyleButtonLayout()) {
                this.rect.left = (f11 - (this.textWidth / 2.0f)) - AndroidUtilities.dp(17.0f);
                RectF rectF2 = this.rect;
                rectF2.top = iDp3;
                rectF2.right = f11 + (this.textWidth / 2.0f) + AndroidUtilities.dp(17.0f);
                this.rect.bottom = iDp3 + this.textHeight + this.titleHeight + AndroidUtilities.dp(28.0f);
                this.backgroundPath.reset();
                this.backgroundPath.addRoundRect(this.rect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), Path.Direction.CW);
                this.backgroundPath.close();
            }
        } else {
            paint = themedPaint;
            paint2 = themedPaint2;
        }
        if (!this.visiblePartSet) {
            this.backgroundHeight = ((ViewGroup) getParent()).getMeasuredHeight();
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        float f15 = 0.75f;
        if (!z || (getAlpha() == 1.0f && !isFloating())) {
            paint3 = paint;
            if (isFloating()) {
                alpha = paint3.getAlpha();
                alpha2 = paint2.getAlpha();
                paint3.setAlpha((int) (alpha * (isFloating() ? 0.75f : 1.0f)));
                alpha3 = alpha2;
                if (!isFloating()) {
                    f15 = 1.0f;
                }
                int i22 = (int) (alpha3 * f15);
                paint4 = paint2;
                paint4.setAlpha(i22);
            } else {
                paint4 = paint2;
                alpha = -1;
                alpha2 = -1;
            }
        } else {
            alpha = paint.getAlpha();
            alpha2 = paint2.getAlpha();
            paint3 = paint;
            paint3.setAlpha((int) (alpha * getAlpha() * (isFloating() ? 0.75f : 1.0f)));
            alpha3 = alpha2 * getAlpha();
            if (!isFloating()) {
            }
            int i222 = (int) (alpha3 * f15);
            paint4 = paint2;
            paint4.setAlpha(i222);
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.isRepostPreview) {
            canvas2 = canvas;
            canvas2.drawPath(this.backgroundPath, paint3);
            if (hasGradientService()) {
                canvas2.drawPath(this.backgroundPath, paint4);
            }
            float f16 = this.dimAmount;
            fDp = BitmapDescriptorFactory.HUE_RED;
            if (f16 > BitmapDescriptorFactory.HUE_RED) {
                int alpha4 = this.dimPaint.getAlpha();
                if (z) {
                    this.dimPaint.setAlpha((int) (alpha4 * getAlpha()));
                }
                canvas2.drawPath(this.backgroundPath, this.dimPaint);
                this.dimPaint.setAlpha(alpha4);
            }
        } else {
            canvas2 = canvas;
            fDp = BitmapDescriptorFactory.HUE_RED;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (this.starGiftLayout.has()) {
            float width = this.starGiftLayout.getWidth() + AndroidUtilities.dp(8.0f);
            float width2 = (getWidth() - width) / 2.0f;
            if (!this.starGiftLayout.repost) {
                fDp = this.textY + this.textHeight + AndroidUtilities.dp(12.0f);
            }
            RectF rectF3 = AndroidUtilities.rectTmp;
            rectF3.set(width2, fDp, width + width2, this.starGiftLayout.getHeight() + fDp + AndroidUtilities.dp(8.0f));
            if (this.backgroundRect == null) {
                this.backgroundRect = new RectF();
            }
            this.backgroundRect.set(rectF3);
            canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), paint3);
            if (hasGradientService()) {
                canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), paint4);
            }
        } else if (isButtonLayout(messageObject2)) {
            float width3 = (getWidth() - this.giftRectSize) / 2.0f;
            float f17 = this.textY + this.textHeight;
            if (isNewStyleButtonLayout()) {
                float fDp2 = f17 + AndroidUtilities.dp(4.0f);
                AndroidUtilities.rectTmp.set(width3, fDp2, this.giftRectSize + width3, this.backgroundRectHeight + fDp2);
            } else {
                float fDp3 = f17 + AndroidUtilities.dp(12.0f);
                RectF rectF4 = AndroidUtilities.rectTmp;
                float f18 = this.giftRectSize;
                rectF4.set(width3, fDp3, width3 + f18, f18 + fDp3 + this.giftPremiumAdditionalHeight);
            }
            if (messageObject2 != null && messageObject2.type == 18 && !this.giftPremiumTextCollapsed && (textLayout = this.giftPremiumText) != null && this.giftPremiumTextCollapsedHeight > 0) {
                AndroidUtilities.rectTmp.bottom -= (textLayout.layout.getHeight() - this.giftPremiumTextCollapsedHeight) * (1.0f - this.giftPremiumTextExpandedAnimated.get());
            }
            if (this.backgroundRect == null) {
                this.backgroundRect = new RectF();
            }
            this.backgroundRect.set(AndroidUtilities.rectTmp);
            canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), paint3);
            if (hasGradientService()) {
            }
        }
        if (alpha >= 0) {
            paint3.setAlpha(alpha);
            paint4.setAlpha(alpha2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view != this.rippleView) {
            return super.drawChild(canvas, view, j);
        }
        float scale = this.bounce.getScale(0.02f);
        canvas.save();
        canvas.scale(scale, scale, view.getX() + (view.getMeasuredWidth() / 2.0f), view.getY() + (view.getMeasuredHeight() / 2.0f));
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return zDrawChild;
    }

    public void drawOutboundsContent(Canvas canvas) {
        canvas.save();
        canvas.translate(this.sideMenuWidth / 2.0f, getPaddingTop());
        canvas.save();
        canvas.translate(this.textXLeft, this.textY);
        StaticLayout staticLayout = this.textLayout;
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, staticLayout != null ? getAdaptiveEmojiColorFilter(staticLayout.getPaint().getColor()) : null);
        canvas.restore();
        if (this.starGiftLayout.has()) {
            canvas.save();
            canvas.translate((getWidth() - this.starGiftLayout.getWidth()) / 2.0f, this.starGiftLayout.repost ? AndroidUtilities.dp(4.0f) : this.textY + this.textHeight + AndroidUtilities.dp(16.0f));
            this.starGiftLayout.drawOutbounds(canvas);
            canvas.restore();
        }
        canvas.restore();
        if (this.topicSeparator != null) {
            float alpha = getAlpha();
            Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
            if (resourcesProvider != null) {
                resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + BitmapDescriptorFactory.HUE_RED);
            } else {
                Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + BitmapDescriptorFactory.HUE_RED);
            }
            this.topicSeparator.draw(canvas, getWidth(), this.sideMenuWidth, BitmapDescriptorFactory.HUE_RED, 1.0f, alpha, this.showTopicSeparator);
        }
    }

    public void drawReactions(Canvas canvas, boolean z, Integer num) {
        if (this.canDrawInParent) {
            if (hasGradientService() && !z) {
                return;
            }
            if (!hasGradientService() && z) {
                return;
            }
        }
        drawReactionsLayout(canvas, z, num);
    }

    public void drawReactionsLayout(Canvas canvas, boolean z, Integer num) {
        float alpha = z ? getAlpha() : 1.0f;
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.shouldDrawReactions()) {
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (!reactionsLayoutInBubble.isSmall || (this.transitionParams.animateChange && reactionsLayoutInBubble.animateHeight)) {
            reactionsLayoutInBubble.drawServiceShaderBackground = 1.0f;
            if (alpha < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (255.0f * alpha), 31);
            }
            ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
            TransitionParams transitionParams = this.transitionParams;
            reactionsLayoutInBubble2.draw(canvas, transitionParams.animateChange ? transitionParams.animateChangeProgress : 1.0f, num);
            if (alpha < 1.0f) {
                canvas.restore();
            }
        }
    }

    public void drawReactionsLayoutOverlay(Canvas canvas, boolean z) {
        float alpha = z ? getAlpha() : 1.0f;
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.shouldDrawReactions()) {
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (!reactionsLayoutInBubble.isSmall || (this.transitionParams.animateChange && reactionsLayoutInBubble.animateHeight)) {
            reactionsLayoutInBubble.drawServiceShaderBackground = 1.0f;
            if (alpha < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (255.0f * alpha), 31);
            }
            ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
            TransitionParams transitionParams = this.transitionParams;
            reactionsLayoutInBubble2.drawOverlay(canvas, transitionParams.animateChange ? transitionParams.animateChangeProgress : 1.0f);
            if (alpha < 1.0f) {
                canvas.restore();
            }
        }
    }

    public void drawScrimReaction(Canvas canvas, Integer num, float f, boolean z) {
        if (this.reactionsLayoutInBubble.isSmall) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        this.reactionsLayoutInBubble.setScrimProgress(f, z);
        this.reactionsLayoutInBubble.draw(canvas, this.transitionParams.animateChangeProgress, num);
    }

    public void drawScrimReactionPreview(View view, Canvas canvas, int i, Integer num, float f) {
        if (this.reactionsLayoutInBubble.isSmall) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        this.reactionsLayoutInBubble.setScrimProgress(f);
        this.reactionsLayoutInBubble.drawPreview(view, canvas, i, num);
    }

    @Override // org.telegram.ui.Cells.BaseCell
    public int getBoundsLeft() {
        if (this.starGiftLayout.has()) {
            int width = ((int) (getWidth() - (this.starGiftLayout.getWidth() + AndroidUtilities.dp(8.0f)))) / 2;
            return this.starGiftLayout.repost ? width : Math.min(this.backgroundLeft, width);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            return (this.sideMenuWidth / 2) + ((getWidth() - this.giftRectSize) / 2);
        }
        int iMin = this.backgroundLeft;
        ImageReceiver imageReceiver = this.imageReceiver;
        if (imageReceiver != null && imageReceiver.getVisible()) {
            iMin = Math.min((int) this.imageReceiver.getImageX(), iMin);
        }
        return (this.sideMenuWidth / 2) + iMin;
    }

    @Override // org.telegram.ui.Cells.BaseCell
    public int getBoundsRight() {
        if (this.starGiftLayout.has()) {
            int width = ((int) (getWidth() + (this.starGiftLayout.getWidth() + AndroidUtilities.dp(8.0f)))) / 2;
            return this.starGiftLayout.repost ? width : Math.max(this.backgroundRight, width);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            return (this.sideMenuWidth / 2) + ((getWidth() + this.giftRectSize) / 2);
        }
        int iMax = this.backgroundRight;
        ImageReceiver imageReceiver = this.imageReceiver;
        if (imageReceiver != null && imageReceiver.getVisible()) {
            iMax = Math.max((int) this.imageReceiver.getImageX2(), iMax);
        }
        return (this.sideMenuWidth / 2) + iMax;
    }

    public int getCustomDate() {
        return this.customDate;
    }

    public ChatActionCellDelegate getDelegate() {
        return this.delegate;
    }

    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    public ImageReceiver getPhotoImage() {
        return this.imageReceiver;
    }

    public ReactionsLayoutInBubble.ReactionButton getReactionButton(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        return this.reactionsLayoutInBubble.getReactionButton(visibleReaction);
    }

    protected Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public TransitionParams getTransitionParams() {
        return this.transitionParams;
    }

    public boolean hasButton() {
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || !isButtonLayout(messageObject) || this.giftPremiumButtonLayout == null) ? false : true;
    }

    public boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider;
        return this.overrideBackgroundPaint == null && ((resourcesProvider = this.themeDelegate) == null ? Theme.hasGradientService() : resourcesProvider.hasGradientService());
    }

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
    public void invalidate() {
        super.invalidate();
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        Runnable runnable = this.invalidateListener;
        if (runnable != null) {
            runnable.run();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        super.invalidate(i, i2, i3, i4);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        super.invalidate(rect);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    public void invalidateOutbounds() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null && chatActionCellDelegate.canDrawOutboundsContent()) {
            super.invalidate();
        } else if (getParent() instanceof View) {
            ((View) getParent()).invalidate();
        }
    }

    public boolean isCellAttachedToWindow() {
        return this.attachedToWindow;
    }

    public boolean isFloating() {
        return false;
    }

    public void markReactionsAsRead() {
        this.reactionsLayoutInBubble.hasUnreadReactions = false;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.markReactionsAsRead();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ChatActionCellDelegate chatActionCellDelegate;
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.imageReceiver.onAttachedToWindow();
        setStarsPaused(false);
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.attach();
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateTonGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 21) {
            setMessageObject(messageObject, true);
        }
        this.starGiftLayout.attach();
        this.reactionsLayoutInBubble.onAttachToWindow();
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null) {
            topicSeparator.attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.imageReceiver.onDetachedFromWindow();
        setStarsPaused(true);
        this.wasLayout = false;
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.detach();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateTonGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        this.avatarStoryParams.onDetachFromWindow();
        this.transitionParams.onDetach();
        this.starGiftLayout.detach();
        this.reactionsLayoutInBubble.onDetachFromWindow();
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null) {
            topicSeparator.detach();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0666  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0b1f  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0b26  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0b35  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0b42  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0b88  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0c26  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0c33  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x035e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int i;
        float f;
        float fDp;
        int iDp;
        float fDp2;
        float fDp3;
        float f2;
        float f3;
        float f4;
        float f5;
        Text text;
        TextLayout textLayout;
        StaticLayout staticLayout;
        Theme.ResourcesProvider resourcesProvider;
        boolean z;
        int i2;
        int i3;
        int i4;
        Text text2;
        ImageReceiver imageReceiver;
        float f6;
        float f7;
        int iDp2;
        float fDp4;
        canvas.save();
        canvas.translate(this.sideMenuWidth / 2.0f, getPaddingTop());
        MessageObject messageObject = this.currentMessageObject;
        float f8 = this.giftPremiumTextExpandedAnimated.set(!this.giftPremiumTextCollapsed);
        int imageSize = this.stickerSize;
        if (!this.starGiftLayout.has() && isButtonLayout(messageObject)) {
            this.stickerSize = this.giftRectSize - AndroidUtilities.dp(106.0f);
            if (isNewStyleButtonLayout()) {
                imageSize = getImageSize(messageObject);
                float f9 = (this.previousWidth - imageSize) / 2.0f;
                float fDp5 = this.textY + this.textHeight + AndroidUtilities.dp(4.0f) + AndroidUtilities.dp(16.0f);
                if (messageObject.isStoryMention()) {
                    this.avatarStoryParams.storyItem = messageObject.messageOwner.media.storyItem;
                }
                float f10 = imageSize;
                this.avatarStoryParams.originalAvatarRect.set(f9, fDp5, f9 + f10, fDp5 + f10);
                this.imageReceiver.setImageCoords(f9, fDp5, f10, f10);
            } else {
                int i5 = messageObject.type;
                if (i5 == 11) {
                    ImageReceiver imageReceiver2 = this.imageReceiver;
                    int i6 = this.previousWidth;
                    float f11 = this.stickerSize;
                    imageReceiver2.setImageCoords((i6 - r4) / 2.0f, this.textY + this.textHeight + (this.giftRectSize * 0.075f), f11, f11);
                } else {
                    if (i5 == 25) {
                        imageSize = (int) (this.stickerSize * (AndroidUtilities.isTablet() ? 1.0f : 1.2f));
                    } else {
                        if (messageObject.isStarGiftAction()) {
                            imageReceiver = this.imageReceiver;
                            f6 = (this.previousWidth - imageSize) / 2.0f;
                            fDp4 = this.textY + this.textHeight + (this.giftRectSize * 0.075f) + AndroidUtilities.dp(2.0f);
                        } else {
                            if (messageObject.type == 30) {
                                imageSize = (int) (this.stickerSize * 1.1f);
                                TLRPC.Message message = messageObject.messageOwner;
                                if (message == null || (message.action instanceof TLRPC.TL_messageActionStarGift)) {
                                    imageReceiver = this.imageReceiver;
                                    f6 = (this.previousWidth - imageSize) / 2.0f;
                                    f7 = this.textY + this.textHeight + (this.giftRectSize * 0.075f);
                                    iDp2 = AndroidUtilities.dp(12.0f);
                                }
                            } else {
                                imageSize = (int) (this.stickerSize * 1.0f);
                                imageReceiver = this.imageReceiver;
                                f6 = (this.previousWidth - imageSize) / 2.0f;
                                f7 = this.textY + this.textHeight + (this.giftRectSize * 0.075f);
                                iDp2 = AndroidUtilities.dp(4.0f);
                            }
                            fDp4 = f7 - iDp2;
                        }
                        float f12 = imageSize;
                        imageReceiver.setImageCoords(f6, fDp4, f12, f12);
                    }
                    float f13 = imageSize;
                    this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.dp(22.0f), f13, f13);
                }
            }
            TextPaint textPaint = (TextPaint) getThemedPaint("paintChatActionText");
            this.textPaint = textPaint;
            if (textPaint != null) {
                TextPaint textPaint2 = this.giftTitlePaint;
                if (textPaint2 != null && textPaint2.getColor() != this.textPaint.getColor()) {
                    this.giftTitlePaint.setColor(this.textPaint.getColor());
                }
                TextPaint textPaint3 = this.giftSubtitlePaint;
                if (textPaint3 != null && textPaint3.getColor() != this.textPaint.getColor()) {
                    this.giftSubtitlePaint.setColor(this.textPaint.getColor());
                    this.giftSubtitlePaint.linkColor = this.textPaint.getColor();
                }
                TextPaint textPaint4 = this.giftTextPaint;
                if (textPaint4 != null && textPaint4.getColor() != this.textPaint.getColor()) {
                    this.giftTextPaint.setColor(this.textPaint.getColor());
                    this.giftTextPaint.linkColor = this.textPaint.getColor();
                }
            }
        }
        int i7 = imageSize;
        drawBackground(canvas, false);
        if (this.starGiftLayout.has()) {
            canvas.save();
            float width = (getWidth() - this.starGiftLayout.getWidth()) / 2.0f;
            this.starGiftLayoutX = width;
            float fDp6 = this.starGiftLayout.repost ? AndroidUtilities.dp(4.0f) : this.textY + this.textHeight + AndroidUtilities.dp(16.0f);
            this.starGiftLayoutY = fDp6;
            canvas.translate(width, fDp6);
            this.starGiftLayout.draw(canvas);
            ChatActionCellDelegate chatActionCellDelegate = this.delegate;
            if (chatActionCellDelegate == null || chatActionCellDelegate.canDrawOutboundsContent()) {
                this.starGiftLayout.drawOutbounds(canvas);
            }
            canvas.restore();
        } else if (isButtonLayout(messageObject) || (messageObject != null && messageObject.type == 11)) {
            if (this.wallpaperPreviewDrawable != null) {
                canvas.save();
                canvas.translate(this.imageReceiver.getImageX(), this.imageReceiver.getImageY());
                Path path = this.clipPath;
                if (path == null) {
                    this.clipPath = new Path();
                } else {
                    path.rewind();
                }
                this.clipPath.addCircle(this.imageReceiver.getImageWidth() / 2.0f, this.imageReceiver.getImageHeight() / 2.0f, this.imageReceiver.getImageWidth() / 2.0f, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                this.wallpaperPreviewDrawable.setBounds(0, 0, (int) this.imageReceiver.getImageWidth(), (int) this.imageReceiver.getImageHeight());
                this.wallpaperPreviewDrawable.draw(canvas);
                canvas.restore();
            } else if (messageObject.isStoryMention()) {
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                long j = messageMedia.user_id;
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.avatarStoryParams;
                avatarStoryParams.storyId = messageMedia.id;
                StoriesUtilities.drawAvatarWithStory(j, canvas, this.imageReceiver, avatarStoryParams);
            } else {
                this.imageReceiver.draw(canvas);
            }
            this.radialProgress.setProgressRect(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageX() + this.imageReceiver.getImageWidth(), this.imageReceiver.getImageY() + this.imageReceiver.getImageHeight());
            int i8 = messageObject.type;
            if (i8 == 21) {
                ImageUpdater imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                if (imageUpdater != null) {
                    this.radialProgress.setProgress(imageUpdater.getCurrentImageProgress(), true);
                    this.radialProgress.setCircleRadius(((int) (this.imageReceiver.getImageWidth() * 0.5f)) + 1);
                    this.radialProgress.setMaxIconSize(AndroidUtilities.dp(24.0f));
                    this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                    if (imageUpdater.getCurrentImageProgress() == 1.0f) {
                        this.radialProgress.setIcon(4, true, true);
                    } else {
                        this.radialProgress.setIcon(3, true, true);
                    }
                }
            } else if (i8 == 22) {
                float uploadingInfoProgress = getUploadingInfoProgress(messageObject);
                this.radialProgress.setProgress(uploadingInfoProgress, true);
                this.radialProgress.setCircleRadius(AndroidUtilities.dp(26.0f));
                this.radialProgress.setMaxIconSize(AndroidUtilities.dp(24.0f));
                this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                if (uploadingInfoProgress == 1.0f) {
                }
            }
            this.radialProgress.draw(canvas);
        }
        if (this.textPaint == null || this.textLayout == null) {
            i = 22;
            f = 16.0f;
        } else {
            canvas.save();
            canvas.translate(this.textXLeft, this.textY);
            if (this.textLayout.getPaint() != this.textPaint) {
                buildLayout();
            }
            canvas.save();
            SpoilerEffect.clipOutCanvas(canvas, this.spoilers);
            SpoilerEffect.layoutDrawMaybe(this.textLayout, canvas);
            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
            if (chatActionCellDelegate2 == null || chatActionCellDelegate2.canDrawOutboundsContent()) {
                StaticLayout staticLayout2 = this.textLayout;
                i = 22;
                f = 16.0f;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout2, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, staticLayout2 == null ? null : getAdaptiveEmojiColorFilter(staticLayout2.getPaint().getColor()));
            } else {
                i = 22;
                f = 16.0f;
            }
            canvas.restore();
            for (SpoilerEffect spoilerEffect : this.spoilers) {
                spoilerEffect.setColor(this.textLayout.getPaint().getColor());
                spoilerEffect.draw(canvas);
            }
            canvas.restore();
        }
        if (this.textPaint != null && this.titleLayout != null) {
            canvas.save();
            canvas.translate(this.titleXLeft, this.textY - this.titleHeight);
            if (this.titleLayout.getPaint() != this.textPaint) {
                buildLayout();
            }
            canvas.save();
            SpoilerEffect.clipOutCanvas(canvas, this.spoilers);
            SpoilerEffect.layoutDrawMaybe(this.titleLayout, canvas);
            ChatActionCellDelegate chatActionCellDelegate3 = this.delegate;
            if (chatActionCellDelegate3 == null || chatActionCellDelegate3.canDrawOutboundsContent()) {
                StaticLayout staticLayout3 = this.titleLayout;
                AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.animatedEmojiStack;
                List list = this.spoilers;
                StaticLayout staticLayout4 = this.textLayout;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout3, emojiGroupedSpans, BitmapDescriptorFactory.HUE_RED, list, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, staticLayout4 == null ? null : getAdaptiveEmojiColorFilter(staticLayout4.getPaint().getColor()));
            }
            canvas.restore();
            for (SpoilerEffect spoilerEffect2 : this.spoilers) {
                spoilerEffect2.setColor(this.titleLayout.getPaint().getColor());
                spoilerEffect2.draw(canvas);
            }
            canvas.restore();
        }
        if (!this.starGiftLayout.has() && isButtonLayout(messageObject)) {
            canvas.save();
            float fDp7 = (this.previousWidth - this.giftRectSize) / 2.0f;
            if (messageObject.type != i) {
                fDp7 += AndroidUtilities.dp(8.0f);
            }
            float f14 = fDp7;
            if (isNewStyleButtonLayout()) {
                RectF rectF = this.backgroundRect;
                fDp = rectF != null ? rectF.top : this.textY + this.textHeight + AndroidUtilities.dp(4.0f);
                iDp = AndroidUtilities.dp(f);
                if (i7 > 0) {
                    iDp = (iDp * 2) + i7;
                }
            } else {
                float f15 = this.textY + this.textHeight + (this.giftRectSize * 0.075f);
                if (messageObject.type != 21) {
                    i7 = this.stickerSize;
                }
                fDp = f15 + i7 + AndroidUtilities.dp(4.0f);
                if (messageObject.type == 21) {
                    fDp += AndroidUtilities.dp(f);
                }
                if (messageObject.isStarGiftAction()) {
                    iDp = AndroidUtilities.dp(12.0f);
                } else {
                    if (messageObject.type == 30 && !messageObject.isStarGiftAction()) {
                        fDp -= AndroidUtilities.dp(3.66f);
                    }
                    canvas.translate(f14, fDp);
                    if (this.giftPremiumTitleLayout == null) {
                        canvas.save();
                        canvas.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumTitleLayout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                        this.giftPremiumTitleLayout.draw(canvas);
                        canvas.restore();
                        float height = this.giftPremiumTitleLayout.getHeight() + fDp;
                        if (this.giftPremiumSubtitleLayout != null) {
                            canvas.save();
                            canvas.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumSubtitleLayout.getWidth()) / 2.0f, this.giftPremiumTitleLayout.getHeight() + AndroidUtilities.dp(4.0f));
                            this.giftPremiumSubtitleLayout.draw(canvas);
                            canvas.restore();
                            height += this.giftPremiumSubtitleLayout.getHeight() + AndroidUtilities.dp(10.0f);
                        }
                        fDp2 = height + AndroidUtilities.dp(messageObject.type == 25 ? 6.0f : BitmapDescriptorFactory.HUE_RED);
                    } else {
                        fDp2 = fDp - AndroidUtilities.dp(4.0f);
                    }
                    fDp3 = fDp2;
                    canvas.restore();
                    if (this.giftPremiumTitleLayout != null && (text2 = this.giftPremiumReleasedText) != null) {
                        float width2 = text2.getWidth() + AndroidUtilities.dp(12.0f);
                        float fDp8 = (((this.giftRectSize - AndroidUtilities.dp(f)) - width2) / 2.0f) + f14;
                        float fDp9 = AndroidUtilities.dp(14.0f) + fDp + this.giftPremiumTitleLayout.getHeight();
                        if (this.giftReleasedBackgroundPaint == null) {
                            this.giftReleasedBackgroundPaint = new Paint(1);
                        }
                        this.giftReleasedBackgroundPaint.setColor(!Theme.isCurrentThemeDark() ? 285212671 : 268435456);
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set(fDp8, fDp9 - AndroidUtilities.dp(8.0f), width2 + fDp8, AndroidUtilities.dp(8.0f) + fDp9);
                        canvas.drawRoundRect(rectF2, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.giftReleasedBackgroundPaint);
                        this.giftPremiumReleasedText.draw(canvas, fDp8 + AndroidUtilities.dp(6.0f), fDp9, -855638017, 1.0f);
                        fDp3 += AndroidUtilities.dp(24.0f);
                    }
                    float fDp10 = fDp3 + AndroidUtilities.dp(4.0f);
                    if (messageObject.type == 18) {
                        fDp10 += AndroidUtilities.dp(2.0f);
                    }
                    canvas.save();
                    canvas.translate(f14, fDp10);
                    if (messageObject.type != i) {
                        if (this.radialProgress.getTransitionProgress() == 1.0f) {
                            i2 = 4;
                            if (this.radialProgress.getIcon() != 4) {
                                f3 = f14;
                            } else if (this.giftPremiumText != null) {
                                canvas.save();
                                canvas.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                                this.giftPremiumText.x = ((this.giftRectSize - r0.layout.getWidth()) / 2.0f) + f14;
                                this.giftPremiumText.y = fDp10;
                                int color = this.giftTextPaint.getColor();
                                TextLayout textLayout2 = this.giftPremiumText;
                                f3 = f14;
                                SpoilerEffect.renderWithRipple(this, false, color, 0, textLayout2.patchedLayout, 1, textLayout2.layout, textLayout2.spoilers, canvas, false);
                                TextLayout textLayout3 = this.giftPremiumText;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout3.layout, textLayout3.emoji, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                canvas.restore();
                                f5 = 1.0f;
                                f4 = BitmapDescriptorFactory.HUE_RED;
                                canvas.restore();
                                if (this.giftPremiumTitleLayout == null) {
                                    AndroidUtilities.dp(8.0f);
                                }
                                textLayout = this.giftPremiumText;
                                if (textLayout != null) {
                                    AndroidUtilities.lerp(this.giftPremiumTextCollapsedHeight, textLayout.layout.getHeight(), f8);
                                }
                                staticLayout = this.giftPremiumButtonLayout;
                                if (staticLayout != null) {
                                    staticLayout.getHeight();
                                }
                                getHeight();
                                AndroidUtilities.dp(8.0f);
                                resourcesProvider = this.themeDelegate;
                                if (resourcesProvider == null) {
                                    resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
                                } else {
                                    Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
                                }
                                float scale = this.bounce.getScale(0.02f);
                                canvas.save();
                                canvas.scale(scale, scale, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                                if (this.giftPremiumButtonLayout != null) {
                                    canvas.drawRoundRect(this.giftButtonRect, AndroidUtilities.dp(f), AndroidUtilities.dp(f), getThemedPaint("paintChatActionBackgroundSelected"));
                                    if (hasGradientService()) {
                                        canvas.drawRoundRect(this.giftButtonRect, AndroidUtilities.dp(f), AndroidUtilities.dp(f), getThemedPaint("paintChatActionBackgroundDarken"));
                                    }
                                    if (this.dimAmount > f4) {
                                        canvas.drawRoundRect(this.giftButtonRect, AndroidUtilities.dp(f), AndroidUtilities.dp(f), this.dimPaint);
                                    }
                                    if (getMessageObject().type == 21 || getMessageObject().type == 22 || getMessageObject().type == 24) {
                                        invalidate();
                                    } else {
                                        this.starsPath.rewind();
                                        this.starsPath.addRoundRect(this.giftButtonRect, AndroidUtilities.dp(f), AndroidUtilities.dp(f), Path.Direction.CW);
                                        canvas.save();
                                        canvas.clipPath(this.starsPath);
                                        this.starParticlesDrawable.onDraw(canvas);
                                        if (!this.starParticlesDrawable.paused) {
                                            invalidate();
                                        }
                                        canvas.restore();
                                    }
                                }
                                z = messageObject.settingAvatar;
                                if (!z) {
                                    float f16 = this.progressToProgress;
                                    if (f16 != f5) {
                                        this.progressToProgress = f16 + 0.10666667f;
                                    } else if (!z) {
                                        float f17 = this.progressToProgress;
                                        if (f17 != f4) {
                                            this.progressToProgress = f17 - 0.10666667f;
                                        }
                                    }
                                    float fClamp = Utilities.clamp(this.progressToProgress, f5, f4);
                                    this.progressToProgress = fClamp;
                                    if (fClamp != f4) {
                                        if (this.progressView == null) {
                                            this.progressView = new RadialProgressView(getContext());
                                        }
                                        int iDp3 = AndroidUtilities.dp(f);
                                        canvas.save();
                                        float f18 = this.progressToProgress;
                                        canvas.scale(f18, f18, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                                        this.progressView.setSize(iDp3);
                                        this.progressView.setProgressColor(Theme.getColor(Theme.key_chat_serviceText));
                                        this.progressView.draw(canvas, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                                        canvas.restore();
                                    }
                                    if (this.progressToProgress != f5 && this.giftPremiumButtonLayout != null) {
                                        canvas.save();
                                        float f19 = f5 - this.progressToProgress;
                                        canvas.scale(f19, f19, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                                        canvas.translate(f3, this.giftButtonRect.top + AndroidUtilities.dp(8.0f));
                                        canvas.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumButtonLayout.getWidth()) / 2.0f, f4);
                                        this.giftPremiumButtonLayout.draw(canvas);
                                        canvas.restore();
                                    }
                                    if (messageObject.flickerLoading) {
                                        if (this.loadingDrawable == null) {
                                            LoadingDrawable loadingDrawable = new LoadingDrawable(this.themeDelegate);
                                            this.loadingDrawable = loadingDrawable;
                                            loadingDrawable.setGradientScale(2.0f);
                                            this.loadingDrawable.setAppearByGradient(true);
                                            this.loadingDrawable.setColors(Theme.multAlpha(-1, 0.08f), Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.7f));
                                            this.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dp(f5));
                                        }
                                        this.loadingDrawable.resetDisappear();
                                        this.loadingDrawable.setBounds(this.giftButtonRect);
                                        this.loadingDrawable.setRadiiDp(16.0f);
                                        this.loadingDrawable.draw(canvas);
                                    } else {
                                        LoadingDrawable loadingDrawable2 = this.loadingDrawable;
                                        if (loadingDrawable2 != null) {
                                            loadingDrawable2.setBounds(this.giftButtonRect);
                                            this.loadingDrawable.setRadiiDp(16.0f);
                                            this.loadingDrawable.disappear();
                                            this.loadingDrawable.draw(canvas);
                                            if (this.loadingDrawable.isDisappeared()) {
                                                this.loadingDrawable.reset();
                                            }
                                        }
                                    }
                                    canvas.restore();
                                    if (this.backgroundRect != null && this.giftRibbonPath != null && this.giftRibbonText != null) {
                                        Paint themedPaint = getThemedPaint("paintChatActionBackground");
                                        Paint themedPaint2 = getThemedPaint("paintChatActionBackgroundDarken");
                                        float fDp11 = (this.backgroundRect.right - AndroidUtilities.dp(65.0f)) + AndroidUtilities.dp(2.0f);
                                        float fDp12 = this.backgroundRect.top - AndroidUtilities.dp(2.0f);
                                        Theme.ResourcesProvider resourcesProvider2 = this.themeDelegate;
                                        if (resourcesProvider2 != null) {
                                            resourcesProvider2.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX + fDp11, this.viewTop + AndroidUtilities.dp(4.0f) + fDp12);
                                        } else {
                                            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX + fDp11, this.viewTop + AndroidUtilities.dp(4.0f) + fDp12);
                                        }
                                        canvas.save();
                                        canvas.translate(fDp11, fDp12);
                                        ColorFilter colorFilter = themedPaint.getColorFilter();
                                        PathEffect pathEffect = themedPaint.getPathEffect();
                                        Theme.ResourcesProvider resourcesProvider3 = this.themeDelegate;
                                        boolean zIsDark = resourcesProvider3 != null ? resourcesProvider3.isDark() : Theme.isCurrentThemeDark();
                                        if (this.giftRibbonPaintFilter == null || this.giftRibbonPaintFilterDark != zIsDark) {
                                            ColorMatrix colorMatrix = new ColorMatrix();
                                            if ((themedPaint.getColorFilter() instanceof ColorMatrixColorFilter) && Build.VERSION.SDK_INT >= 26) {
                                                ((ColorMatrixColorFilter) themedPaint.getColorFilter()).getColorMatrix(colorMatrix);
                                            }
                                            AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, zIsDark ? 0.1f : -0.08f);
                                            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, zIsDark ? 0.15f : 0.1f);
                                            this.giftRibbonPaintFilter = new ColorMatrixColorFilter(colorMatrix);
                                            this.giftRibbonPaintFilterDark = zIsDark;
                                        }
                                        themedPaint.setColorFilter(this.giftRibbonPaintFilter);
                                        themedPaint.setPathEffect(this.giftRibbonPaintEffect);
                                        canvas.drawPath(this.giftRibbonPath, themedPaint);
                                        themedPaint.setColorFilter(colorFilter);
                                        themedPaint.setPathEffect(pathEffect);
                                        if (hasGradientService()) {
                                            PathEffect pathEffect2 = themedPaint2.getPathEffect();
                                            themedPaint2.setPathEffect(this.giftRibbonPaintEffect);
                                            canvas.drawPath(this.giftRibbonPath, themedPaint2);
                                            themedPaint2.setPathEffect(pathEffect2);
                                        }
                                        canvas.rotate(45.0f, AndroidUtilities.dp(40.43f), AndroidUtilities.dp(24.56f));
                                        this.giftRibbonText.draw(canvas, AndroidUtilities.dp(40.43f) - (this.giftRibbonText.getCurrentWidth() / 2.0f), AndroidUtilities.dp(26.0f), -1, 1.0f);
                                        canvas.restore();
                                    }
                                }
                            } else {
                                f3 = f14;
                                f5 = 1.0f;
                                f4 = BitmapDescriptorFactory.HUE_RED;
                                canvas.restore();
                                if (this.giftPremiumTitleLayout == null) {
                                }
                                textLayout = this.giftPremiumText;
                                if (textLayout != null) {
                                }
                                staticLayout = this.giftPremiumButtonLayout;
                                if (staticLayout != null) {
                                }
                                getHeight();
                                AndroidUtilities.dp(8.0f);
                                resourcesProvider = this.themeDelegate;
                                if (resourcesProvider == null) {
                                }
                                float scale2 = this.bounce.getScale(0.02f);
                                canvas.save();
                                canvas.scale(scale2, scale2, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                                if (this.giftPremiumButtonLayout != null) {
                                }
                                z = messageObject.settingAvatar;
                                if (!z) {
                                }
                            }
                        } else {
                            f3 = f14;
                            i2 = 4;
                        }
                        if (this.settingWallpaperLayout == null) {
                            TextPaint textPaint5 = new TextPaint();
                            this.settingWallpaperPaint = textPaint5;
                            textPaint5.setTextSize(AndroidUtilities.dp(13.0f));
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(R.string.ActionSettingWallpaper));
                            int iIndexOf = spannableStringBuilder.toString().indexOf("...");
                            if (iIndexOf < 0) {
                                iIndexOf = spannableStringBuilder.toString().indexOf("…");
                                i4 = 1;
                            } else {
                                i4 = 3;
                            }
                            if (iIndexOf >= 0) {
                                SpannableString spannableString = new SpannableString("…");
                                UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
                                uploadingDotsSpannable.fixTop = true;
                                uploadingDotsSpannable.setParent(this, false);
                                spannableString.setSpan(uploadingDotsSpannable, 0, spannableString.length(), 33);
                                spannableStringBuilder.replace(iIndexOf, i4 + iIndexOf, (CharSequence) spannableString);
                            }
                            TextPaint textPaint6 = this.settingWallpaperPaint;
                            TextLayout textLayout4 = this.giftPremiumText;
                            this.settingWallpaperLayout = new StaticLayout(spannableStringBuilder, textPaint6, textLayout4 == null ? 1 : textLayout4.width, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        }
                        float uploadingInfoProgress2 = getUploadingInfoProgress(messageObject);
                        if (this.settingWallpaperProgressTextLayout == null || this.settingWallpaperProgress != uploadingInfoProgress2) {
                            this.settingWallpaperProgress = uploadingInfoProgress2;
                            String str = ((int) (uploadingInfoProgress2 * 100.0f)) + "%";
                            TextPaint textPaint7 = this.giftTextPaint;
                            TextLayout textLayout5 = this.giftPremiumText;
                            this.settingWallpaperProgressTextLayout = new StaticLayout(str, textPaint7, textLayout5 == null ? 1 : textLayout5.width, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        }
                        this.settingWallpaperPaint.setColor(this.giftTextPaint.getColor());
                        if (this.radialProgress.getIcon() == i2) {
                            float transitionProgress = this.radialProgress.getTransitionProgress();
                            int color2 = this.giftTextPaint.getColor();
                            float f20 = 1.0f - transitionProgress;
                            this.settingWallpaperPaint.setAlpha((int) (Color.alpha(color2) * f20));
                            this.giftTextPaint.setAlpha((int) (Color.alpha(color2) * transitionProgress));
                            TextPaint textPaint8 = this.giftTextPaint;
                            textPaint8.linkColor = textPaint8.getColor();
                            if (this.giftPremiumText != null) {
                                float f21 = (transitionProgress * 0.2f) + 0.8f;
                                canvas.save();
                                canvas.scale(f21, f21, this.giftRectSize / 2.0f, this.giftPremiumText.layout.getHeight() / 2.0f);
                                canvas.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                                float f22 = f3;
                                this.giftPremiumText.x = ((this.giftRectSize - r0.layout.getWidth()) / 2.0f) + f22;
                                this.giftPremiumText.y = fDp10;
                                int color3 = this.giftTextPaint.getColor();
                                TextLayout textLayout6 = this.giftPremiumText;
                                f2 = f22;
                                i3 = color2;
                                SpoilerEffect.renderWithRipple(this, false, color3, 0, textLayout6.patchedLayout, 1, textLayout6.layout, textLayout6.spoilers, canvas, false);
                                TextLayout textLayout7 = this.giftPremiumText;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout7.layout, textLayout7.emoji, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                canvas.restore();
                            } else {
                                i3 = color2;
                                f2 = f3;
                            }
                            this.giftTextPaint.setAlpha((int) (Color.alpha(i3) * f20));
                            TextPaint textPaint9 = this.giftTextPaint;
                            textPaint9.linkColor = textPaint9.getColor();
                            float f23 = (f20 * 0.2f) + 0.8f;
                            canvas.save();
                            canvas.scale(f23, f23, this.giftRectSize / 2.0f, this.settingWallpaperLayout.getHeight() / 2.0f);
                            canvas.translate((this.giftRectSize - this.settingWallpaperLayout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                            SpoilerEffect.layoutDrawMaybe(this.settingWallpaperLayout, canvas);
                            canvas.restore();
                            canvas.save();
                            canvas.translate(BitmapDescriptorFactory.HUE_RED, this.settingWallpaperLayout.getHeight() + AndroidUtilities.dp(4.0f));
                            canvas.scale(f23, f23, this.giftRectSize / 2.0f, this.settingWallpaperProgressTextLayout.getHeight() / 2.0f);
                            canvas.translate((this.giftRectSize - this.settingWallpaperProgressTextLayout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                            SpoilerEffect.layoutDrawMaybe(this.settingWallpaperProgressTextLayout, canvas);
                            canvas.restore();
                            int i9 = i3;
                            this.giftTextPaint.setColor(i9);
                            this.giftTextPaint.linkColor = i9;
                        } else {
                            canvas.save();
                            canvas.translate((this.giftRectSize - this.settingWallpaperLayout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                            this.settingWallpaperLayout.draw(canvas);
                            canvas.restore();
                            canvas.save();
                            canvas.translate((this.giftRectSize - this.settingWallpaperProgressTextLayout.getWidth()) / 2.0f, this.settingWallpaperLayout.getHeight() + AndroidUtilities.dp(4.0f));
                            SpoilerEffect.layoutDrawMaybe(this.settingWallpaperProgressTextLayout, canvas);
                            canvas.restore();
                            f5 = 1.0f;
                            f4 = BitmapDescriptorFactory.HUE_RED;
                            canvas.restore();
                            if (this.giftPremiumTitleLayout == null) {
                            }
                            textLayout = this.giftPremiumText;
                            if (textLayout != null) {
                            }
                            staticLayout = this.giftPremiumButtonLayout;
                            if (staticLayout != null) {
                            }
                            getHeight();
                            AndroidUtilities.dp(8.0f);
                            resourcesProvider = this.themeDelegate;
                            if (resourcesProvider == null) {
                            }
                            float scale22 = this.bounce.getScale(0.02f);
                            canvas.save();
                            canvas.scale(scale22, scale22, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                            if (this.giftPremiumButtonLayout != null) {
                            }
                            z = messageObject.settingAvatar;
                            if (!z) {
                            }
                        }
                    } else {
                        f2 = f14;
                        TextLayout textLayout8 = this.giftPremiumText;
                        if (textLayout8 != null) {
                            float height2 = textLayout8.layout.getHeight();
                            if (f8 < 1.0f) {
                                height2 = AndroidUtilities.lerp(this.giftPremiumTextCollapsedHeight, height2, f8);
                                RectF rectF3 = AndroidUtilities.rectTmp;
                                rectF3.set(BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.dp(20.0f), getWidth(), height2);
                                canvas.saveLayerAlpha(rectF3, 255, 31);
                            } else {
                                canvas.save();
                            }
                            float f24 = height2;
                            canvas.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumText.layout.getWidth()) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                            this.giftPremiumText.x = f2 + (((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumText.layout.getWidth()) / 2.0f);
                            TextLayout textLayout9 = this.giftPremiumText;
                            textLayout9.y = fDp10;
                            int color4 = textLayout9.paint.getColor();
                            TextLayout textLayout10 = this.giftPremiumText;
                            AtomicReference atomicReference = textLayout10.patchedLayout;
                            StaticLayout staticLayout5 = textLayout10.layout;
                            List list2 = textLayout10.spoilers;
                            f3 = f2;
                            f4 = BitmapDescriptorFactory.HUE_RED;
                            SpoilerEffect.renderWithRipple(this, false, color4, 0, atomicReference, 1, staticLayout5, list2, canvas, false);
                            TextLayout textLayout11 = this.giftPremiumText;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout11.layout, textLayout11.emoji, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                            f5 = 1.0f;
                            if (f8 < 1.0f && this.giftPremiumTextMore != null) {
                                canvas.save();
                                if (this.giftPremiumTextClip == null) {
                                    this.giftPremiumTextClip = new GradientClip();
                                }
                                canvas.translate((-((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumText.layout.getWidth())) / 2.0f, BitmapDescriptorFactory.HUE_RED);
                                RectF rectF4 = AndroidUtilities.rectTmp;
                                rectF4.set((this.giftPremiumTextMoreX - this.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.dp(8.0f), (this.giftPremiumTextMoreY - this.giftPremiumTextMoreH) - AndroidUtilities.dp(6.0f), this.giftPremiumTextMoreX + AndroidUtilities.dp(6.0f), this.giftPremiumTextMoreY);
                                float f25 = 1.0f - f8;
                                this.giftPremiumTextClip.clipOut(canvas, rectF4, f25);
                                rectF4.set((this.giftPremiumTextMoreX - this.giftPremiumTextMore.getCurrentWidth()) - AndroidUtilities.dp(f), (this.giftPremiumTextMoreY - this.giftPremiumTextMoreH) - AndroidUtilities.dp(6.0f), (this.giftPremiumTextMoreX - this.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.dp(8.0f), this.giftPremiumTextMoreY);
                                this.giftPremiumTextClip.draw(canvas, rectF4, 2, f25);
                                rectF4.set(BitmapDescriptorFactory.HUE_RED, f24 - AndroidUtilities.dp(12.0f), getWidth(), f24);
                                this.giftPremiumTextClip.draw(canvas, rectF4, 3, f25 * 4.0f * (1.0f - f25));
                                canvas.restore();
                            }
                            canvas.restore();
                            if (f8 < 1.0f && (text = this.giftPremiumTextMore) != null) {
                                text.draw(canvas, AndroidUtilities.dp(5.0f) + (this.giftPremiumTextMoreX - text.getCurrentWidth()), (this.giftPremiumTextMoreY - (this.giftPremiumTextMoreH / 2.0f)) - AndroidUtilities.dp(1.0f), this.giftPremiumText.paint.getColor(), 1.0f - f8);
                            }
                            canvas.restore();
                            if (this.giftPremiumTitleLayout == null) {
                            }
                            textLayout = this.giftPremiumText;
                            if (textLayout != null) {
                            }
                            staticLayout = this.giftPremiumButtonLayout;
                            if (staticLayout != null) {
                            }
                            getHeight();
                            AndroidUtilities.dp(8.0f);
                            resourcesProvider = this.themeDelegate;
                            if (resourcesProvider == null) {
                            }
                            float scale222 = this.bounce.getScale(0.02f);
                            canvas.save();
                            canvas.scale(scale222, scale222, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                            if (this.giftPremiumButtonLayout != null) {
                            }
                            z = messageObject.settingAvatar;
                            if (!z) {
                            }
                        }
                    }
                    f3 = f2;
                    f5 = 1.0f;
                    f4 = BitmapDescriptorFactory.HUE_RED;
                    canvas.restore();
                    if (this.giftPremiumTitleLayout == null) {
                    }
                    textLayout = this.giftPremiumText;
                    if (textLayout != null) {
                    }
                    staticLayout = this.giftPremiumButtonLayout;
                    if (staticLayout != null) {
                    }
                    getHeight();
                    AndroidUtilities.dp(8.0f);
                    resourcesProvider = this.themeDelegate;
                    if (resourcesProvider == null) {
                    }
                    float scale2222 = this.bounce.getScale(0.02f);
                    canvas.save();
                    canvas.scale(scale2222, scale2222, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
                    if (this.giftPremiumButtonLayout != null) {
                    }
                    z = messageObject.settingAvatar;
                    if (!z) {
                    }
                }
            }
            fDp += iDp;
            canvas.translate(f14, fDp);
            if (this.giftPremiumTitleLayout == null) {
            }
            fDp3 = fDp2;
            canvas.restore();
            if (this.giftPremiumTitleLayout != null) {
                float width22 = text2.getWidth() + AndroidUtilities.dp(12.0f);
                float fDp82 = (((this.giftRectSize - AndroidUtilities.dp(f)) - width22) / 2.0f) + f14;
                float fDp92 = AndroidUtilities.dp(14.0f) + fDp + this.giftPremiumTitleLayout.getHeight();
                if (this.giftReleasedBackgroundPaint == null) {
                }
                this.giftReleasedBackgroundPaint.setColor(!Theme.isCurrentThemeDark() ? 285212671 : 268435456);
                RectF rectF22 = AndroidUtilities.rectTmp;
                rectF22.set(fDp82, fDp92 - AndroidUtilities.dp(8.0f), width22 + fDp82, AndroidUtilities.dp(8.0f) + fDp92);
                canvas.drawRoundRect(rectF22, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.giftReleasedBackgroundPaint);
                this.giftPremiumReleasedText.draw(canvas, fDp82 + AndroidUtilities.dp(6.0f), fDp92, -855638017, 1.0f);
                fDp3 += AndroidUtilities.dp(24.0f);
            }
            float fDp102 = fDp3 + AndroidUtilities.dp(4.0f);
            if (messageObject.type == 18) {
            }
            canvas.save();
            canvas.translate(f14, fDp102);
            if (messageObject.type != i) {
            }
            f3 = f2;
            f5 = 1.0f;
            f4 = BitmapDescriptorFactory.HUE_RED;
            canvas.restore();
            if (this.giftPremiumTitleLayout == null) {
            }
            textLayout = this.giftPremiumText;
            if (textLayout != null) {
            }
            staticLayout = this.giftPremiumButtonLayout;
            if (staticLayout != null) {
            }
            getHeight();
            AndroidUtilities.dp(8.0f);
            resourcesProvider = this.themeDelegate;
            if (resourcesProvider == null) {
            }
            float scale22222 = this.bounce.getScale(0.02f);
            canvas.save();
            canvas.scale(scale22222, scale22222, this.giftButtonRect.centerX(), this.giftButtonRect.centerY());
            if (this.giftPremiumButtonLayout != null) {
            }
            z = messageObject.settingAvatar;
            if (!z) {
            }
        }
        drawReactions(canvas, false, null);
        this.transitionParams.recordDrawingState();
        canvas.restore();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        MessageObject messageObject = this.currentMessageObject;
        if (TextUtils.isEmpty(this.customText) && messageObject == null) {
            return;
        }
        if (this.accessibilityText == null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(!TextUtils.isEmpty(this.customText) ? this.customText : messageObject.messageText);
            for (final CharacterStyle characterStyle : (CharacterStyle[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ClickableSpan.class)) {
                int spanStart = spannableStringBuilder.getSpanStart(characterStyle);
                int spanEnd = spannableStringBuilder.getSpanEnd(characterStyle);
                spannableStringBuilder.removeSpan(characterStyle);
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Cells.ChatActionCell.1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) throws NumberFormatException {
                        if (ChatActionCell.this.delegate != null) {
                            ChatActionCell.this.openLink(characterStyle);
                        }
                    }
                }, spanStart, spanEnd, 33);
            }
            this.accessibilityText = spannableStringBuilder;
        }
        if (Build.VERSION.SDK_INT < 24) {
            accessibilityNodeInfo.setContentDescription(this.accessibilityText.toString());
        } else {
            accessibilityNodeInfo.setText(this.accessibilityText);
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.rippleView;
        RectF rectF = this.giftButtonRect;
        view.layout((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // org.telegram.ui.Cells.BaseCell
    protected boolean onLongPress() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            return chatActionCellDelegate.didLongPress(this, this.lastTouchX, this.lastTouchY);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x0415 A[PHI: r3 r7 r12
      0x0415: PHI (r3v41 org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble) = 
      (r3v15 org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble)
      (r3v56 org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble)
     binds: [B:155:0x0413, B:45:0x010f] A[DONT_GENERATE, DONT_INLINE]
      0x0415: PHI (r7v9 int) = (r7v3 int), (r7v13 int) binds: [B:155:0x0413, B:45:0x010f] A[DONT_GENERATE, DONT_INLINE]
      0x0415: PHI (r12v6 int) = (r12v5 int), (r12v1 int) binds: [B:155:0x0413, B:45:0x010f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int iDp;
        float fDp;
        float fDp2;
        int i3;
        float f;
        int iDp2;
        int i4;
        TLRPC.Message message;
        int iDp3;
        ReactionsLayoutInBubble reactionsLayoutInBubble;
        int i5;
        int iDp4;
        int i6;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null && this.customText == null) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), this.topicSeparatorTopPadding + this.textHeight + AndroidUtilities.dp(14.0f));
            return;
        }
        if (isButtonLayout(messageObject)) {
            this.giftRectSize = Math.min((int) (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() * 0.6f : (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.dp(34.0f)), ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(64.0f));
            if (!AndroidUtilities.isTablet() && ((i6 = messageObject.type) == 18 || i6 == 30 || isMessageActionSuggestedPostApproval())) {
                this.giftRectSize = (int) (this.giftRectSize * 1.2f);
            }
            this.stickerSize = this.giftRectSize - AndroidUtilities.dp(106.0f);
            if (isNewStyleButtonLayout()) {
                this.imageReceiver.setRoundRadius(this.stickerSize / 2);
            } else {
                this.imageReceiver.setRoundRadius(0);
            }
        }
        int iMax = Math.max(AndroidUtilities.dp(30.0f), View.MeasureSpec.getSize(i));
        if (this.previousWidth != iMax) {
            this.wasLayout = true;
            this.previousWidth = iMax;
            buildLayout();
        }
        if (messageObject == null) {
            iDp = 0;
        } else {
            if (messageObject.type == 11) {
                i5 = AndroidUtilities.roundMessageSize;
                iDp4 = AndroidUtilities.dp(10.0f);
            } else {
                if (isButtonLayout(messageObject)) {
                    i5 = this.giftRectSize;
                    iDp4 = AndroidUtilities.dp(12.0f);
                }
                iDp = 0;
            }
            iDp = i5 + iDp4;
        }
        if (this.starGiftLayout.has()) {
            iDp = (this.starGiftLayout.repost ? 0 : this.textY + this.textHeight + AndroidUtilities.dp(16.0f)) + ((int) this.starGiftLayout.getHeight()) + AndroidUtilities.dp(8.0f);
            reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble.isEmpty) {
                reactionsLayoutInBubble.totalHeight = reactionsLayoutInBubble.height + AndroidUtilities.dp(8.0f);
                iDp += this.reactionsLayoutInBubble.totalHeight;
            }
        } else if (isButtonLayout(messageObject)) {
            boolean zIsGiftChannel = isGiftChannel(messageObject);
            int imageSize = getImageSize(messageObject);
            boolean zIsNewStyleButtonLayout = isNewStyleButtonLayout();
            int i7 = this.textY + this.textHeight;
            if (zIsNewStyleButtonLayout) {
                int iDp5 = i7 + AndroidUtilities.dp(4.0f);
                int iDp6 = AndroidUtilities.dp(16.0f);
                if (imageSize > 0) {
                    iDp6 = (iDp6 * 2) + imageSize;
                }
                int i8 = iDp5 + iDp6;
                TextLayout textLayout = this.giftPremiumText;
                fDp = i8 + (textLayout == null ? 0 : textLayout.layout.getHeight() + AndroidUtilities.dp(4.0f));
            } else {
                fDp = i7 + (this.giftRectSize * 0.075f) + imageSize + AndroidUtilities.dp(4.0f) + (this.giftPremiumText == null ? 0 : r5.layout.getHeight() + AndroidUtilities.dp(4.0f));
            }
            this.giftPremiumAdditionalHeight = 0;
            StaticLayout staticLayout = this.giftPremiumTitleLayout;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (staticLayout != null) {
                float height = fDp + staticLayout.getHeight();
                if (this.giftPremiumTitleLayout.getLineCount() > 1) {
                    this.giftPremiumAdditionalHeight += this.giftPremiumTitleLayout.getHeight() - this.giftPremiumTitleLayout.getLineTop(1);
                }
                fDp2 = height + AndroidUtilities.dp(zIsGiftChannel ? 6.0f : BitmapDescriptorFactory.HUE_RED);
                if (this.giftPremiumSubtitleLayout != null) {
                    fDp2 += r3.getHeight() + AndroidUtilities.dp(9.0f);
                }
                if (this.giftPremiumReleasedText != null) {
                    fDp2 += AndroidUtilities.dp(24.0f);
                }
            } else {
                fDp2 = fDp - AndroidUtilities.dp(12.0f);
                this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(30.0f);
            }
            TextLayout textLayout2 = this.giftPremiumText;
            int height2 = textLayout2 == null ? 0 : textLayout2.layout.getHeight();
            if (this.giftPremiumText == null) {
                this.giftPremiumAdditionalHeight = 0;
            } else {
                if (this.giftPremiumSubtitleLayout != null) {
                    i3 = this.giftPremiumAdditionalHeight;
                    iDp2 = AndroidUtilities.dp(10.0f) + height2;
                } else {
                    MessageObject messageObject2 = this.currentMessageObject;
                    if (messageObject2.type == 18 || messageObject2.isStarGiftAction()) {
                        i3 = this.giftPremiumAdditionalHeight;
                        f = this.giftPremiumButtonLayout == null ? BitmapDescriptorFactory.HUE_RED : 10.0f;
                    } else if (this.currentMessageObject.type == 30) {
                        i3 = this.giftPremiumAdditionalHeight;
                        f = 20.0f;
                    } else if (this.giftPremiumTextCollapsed) {
                        i4 = this.giftPremiumAdditionalHeight + height2;
                        this.giftPremiumAdditionalHeight = i4;
                    } else if (this.giftPremiumText.layout.getLineCount() > 2) {
                        i3 = this.giftPremiumAdditionalHeight;
                        iDp2 = ((this.giftPremiumText.layout.getLineBottom(0) - this.giftPremiumText.layout.getLineTop(0)) * this.giftPremiumText.layout.getLineCount()) - 2;
                    }
                    iDp2 = height2 - AndroidUtilities.dp(f);
                }
                i4 = i3 + iDp2;
                this.giftPremiumAdditionalHeight = i4;
            }
            if (this.giftPremiumReleasedText != null) {
                this.giftPremiumAdditionalHeight += AndroidUtilities.dp(24.0f);
            }
            int i9 = this.giftPremiumAdditionalHeight;
            if (zIsGiftChannel) {
                f2 = 14.0f;
            }
            int iDp7 = i9 - AndroidUtilities.dp(f2);
            this.giftPremiumAdditionalHeight = iDp7;
            iDp += iDp7;
            int iDp8 = this.textHeight + iDp + AndroidUtilities.dp(14.0f);
            if (this.giftPremiumButtonLayout != null) {
                float height3 = fDp2 + ((((iDp8 - fDp2) - r9.getHeight()) - AndroidUtilities.dp(8.0f)) / 2.0f);
                if (this.currentMessageObject.isStarGiftAction()) {
                    height3 += AndroidUtilities.dp(4.0f);
                }
                float f3 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                this.giftButtonRect.set(f3 - AndroidUtilities.dp(18.0f), height3 - AndroidUtilities.dp(8.0f), f3 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), height3 + (this.giftPremiumButtonLayout != null ? r11.getHeight() : 0) + AndroidUtilities.dp(8.0f));
            } else {
                iDp -= AndroidUtilities.dp(40.0f);
                this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(40.0f);
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3 != null && (message = messageObject3.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGift)) {
                    iDp -= AndroidUtilities.dp(8.0f);
                    this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(8.0f);
                }
            }
            int measuredWidth = getMeasuredWidth() << (getMeasuredHeight() + 16);
            this.starParticlesDrawable.rect.set(this.giftButtonRect);
            this.starParticlesDrawable.rect2.set(this.giftButtonRect);
            if (this.starsSize != measuredWidth) {
                this.starsSize = measuredWidth;
                this.starParticlesDrawable.resetPositions();
            }
            if (isNewStyleButtonLayout()) {
                int iDp9 = this.textY + this.textHeight + AndroidUtilities.dp(4.0f);
                this.backgroundRectHeight = 0;
                int iDp10 = AndroidUtilities.dp(16.0f);
                if (imageSize > 0) {
                    iDp10 = (iDp10 * 2) + imageSize;
                }
                this.backgroundRectHeight = iDp10;
                StaticLayout staticLayout2 = this.giftPremiumSubtitleLayout;
                if (staticLayout2 != null) {
                    this.backgroundRectHeight = iDp10 + staticLayout2.getHeight() + AndroidUtilities.dp(10.0f);
                }
                if (this.giftPremiumReleasedText != null) {
                    this.backgroundRectHeight += AndroidUtilities.dp(24.0f);
                }
                int i10 = this.backgroundRectHeight + height2;
                this.backgroundRectHeight = i10;
                float f4 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                if (this.giftPremiumButtonLayout != null) {
                    this.backgroundButtonTop = i10 + iDp9 + AndroidUtilities.dp(10.0f);
                    this.giftButtonRect.set(f4 - AndroidUtilities.dp(18.0f), this.backgroundButtonTop, f4 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), this.backgroundButtonTop + this.giftPremiumButtonLayout.getHeight() + (AndroidUtilities.dp(8.0f) * 2));
                    iDp3 = (int) (this.backgroundRectHeight + AndroidUtilities.dp(10.0f) + this.giftButtonRect.height());
                } else {
                    if (!isMessageActionSuggestedPostApproval()) {
                        this.giftButtonRect.set(f4 - AndroidUtilities.dp(18.0f), this.backgroundButtonTop, f4 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), this.backgroundButtonTop + AndroidUtilities.dp(17.0f) + (AndroidUtilities.dp(8.0f) * 2));
                        iDp3 = this.backgroundRectHeight + AndroidUtilities.dp(17.0f);
                    }
                    int iDp11 = this.backgroundRectHeight + AndroidUtilities.dp(16.0f);
                    this.backgroundRectHeight = iDp11;
                    iDp = iDp9 + iDp11 + AndroidUtilities.dp(6.0f);
                    reactionsLayoutInBubble = this.reactionsLayoutInBubble;
                    if (!reactionsLayoutInBubble.isEmpty) {
                    }
                }
                this.backgroundRectHeight = iDp3;
                int iDp112 = this.backgroundRectHeight + AndroidUtilities.dp(16.0f);
                this.backgroundRectHeight = iDp112;
                iDp = iDp9 + iDp112 + AndroidUtilities.dp(6.0f);
                reactionsLayoutInBubble = this.reactionsLayoutInBubble;
                if (!reactionsLayoutInBubble.isEmpty) {
                }
            }
        }
        if (this.currentMessageObject != null) {
            ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble2.isEmpty) {
                reactionsLayoutInBubble2.totalHeight = reactionsLayoutInBubble2.height + AndroidUtilities.dp(8.0f);
                iDp += this.reactionsLayoutInBubble.totalHeight;
            }
        }
        if (isMessageActionSuggestedPostApproval()) {
            iDp += this.titleHeight + AndroidUtilities.dp(24.0f);
        }
        setMeasuredDimension(iMax, (messageObject == null || !isNewStyleButtonLayout()) ? this.topicSeparatorTopPadding + this.textHeight + iDp + AndroidUtilities.dp(14.0f) : this.topicSeparatorTopPadding + iDp);
        this.reactionsLayoutInBubble.y = (getMeasuredHeight() - getPaddingTop()) - this.reactionsLayoutInBubble.totalHeight;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        TLRPC.PhotoSize photoSize;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.type != 11) {
            return;
        }
        int size = messageObject.photoThumbs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                photoSize = null;
                break;
            }
            photoSize = messageObject.photoThumbs.get(i);
            if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                break;
            } else {
                i++;
            }
        }
        this.imageReceiver.setImage(this.currentVideoLocation, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(photoSize, messageObject.photoThumbsObject), "50_50_b", this.avatarDrawable, 0L, null, messageObject, 1);
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0468 A[PHI: r5
      0x0468: PHI (r5v13 boolean) = (r5v12 boolean), (r5v14 boolean), (r5v14 boolean), (r5v14 boolean), (r5v12 boolean), (r5v12 boolean) binds: [B:201:0x0348, B:257:0x0465, B:242:0x0419, B:255:0x045f, B:209:0x035c, B:207:0x0356] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) throws NumberFormatException {
        ImageUpdater imageUpdater;
        TextLayout textLayout;
        boolean z;
        TextLayout textLayout2;
        TLRPC.Message message;
        boolean z2;
        StaticLayout staticLayout;
        List list;
        boolean z3;
        TLRPC.Message message2;
        int i;
        boolean z4 = true;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return super.onTouchEvent(motionEvent);
        }
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null && topicSeparator.onTouchEvent(motionEvent, false)) {
            return true;
        }
        if ((this.starGiftLayout.has() && this.starGiftLayout.onTouchEvent(this.starGiftLayoutX, this.starGiftLayoutY, motionEvent)) || this.reactionsLayoutInBubble.checkTouchEvent(motionEvent)) {
            return true;
        }
        float x = motionEvent.getX() - (this.sideMenuWidth / 2.0f);
        this.lastTouchX = x;
        float y = motionEvent.getY() + getPaddingTop();
        this.lastTouchY = y;
        if (motionEvent.getAction() != 0) {
            if (motionEvent.getAction() != 2) {
                cancelCheckLongPress();
            }
            if (this.textPressed) {
                int action = motionEvent.getAction();
                if (action == 1) {
                    View view = this.rippleView;
                    this.textPressed = false;
                    view.setPressed(false);
                    this.bounce.setPressed(false);
                    if (this.delegate != null && messageObject.replyMessageObject != null && (message = messageObject.messageOwner) != null && TlUtils.isInstance(message.action, TLRPC.TL_messageActionTodoAppendTasks.class, TLRPC.TL_messageActionTodoCompletions.class, TLRPC.TL_messageActionSuggestedPostApproval.class, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
                        this.delegate.didPressReplyMessage(this, this.currentMessageObject.getReplyMsgId());
                    } else if (this.giftPremiumTextCollapsed && !this.giftPremiumTextUncollapsed && (textLayout2 = this.giftPremiumText) != null) {
                        int height = textLayout2.layout.getHeight() - this.giftPremiumTextCollapsedHeight;
                        this.giftPremiumTextUncollapsed = true;
                        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
                        if (chatActionCellDelegate != null) {
                            chatActionCellDelegate.forceUpdate(this, false);
                            if (getParent() instanceof RecyclerListView) {
                                ((RecyclerListView) getParent()).smoothScrollBy(0, height + AndroidUtilities.dp(24.0f));
                            }
                        }
                        return true;
                    }
                } else if (action == 2) {
                    TextLayout textLayout3 = this.giftPremiumText;
                    if (textLayout3 != null && this.giftPremiumTextCollapsed) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f = textLayout3.x;
                        rectF.set(f, textLayout3.y, textLayout3.layout.getWidth() + f, this.giftPremiumText.y + r10.layout.getHeight());
                        if (!rectF.contains(x, y)) {
                        }
                    }
                    this.textPressed = false;
                    z2 = true;
                } else if (action == 3) {
                    z = false;
                    this.textPressed = false;
                    this.bounce.setPressed(z);
                }
                z2 = false;
            } else if (this.giftButtonPressed) {
                int action2 = motionEvent.getAction();
                if (action2 == 1) {
                    this.imagePressed = false;
                    View view2 = this.rippleView;
                    this.giftButtonPressed = false;
                    view2.setPressed(false);
                    this.bounce.setPressed(false);
                    if (this.delegate != null) {
                        int i2 = messageObject.type;
                        if (i2 == 25) {
                            playSoundEffect(0);
                            openPremiumGiftChannel();
                        } else if (i2 == 18) {
                            playSoundEffect(0);
                            openPremiumGiftPreview();
                        } else if (i2 == 30) {
                            playSoundEffect(0);
                            openStarsGiftTransaction();
                        } else {
                            TLRPC.Message message3 = messageObject.messageOwner;
                            if (message3 != null) {
                                TLRPC.MessageAction messageAction = message3.action;
                                if ((messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).balance_too_low) {
                                    playSoundEffect(0);
                                    openStarsNeedSheet();
                                } else if (MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id) == null) {
                                    if (this.buttonClickableAsImage) {
                                        this.delegate.didClickImage(this);
                                    } else {
                                        this.delegate.didClickButton(this);
                                    }
                                }
                            }
                        }
                    }
                } else if (action2 != 2) {
                    if (action2 == 3) {
                        z = false;
                        this.imagePressed = false;
                        View view3 = this.rippleView;
                        this.giftButtonPressed = false;
                        view3.setPressed(false);
                        this.bounce.setPressed(z);
                    }
                } else if (!isButtonLayout(messageObject) || (!this.giftButtonRect.contains(x, y) && !this.backgroundRect.contains(x, y))) {
                    View view4 = this.rippleView;
                    this.giftButtonPressed = false;
                    view4.setPressed(false);
                    this.bounce.setPressed(false);
                }
                z2 = false;
            } else {
                if (this.imagePressed) {
                    int action3 = motionEvent.getAction();
                    if (action3 == 1) {
                        this.imagePressed = false;
                        if (this.giftPremiumTextCollapsed && !this.giftPremiumTextUncollapsed && (textLayout = this.giftPremiumText) != null) {
                            int height2 = textLayout.layout.getHeight() - this.giftPremiumTextCollapsedHeight;
                            this.giftPremiumTextUncollapsed = true;
                            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
                            if (chatActionCellDelegate2 != null) {
                                chatActionCellDelegate2.forceUpdate(this, false);
                                if (getParent() instanceof RecyclerListView) {
                                    ((RecyclerListView) getParent()).smoothScrollBy(0, height2 + AndroidUtilities.dp(16.0f));
                                }
                            }
                            return true;
                        }
                        int i3 = messageObject.type;
                        if (i3 == 25) {
                            openPremiumGiftChannel();
                        } else if (i3 == 18) {
                            openPremiumGiftPreview();
                        } else if (i3 == 30) {
                            openStarsGiftTransaction();
                        } else if (this.delegate != null) {
                            if (i3 != 21 || (imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id)) == null) {
                                this.delegate.didClickImage(this);
                                playSoundEffect(0);
                            } else {
                                imageUpdater.cancel();
                            }
                        }
                    } else if (action3 == 2 ? !(!isNewStyleButtonLayout() ? this.imageReceiver.isInsideImage(x, y) : this.backgroundRect.contains(x, y)) : action3 == 3) {
                        this.imagePressed = false;
                    }
                }
                z2 = false;
            }
        } else if (this.delegate != null) {
            if ((messageObject.type == 11 || isButtonLayout(messageObject)) && this.imageReceiver.isInsideImage(x, y)) {
                this.imagePressed = true;
                z3 = true;
            } else {
                z3 = false;
            }
            if (this.radialProgress.getIcon() == 4 && (((i = messageObject.type) == 21 || i == 22) && this.backgroundRect.contains(x, y))) {
                this.imagePressed = true;
                z3 = true;
            }
            TextLayout textLayout4 = this.giftPremiumText;
            if (textLayout4 != null && this.giftPremiumTextCollapsed) {
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f2 = textLayout4.x;
                rectF2.set(f2, textLayout4.y, textLayout4.layout.getWidth() + f2, this.giftPremiumText.y + r14.layout.getHeight());
                if (rectF2.contains(x, y)) {
                    this.textPressed = true;
                    z3 = true;
                }
            }
            if (isButtonLayout(messageObject) && this.giftPremiumButtonLayout != null && (this.giftButtonRect.contains(x, y) || (this.buttonClickableAsImage && this.backgroundRect.contains(x, y)))) {
                View view5 = this.rippleView;
                this.giftButtonPressed = true;
                view5.setPressed(true);
                this.bounce.setPressed(true);
                z3 = true;
            }
            if (!z3 && isMessageActionSuggestedPostApproval()) {
                this.textPressed = true;
                z3 = true;
            }
            if (!z3) {
                MessageObject messageObject2 = this.currentMessageObject;
                if (TlUtils.isInstance((messageObject2 == null || (message2 = messageObject2.messageOwner) == null) ? null : message2.action, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
                    this.textPressed = true;
                    z3 = true;
                }
            }
            if (z3) {
                startCheckLongPress();
            }
            z2 = z3;
        } else {
            z2 = false;
        }
        if (z2 || (motionEvent.getAction() != 0 && ((this.pressedLink == null && this.spoilerPressed == null) || motionEvent.getAction() != 1))) {
            z4 = z2;
        } else {
            TextLayout textLayout5 = this.giftPremiumText;
            if (textLayout5 != null && (list = textLayout5.spoilers) != null && !list.isEmpty() && !this.isSpoilerRevealing) {
                Iterator it = this.giftPremiumText.spoilers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    SpoilerEffect spoilerEffect = (SpoilerEffect) it.next();
                    Rect bounds = spoilerEffect.getBounds();
                    TextLayout textLayout6 = this.giftPremiumText;
                    if (bounds.contains((int) (x - textLayout6.x), (int) (y - textLayout6.y))) {
                        this.pressedLink = null;
                        if (motionEvent.getAction() == 0) {
                            this.spoilerPressed = spoilerEffect;
                        } else {
                            SpoilerEffect spoilerEffect2 = this.spoilerPressed;
                            if (spoilerEffect == spoilerEffect2) {
                                this.isSpoilerRevealing = true;
                                spoilerEffect2.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onTouchEvent$3();
                                    }
                                });
                                float fSqrt = (float) Math.sqrt(Math.pow(this.giftPremiumText.layout.getWidth(), 2.0d) + Math.pow(this.giftPremiumText.layout.getHeight(), 2.0d));
                                SpoilerEffect spoilerEffect3 = this.spoilerPressed;
                                TextLayout textLayout7 = this.giftPremiumText;
                                spoilerEffect3.startRipple((int) (x - textLayout7.x), (int) (y - textLayout7.y), fSqrt);
                                invalidate();
                            }
                        }
                        z2 = true;
                    }
                }
            }
            if (z2 || (staticLayout = this.textLayout) == null) {
                this.pressedLink = null;
                z4 = z2;
            } else {
                if (x >= this.textX) {
                    float f3 = this.textY;
                    if (y >= f3 && x <= r3 + this.textWidth && y <= r4 + this.textHeight) {
                        float f4 = y - f3;
                        float f5 = x - this.textXLeft;
                        if (!z2) {
                            int lineForVertical = staticLayout.getLineForVertical((int) f4);
                            int offsetForHorizontal = this.textLayout.getOffsetForHorizontal(lineForVertical, f5);
                            float lineLeft = this.textLayout.getLineLeft(lineForVertical);
                            if (lineLeft <= f5 && lineLeft + this.textLayout.getLineWidth(lineForVertical) >= f5) {
                                CharSequence charSequence = messageObject.messageText;
                                if (charSequence instanceof Spannable) {
                                    URLSpan[] uRLSpanArr = (URLSpan[]) ((Spannable) charSequence).getSpans(offsetForHorizontal, offsetForHorizontal, URLSpan.class);
                                    if (uRLSpanArr.length != 0) {
                                        if (motionEvent.getAction() == 0) {
                                            this.pressedLink = uRLSpanArr[0];
                                        } else {
                                            URLSpan uRLSpan = uRLSpanArr[0];
                                            URLSpan uRLSpan2 = this.pressedLink;
                                            if (uRLSpan == uRLSpan2) {
                                                openLink(uRLSpan2);
                                            }
                                        }
                                    }
                                    z4 = z2;
                                }
                            }
                        }
                    }
                }
            }
        }
        return !z4 ? super.onTouchEvent(motionEvent) : z4;
    }

    public void setCustomDate(int i, boolean z, boolean z2) {
        int i2 = this.customDate;
        if (i2 == i || i2 / 3600 == i / 3600) {
            return;
        }
        String string = z ? i == 2147483646 ? LocaleController.getString("MessageScheduledUntilOnline", R.string.MessageScheduledUntilOnline) : LocaleController.formatString("MessageScheduledOn", R.string.MessageScheduledOn, LocaleController.formatDateChat(i)) : LocaleController.formatDateChat(i);
        this.customDate = i;
        CharSequence charSequence = this.customText;
        if (charSequence == null || !TextUtils.equals(string, charSequence)) {
            this.customText = string;
            this.accessibilityText = null;
            updateTextInternal(z2);
        }
    }

    public void setCustomText(CharSequence charSequence) {
        this.customText = charSequence;
        if (charSequence != null) {
            updateTextInternal(false);
        }
    }

    public void setDelegate(ChatActionCellDelegate chatActionCellDelegate) {
        this.delegate = chatActionCellDelegate;
    }

    public void setInvalidateColors(boolean z) {
        if (this.invalidateColors == z) {
            return;
        }
        this.invalidateColors = z;
        invalidate();
    }

    public void setInvalidateListener(Runnable runnable) {
        this.invalidateListener = runnable;
    }

    public void setInvalidateWithParent(View view) {
        this.invalidateWithParent = view;
    }

    public void setInvalidatesParent(boolean z) {
        this.invalidatesParent = z;
    }

    public void setMessageObject(MessageObject messageObject) {
        setMessageObject(messageObject, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x06f3  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x06fe  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x019c  */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r1v64, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r2v148 */
    /* JADX WARN: Type inference failed for: r2v149 */
    /* JADX WARN: Type inference failed for: r2v34, types: [org.telegram.tgnet.TLRPC$messages_StickerSet] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessageObject(MessageObject messageObject, boolean z) {
        TLRPC.TL_messageReactions tL_messageReactions;
        int i;
        String str;
        TLRPC.Document document;
        MessageObject messageObject2;
        TLRPC.Document document2;
        String tonGiftEmoji;
        Object obj;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.VideoSize closestVideoSizeWithSize;
        ImageLocation forObject;
        BitmapDrawable bitmapDrawable;
        String str2;
        int i2;
        ImageReceiver imageReceiver;
        ImageLocation forPhoto;
        String str3;
        String str4;
        long j;
        TLRPC.PhotoSize photoSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        boolean z2;
        ?? r15;
        ImageUpdater imageUpdater;
        float f;
        boolean z3;
        RadialProgress2 radialProgress2;
        int i3;
        TLRPC.WallPaper wallPaper;
        TLRPC.MessageAction messageAction;
        ImageReceiver imageReceiver2;
        ImageLocation forDocument;
        StringBuilder sb;
        String str5;
        TopicSeparator topicSeparator;
        int paddingTop;
        int i4;
        StaticLayout staticLayout;
        if (messageObject == null) {
            return;
        }
        if (this.currentMessageObject != messageObject || (!((staticLayout = this.textLayout) == null || TextUtils.equals(staticLayout.getText(), messageObject.messageText)) || (!(this.hasReplyMessage || messageObject.replyMessageObject == null) || z || messageObject.type == 21 || messageObject.forceUpdate))) {
            if (BuildVars.DEBUG_PRIVATE_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
                FileLog.e(new IllegalStateException("Wrong thread!!!"));
            }
            this.accessibilityText = null;
            MessageObject messageObject3 = this.currentMessageObject;
            boolean z4 = messageObject3 == null || messageObject3.stableId != messageObject.stableId;
            if (messageObject3 != null) {
                messageObject.playedGiftAnimation = messageObject3.playedGiftAnimation;
            }
            this.currentMessageObject = messageObject;
            messageObject.forceUpdate = false;
            this.hasReplyMessage = messageObject.replyMessageObject != null;
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            this.previousWidth = 0;
            this.isSpoilerRevealing = false;
            TextLayout textLayout = this.giftPremiumText;
            if (textLayout != null && z4) {
                textLayout.detach();
                this.giftPremiumText = null;
                this.giftPremiumTextUncollapsed = false;
            }
            if (z4 || messageObject.reactionsChanged) {
                messageObject.reactionsChanged = false;
                TLRPC.Message message = messageObject.messageOwner;
                boolean z5 = (message == null || (tL_messageReactions = message.reactions) == null || !tL_messageReactions.reactions_as_tags) ? false : true;
                if (messageObject.shouldDrawReactions()) {
                    this.reactionsLayoutInBubble.setMessage(messageObject, !messageObject.shouldDrawReactionsInLayout(), z5, this.themeDelegate);
                } else {
                    this.reactionsLayoutInBubble.setMessage(null, false, false, this.themeDelegate);
                }
            }
            boolean z6 = !z4;
            this.starGiftLayout.set(messageObject, z6);
            this.imageReceiver.setAutoRepeatCount(0);
            this.imageReceiver.clearDecorators();
            if (messageObject.type != 22) {
                this.wallpaperPreviewDrawable = null;
            }
            if (messageObject.actionDeleteGroupEventId != -1) {
                ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
                this.overriddenMaxWidth = Math.max(AndroidUtilities.dp(250.0f), HintView2.cutInFancyHalf(messageObject.messageText, (TextPaint) getThemedPaint("paintChatActionText")));
                ProfileActivity.ShowDrawable showDrawableFindDrawable = ChannelAdminLogActivity.findDrawable(messageObject.messageText);
                if (showDrawableFindDrawable != null) {
                    showDrawableFindDrawable.setView(this);
                }
            } else {
                ScaleStateListAnimator.reset(this);
                this.overriddenMaxWidth = 0;
            }
            if (messageObject.isStoryMention()) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                this.avatarDrawable.setInfo(this.currentAccount, user);
                TL_stories$StoryItem tL_stories$StoryItem = messageObject.messageOwner.media.storyItem;
                if (tL_stories$StoryItem == null || !tL_stories$StoryItem.noforwards) {
                    StoriesUtilities.setImage(this.imageReceiver, tL_stories$StoryItem);
                } else {
                    this.imageReceiver.setForUserOrChat(user, this.avatarDrawable, null, true, 0, true);
                }
                this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                i = 0;
            } else {
                int i5 = messageObject.type;
                int i6 = 4;
                if (i5 == 22) {
                    if (messageObject.strippedThumb == null) {
                        int size = messageObject.photoThumbs.size();
                        for (int i7 = 0; i7 < size && !(messageObject.photoThumbs.get(i7) instanceof TLRPC.TL_photoStrippedSize); i7++) {
                        }
                    }
                    TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = messageObject.currentEvent;
                    if (tL_channelAdminLogEvent != null) {
                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                            wallPaper = ((TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction).new_value;
                        } else {
                            TLRPC.Message message2 = messageObject.messageOwner;
                            wallPaper = (message2 == null || (messageAction = message2.action) == null) ? null : messageAction.wallpaper;
                        }
                        if (TextUtils.isEmpty(ChatThemeController.getWallpaperEmoticon(wallPaper))) {
                            if (wallPaper == null || (str5 = wallPaper.uploadingImage) == null) {
                                if (wallPaper != null) {
                                    TLObject tLObject = messageObject.photoThumbsObject;
                                    TLRPC.Document document3 = tLObject instanceof TLRPC.Document ? (TLRPC.Document) tLObject : wallPaper.document;
                                    imageReceiver2 = this.imageReceiver;
                                    forDocument = ImageLocation.getForDocument(document3);
                                    sb = new StringBuilder();
                                }
                                this.wallpaperPreviewDrawable = null;
                            } else {
                                imageReceiver2 = this.imageReceiver;
                                forDocument = ImageLocation.getForPath(str5);
                                sb = new StringBuilder();
                            }
                            sb.append("150_150_wallpaper");
                            sb.append(wallPaper.id);
                            sb.append(ChatBackgroundDrawable.hash(wallPaper.settings));
                            imageReceiver2.setImage(forDocument, sb.toString(), null, null, ChatBackgroundDrawable.createThumb(wallPaper), 0L, null, wallPaper, 1);
                            this.wallpaperPreviewDrawable = null;
                        } else {
                            Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
                            boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
                            this.imageReceiver.clearImage();
                            Drawable backgroundDrawableFromTheme = PreviewView.getBackgroundDrawableFromTheme(this.currentAccount, ChatThemeController.getWallpaperEmoticon(wallPaper), zIsDark, false);
                            this.wallpaperPreviewDrawable = backgroundDrawableFromTheme;
                            if (backgroundDrawableFromTheme != null) {
                                backgroundDrawableFromTheme.setCallback(this);
                            }
                        }
                        this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                        if (getUploadingInfoProgress(messageObject) == 1.0f) {
                            this.radialProgress.setProgress(1.0f, z6);
                            radialProgress2 = this.radialProgress;
                            z3 = z6;
                        } else {
                            radialProgress2 = this.radialProgress;
                            z3 = z6;
                            i6 = 3;
                        }
                        i3 = 0;
                    }
                } else if (i5 == 21) {
                    this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                    this.imageReceiver.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) messageObject.messageOwner.action;
                    TLRPC.VideoSize closestVideoSizeWithSize2 = FileLoader.getClosestVideoSizeWithSize(tL_messageActionSuggestProfilePhoto.photo.video_sizes, 1000);
                    ArrayList arrayList = tL_messageActionSuggestProfilePhoto.photo.video_sizes;
                    ImageLocation forPhoto2 = (arrayList == null || arrayList.isEmpty()) ? null : ImageLocation.getForPhoto(closestVideoSizeWithSize2, tL_messageActionSuggestProfilePhoto.photo);
                    TLRPC.Photo photo = messageObject.messageOwner.action.photo;
                    if (messageObject.strippedThumb == null) {
                        int size2 = messageObject.photoThumbs.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            photoSize2 = messageObject.photoThumbs.get(i8);
                            if (photoSize2 instanceof TLRPC.TL_photoStrippedSize) {
                                break;
                            }
                        }
                        photoSize2 = null;
                        closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 1000);
                        if (closestPhotoSizeWithSize2 != null) {
                            z2 = z6;
                            r15 = 0;
                        } else if (closestVideoSizeWithSize2 != null) {
                            z2 = z6;
                            r15 = 0;
                            this.imageReceiver.setImage(forPhoto2, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize2, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 0);
                        } else {
                            z2 = z6;
                            r15 = 0;
                            this.imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize2, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 0);
                        }
                        this.imageReceiver.setAllowStartLottieAnimation(r15);
                        imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                        if (imageUpdater == null) {
                            f = 1.0f;
                            if (imageUpdater.getCurrentImageProgress() != 1.0f) {
                                radialProgress2 = this.radialProgress;
                                z3 = z2;
                                i6 = 3;
                                i3 = r15;
                            }
                        } else {
                            f = 1.0f;
                        }
                        z3 = z2;
                        this.radialProgress.setProgress(f, z3);
                        radialProgress2 = this.radialProgress;
                        i6 = 4;
                        i3 = r15;
                    } else {
                        photoSize2 = null;
                        closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 1000);
                        if (closestPhotoSizeWithSize2 != null) {
                        }
                        this.imageReceiver.setAllowStartLottieAnimation(r15);
                        imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                        if (imageUpdater == null) {
                        }
                        z3 = z2;
                        this.radialProgress.setProgress(f, z3);
                        radialProgress2 = this.radialProgress;
                        i6 = 4;
                        i3 = r15;
                    }
                } else {
                    i = 0;
                    i = 0;
                    i = 0;
                    i = 0;
                    i = 0;
                    i = 0;
                    if (i5 == 30 || i5 == 18 || i5 == 25) {
                        String str6 = null;
                        this.imageReceiver.setRoundRadius(0);
                        TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                        if (messageAction2 instanceof TLRPC.TL_messageActionStarGift) {
                            TL_stars$StarGift tL_stars$StarGift = ((TLRPC.TL_messageActionStarGift) messageAction2).gift;
                            document = tL_stars$StarGift != null ? tL_stars$StarGift.sticker : null;
                            obj = null;
                            messageObject2 = messageObject;
                            this.forceWasUnread = messageObject.wasUnread;
                            this.giftSticker = document;
                            if (document != null) {
                                this.imageReceiver.setAllowStartLottieAnimation(true);
                                this.imageReceiver.setDelegate(this.giftStickerDelegate);
                                this.giftEffectAnimation = null;
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= document.video_thumbs.size()) {
                                        break;
                                    }
                                    if ("f".equals(document.video_thumbs.get(i9).type)) {
                                        this.giftEffectAnimation = document.video_thumbs.get(i9);
                                        break;
                                    }
                                    i9++;
                                }
                                if (z4 || messageObject.type != 18) {
                                    SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f);
                                    this.imageReceiver.setAutoRepeat(0);
                                    this.imageReceiver.setImage(ImageLocation.getForDocument(document), String.format(Locale.US, "%d_%d_nr_messageId=%d", 160, 160, Integer.valueOf(messageObject.stableId)), svgThumb, "tgs", messageObject2, 1);
                                }
                            } else if (str6 != null) {
                                MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(str6, false, obj == null);
                            }
                        } else {
                            if (messageAction2 instanceof TLRPC.TL_messageActionStarGiftUnique) {
                                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction2;
                                if (tL_messageActionStarGiftUnique.refunded) {
                                    TL_stars$StarGift tL_stars$StarGift2 = tL_messageActionStarGiftUnique.gift;
                                    if (tL_stars$StarGift2 != null) {
                                        document = tL_stars$StarGift2.getDocument();
                                    }
                                    obj = null;
                                    messageObject2 = messageObject;
                                    this.forceWasUnread = messageObject.wasUnread;
                                    this.giftSticker = document;
                                    if (document != null) {
                                    }
                                }
                            }
                            if (messageAction2 instanceof TLRPC.TL_messageActionGiftTon) {
                                str = UserConfig.getInstance(this.currentAccount).premiumTonStickerPack;
                                if (str == null) {
                                    MediaDataController.getInstance(this.currentAccount).checkTonGiftStickers();
                                    return;
                                }
                            } else {
                                str = UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack;
                                if (str == null) {
                                    MediaDataController.getInstance(this.currentAccount).checkPremiumGiftStickers();
                                    return;
                                }
                            }
                            String str7 = str;
                            TLRPC.TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str7);
                            ?? stickerSetByEmojiOrName = stickerSetByName;
                            if (stickerSetByName == null) {
                                stickerSetByEmojiOrName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str7);
                            }
                            if (stickerSetByEmojiOrName != 0) {
                                TLRPC.MessageAction messageAction3 = messageObject.messageOwner.action;
                                int i10 = messageAction3.months;
                                if (messageObject.type != 30) {
                                    String str8 = (String) monthsToEmoticon.get(Integer.valueOf(i10));
                                    Iterator it = stickerSetByEmojiOrName.packs.iterator();
                                    document2 = null;
                                    while (it.hasNext()) {
                                        TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) it.next();
                                        if (Objects.equals(tL_stickerPack.emoticon, str8)) {
                                            Iterator it2 = tL_stickerPack.documents.iterator();
                                            while (it2.hasNext()) {
                                                long jLongValue = ((Long) it2.next()).longValue();
                                                Iterator it3 = stickerSetByEmojiOrName.documents.iterator();
                                                while (true) {
                                                    if (!it3.hasNext()) {
                                                        break;
                                                    }
                                                    TLRPC.Document document4 = (TLRPC.Document) it3.next();
                                                    if (document4.id == jLongValue) {
                                                        document2 = document4;
                                                        break;
                                                    }
                                                }
                                                if (document2 != null) {
                                                    break;
                                                }
                                            }
                                        }
                                        if (document2 != null) {
                                            break;
                                        }
                                    }
                                } else {
                                    if (messageAction3 instanceof TLRPC.TL_messageActionGiftTon) {
                                        tonGiftEmoji = StarsIntroActivity.getTonGiftEmoji(messageAction3.cryptoAmount);
                                    } else {
                                        long j2 = messageAction3 instanceof TLRPC.TL_messageActionGiftStars ? ((TLRPC.TL_messageActionGiftStars) messageAction3).stars : ((TLRPC.TL_messageActionPrizeStars) messageAction3).stars;
                                        tonGiftEmoji = j2 <= 1000 ? "2⃣" : j2 < 2500 ? "3⃣" : "4⃣";
                                    }
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 >= stickerSetByEmojiOrName.packs.size()) {
                                            break;
                                        }
                                        TLRPC.TL_stickerPack tL_stickerPack2 = (TLRPC.TL_stickerPack) stickerSetByEmojiOrName.packs.get(i11);
                                        if (TextUtils.equals(tL_stickerPack2.emoticon, tonGiftEmoji) && !tL_stickerPack2.documents.isEmpty()) {
                                            long jLongValue2 = ((Long) tL_stickerPack2.documents.get(0)).longValue();
                                            for (int i12 = 0; i12 < stickerSetByEmojiOrName.documents.size(); i12++) {
                                                TLRPC.Document document5 = (TLRPC.Document) stickerSetByEmojiOrName.documents.get(i12);
                                                if (document5 != null && document5.id == jLongValue2) {
                                                    document2 = document5;
                                                    break;
                                                }
                                            }
                                        } else {
                                            i11++;
                                        }
                                    }
                                    document2 = null;
                                }
                                if (document2 != null || stickerSetByEmojiOrName.documents.isEmpty()) {
                                    messageObject2 = stickerSetByEmojiOrName;
                                    str6 = str7;
                                    document = document2;
                                    obj = stickerSetByEmojiOrName;
                                } else {
                                    messageObject2 = stickerSetByEmojiOrName;
                                    str6 = str7;
                                    document = (TLRPC.Document) stickerSetByEmojiOrName.documents.get(0);
                                    obj = stickerSetByEmojiOrName;
                                }
                            } else {
                                str6 = str7;
                                document = null;
                                messageObject2 = null;
                                obj = stickerSetByEmojiOrName;
                            }
                            this.forceWasUnread = messageObject.wasUnread;
                            this.giftSticker = document;
                            if (document != null) {
                            }
                        }
                    } else if (i5 == 11) {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        this.imageReceiver.setDelegate(null);
                        this.imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
                        this.imageReceiver.setAutoRepeatCount(1);
                        this.avatarDrawable.setInfo(messageObject.getDialogId(), null, null);
                        if (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                            this.imageReceiver.setImage(null, null, this.avatarDrawable, null, messageObject, 0);
                        } else if (messageObject.strippedThumb == null) {
                            int size3 = messageObject.photoThumbs.size();
                            for (int i13 = 0; i13 < size3; i13++) {
                                photoSize = messageObject.photoThumbs.get(i13);
                                if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                                    break;
                                }
                            }
                            photoSize = null;
                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 640);
                            if (closestPhotoSizeWithSize == null) {
                                TLRPC.Photo photo2 = messageObject.messageOwner.action.photo;
                                if (photo2.video_sizes.isEmpty() || !SharedConfig.isAutoplayGifs()) {
                                    closestVideoSizeWithSize = null;
                                    if (closestVideoSizeWithSize == null) {
                                        imageReceiver = this.imageReceiver;
                                        forPhoto = ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2);
                                        forObject = ImageLocation.getForObject(photoSize, messageObject.photoThumbsObject);
                                        bitmapDrawable = messageObject.strippedThumb;
                                        str2 = null;
                                        i2 = 1;
                                        str3 = ImageLoader.AUTOPLAY_FILTER;
                                        str4 = "50_50_b";
                                        j = 0;
                                    } else {
                                        ImageReceiver imageReceiver3 = this.imageReceiver;
                                        ImageLocation forObject2 = ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject);
                                        forObject = ImageLocation.getForObject(photoSize, messageObject.photoThumbsObject);
                                        bitmapDrawable = messageObject.strippedThumb;
                                        str2 = null;
                                        i2 = 1;
                                        imageReceiver = imageReceiver3;
                                        forPhoto = forObject2;
                                        str3 = "150_150";
                                        str4 = "50_50_b";
                                        j = 0;
                                    }
                                    imageReceiver.setImage(forPhoto, str3, forObject, str4, bitmapDrawable, j, str2, messageObject, i2);
                                } else {
                                    closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(photo2.video_sizes, 1000);
                                    if (!messageObject.mediaExists && !DownloadController.getInstance(this.currentAccount).canDownloadMedia(4, closestVideoSizeWithSize.size)) {
                                        this.currentVideoLocation = ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2);
                                        DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(closestVideoSizeWithSize), messageObject, this);
                                        closestVideoSizeWithSize = null;
                                    }
                                    if (closestVideoSizeWithSize == null) {
                                    }
                                    imageReceiver.setImage(forPhoto, str3, forObject, str4, bitmapDrawable, j, str2, messageObject, i2);
                                }
                            } else {
                                this.imageReceiver.setImageBitmap(this.avatarDrawable);
                            }
                        } else {
                            photoSize = null;
                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 640);
                            if (closestPhotoSizeWithSize == null) {
                            }
                        }
                        this.imageReceiver.setVisible(!PhotoViewer.isShowingImage(messageObject), false);
                    } else {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        this.imageReceiver.setDelegate(null);
                        this.imageReceiver.setImageBitmap((Bitmap) null);
                    }
                }
                radialProgress2.setIcon(i6, z3, z3);
                i = i3;
            }
            if (!this.firstInChat || !this.isAllChats || !this.isSideMenued || (!this.isForum && !this.isMonoForum)) {
                topicSeparator = this.topicSeparator;
                if (topicSeparator != null) {
                }
                this.topicSeparatorTopPadding = i;
                paddingTop = getPaddingTop();
                i4 = this.topicSeparatorTopPadding;
                if (paddingTop != i4) {
                    setPadding(i, i4, i, i);
                }
                this.rippleView.setVisibility((!isButtonLayout(messageObject) || this.starGiftLayout.has()) ? 8 : 0);
                ForumUtilities.applyTopicToMessage(messageObject);
                requestLayout();
            }
            this.topicSeparatorTopPadding = AndroidUtilities.dp(33.0f);
            if (this.topicSeparator == null) {
                TopicSeparator topicSeparator2 = new TopicSeparator(this.currentAccount, this, this.themeDelegate, true);
                this.topicSeparator = topicSeparator2;
                topicSeparator2.setOnClickListener(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setMessageObject$1();
                    }
                });
            }
            if (this.topicSeparator.update(this.currentMessageObject)) {
                if (this.attachedToWindow) {
                    this.topicSeparator.attach();
                }
                paddingTop = getPaddingTop();
                i4 = this.topicSeparatorTopPadding;
                if (paddingTop != i4) {
                }
                this.rippleView.setVisibility((!isButtonLayout(messageObject) || this.starGiftLayout.has()) ? 8 : 0);
                ForumUtilities.applyTopicToMessage(messageObject);
                requestLayout();
            }
            topicSeparator = this.topicSeparator;
            topicSeparator.detach();
            this.topicSeparator = null;
            this.topicSeparatorTopPadding = i;
            paddingTop = getPaddingTop();
            i4 = this.topicSeparatorTopPadding;
            if (paddingTop != i4) {
            }
            this.rippleView.setVisibility((!isButtonLayout(messageObject) || this.starGiftLayout.has()) ? 8 : 0);
            ForumUtilities.applyTopicToMessage(messageObject);
            requestLayout();
        }
    }

    public void setOverrideColor(int i, int i2) {
        this.overrideBackground = i;
        this.overrideText = i2;
    }

    public void setOverrideTextMaxWidth(int i) {
        this.overriddenMaxWidth = i;
    }

    public void setScrimReaction(Integer num) {
        this.reactionsLayoutInBubble.setScrimReaction(num);
    }

    public void setShowTopic(boolean z) {
        if (this.showTopicSeparator != z) {
            this.showTopicSeparator = z;
            invalidateOutbounds();
            invalidate();
        }
    }

    public void setSpoilersSuppressed(boolean z) {
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            ((SpoilerEffect) it.next()).setSuppressUpdates(z);
        }
    }

    public void setVisiblePart(float f, float f2, int i, float f3) {
        this.visiblePartSet = true;
        this.backgroundHeight = i;
        this.viewTop = f;
        this.viewTranslationX = f2;
        this.dimAmount = f3;
        this.dimPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (f3 * 255.0f)));
        invalidate();
    }

    public void setVisiblePart(float f, int i) {
        this.visiblePartSet = true;
        this.backgroundHeight = i;
        this.viewTop = f;
        this.viewTranslationX = BitmapDescriptorFactory.HUE_RED;
    }

    public boolean showingCancelButton() {
        RadialProgress2 radialProgress2 = this.radialProgress;
        return radialProgress2 != null && radialProgress2.getIcon() == 3;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.wallpaperPreviewDrawable || super.verifyDrawable(drawable);
    }
}
