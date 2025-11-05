package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.os.BuildCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessageSuggestionParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SharedPrefsHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.camera.CameraController;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$TL_businessChatLink;
import org.telegram.tgnet.tl.TL_bots$BotInfo;
import org.telegram.tgnet.tl.TL_bots$BotMenuButton;
import org.telegram.tgnet.tl.TL_bots$TL_botMenuButton;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.BusinessLinksController;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ChatActivityEnterView;
import org.telegram.ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.MessagePreviewView;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.Premium.boosts.BoostRepository;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SenderSelectPopup;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.StickersAlert;
import org.telegram.ui.Components.SuggestEmojiView;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.VideoTimelineView;
import org.telegram.ui.ContentPreviewViewer;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.GroupStickersActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.MessageSendPreview;
import org.telegram.ui.MultiContactsSelectorBottomSheet;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.StickersActivity;
import org.telegram.ui.Stories.recorder.CaptionContainerView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.TopicsFragment;
import org.telegram.ui.bots.BotCommandsMenuContainer;
import org.telegram.ui.bots.BotCommandsMenuView;
import org.telegram.ui.bots.BotKeyboardView;
import org.telegram.ui.bots.BotWebViewSheet;
import org.telegram.ui.bots.ChatActivityBotWebViewButton;
import org.telegram.ui.bots.WebViewRequestProps;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ChatActivityEnterView extends BlurredFrameLayout implements NotificationCenter.NotificationCenterDelegate, SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate, StickersAlert.StickersAlertDelegate, SuggestEmojiView.AnchorViewDelegate {
    private final Property ATTACH_LAYOUT_ALPHA;
    private final Property ATTACH_LAYOUT_TRANSLATION_X;
    private final Property EMOJI_BUTTON_ALPHA;
    private final Property EMOJI_BUTTON_SCALE;
    private final Property MESSAGE_TEXT_TRANSLATION_X;
    private AccountInstance accountInstance;
    private ActionBarMenuSubItem actionScheduleButton;
    private AdjustPanLayoutHelper adjustPanLayoutHelper;
    private boolean allowAnimatedEmoji;
    public boolean allowBlur;
    private boolean allowGifs;
    private boolean allowShowTopView;
    private boolean allowStickers;
    protected int animatedTop;
    private int animatingContentType;
    private Runnable animationEndRunnable;
    private HashMap animationParamsX;
    private ImageView attachButton;
    private LinearLayout attachLayout;
    private float attachLayoutAlpha;
    private float attachLayoutPaddingAlpha;
    protected float attachLayoutPaddingTranslationX;
    private float attachLayoutTranslationX;
    protected RecordedAudioPlayerView audioTimelineView;
    private TLRPC.TL_document audioToSend;
    private MessageObject audioToSendMessageObject;
    private String audioToSendPath;
    private FrameLayout audioVideoButtonContainer;
    private ChatActivityEnterViewAnimatedIconView audioVideoSendButton;
    Paint backgroundPaint;
    public HintView2 birthdayHint;
    private android.graphics.Rect blurBounds;
    private ImageView botButton;
    private ReplaceableIconDrawable botButtonDrawable;
    private MessageObject botButtonsMessageObject;
    int botCommandLastPosition;
    int botCommandLastTop;
    private BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter;
    private BotCommandsMenuView botCommandsMenuButton;
    public BotCommandsMenuContainer botCommandsMenuContainer;
    private int botCount;
    private BotKeyboardView botKeyboardView;
    private boolean botKeyboardViewVisible;
    private BotMenuButtonType botMenuButtonType;
    private String botMenuWebViewTitle;
    private String botMenuWebViewUrl;
    private MessageObject botMessageObject;
    private TLRPC.TL_replyKeyboardMarkup botReplyMarkup;
    private ChatActivityBotWebViewButton botWebViewButton;
    private final AnimatedFloat bottomGradientAlpha;
    private boolean calledRecordRunnable;
    private Drawable cameraDrawable;
    private Drawable cameraOutline;
    private boolean canWriteToChannel;
    private ImageView cancelBotButton;
    private boolean canceledByGesture;
    private boolean captionAbove;
    private boolean captionLimitBulletinShown;
    private NumberTextView captionLimitView;
    private float chatSearchExpandOffset;
    private boolean clearBotButtonsOnKeyboardOpen;
    private final LinearGradient clipGradient;
    private final Matrix clipMatrix;
    private boolean closeAnimationInProgress;
    private int codePointCount;
    private int commonInputType;
    private float composeShadowAlpha;
    private float controlsScale;
    public ControlsView controlsView;
    boolean ctrlPressed;
    private int currentAccount;
    private int currentLimit;
    private int currentPopupContentType;
    public ValueAnimator currentTopViewAnimation;
    private ChatActivityEnterViewDelegate delegate;
    private boolean destroyed;
    private long dialog_id;
    private final Runnable dismissSendPreview;
    private boolean dismissSendPreviewSent;
    private float distCanMove;
    private SendButton doneButton;
    private AnimatorSet doneButtonAnimation;
    boolean doneButtonEnabled;
    private float doneButtonEnabledProgress;
    private Drawable doneCheckDrawable;
    private Paint dotPaint;
    private CharSequence draftMessage;
    private boolean draftSearchWebpage;
    private TL_account$TL_businessChatLink editingBusinessLink;
    private boolean editingCaption;
    private MessageObject editingMessageObject;
    private long effectId;
    private ChatActivityEnterViewAnimatedIconView emojiButton;
    float emojiButtonAlpha;
    float emojiButtonPaddingAlpha;
    float emojiButtonPaddingScale;
    private boolean emojiButtonRestricted;
    float emojiButtonScale;
    private int emojiPadding;
    private boolean emojiTabOpen;
    private EmojiView emojiView;
    private boolean emojiViewFrozen;
    private boolean emojiViewVisible;
    private float exitTransition;
    private ImageView expandStickersButton;
    private Runnable focusRunnable;
    private boolean forceShowSendButton;
    private ImageView giftButton;
    private final Paint gradientPaint;
    private boolean hasBotCommands;
    private boolean hasQuickReplies;
    private boolean hasRecordVideo;
    private Runnable hideKeyboardRunnable;
    private float horizontalPadding;
    float idleProgress;
    private boolean ignoreTextChange;
    private TLRPC.ChatFull info;
    private int innerTextChange;
    private final boolean isChat;
    private boolean isInVideoMode;
    private boolean isInitLineCount;
    private boolean isPaste;
    private boolean isPaused;
    public boolean isStories;
    private int keyboardHeight;
    private int keyboardHeightLand;
    private boolean keyboardVisible;
    private int lastAttachVisible;
    private LongSparseArray lastBotInfo;
    private int lastRecordState;
    private BusinessLinkPresetMessage lastSavedBusinessLinkMessage;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private long lastTypingTimeSend;
    private int lineCount;
    private int[] location;
    private float lockAnimatedTranslation;
    private Drawable lockShadowDrawable;
    private View.AccessibilityDelegate mediaMessageButtonsDelegate;
    protected EditTextCaption messageEditText;
    protected FrameLayout messageEditTextContainer;
    private boolean messageEditTextEnabled;
    private ArrayList messageEditTextWatchers;
    public MessageSendPreview messageSendPreview;
    private float messageTextPaddingTranslationX;
    private float messageTextTranslationX;
    boolean messageTransitionIsRunning;
    private TLRPC.WebPage messageWebPage;
    private boolean messageWebPageSearch;
    private Drawable micDrawable;
    private Drawable micOutline;
    private long millisecondsRecorded;
    private Runnable moveToSendStateRunnable;
    private boolean needShowTopView;
    private AnimationNotificationsLocker notificationsLocker;
    private ImageView notifyButton;
    private CrossOutDrawable notifySilentDrawable;
    private Runnable onEmojiSearchClosed;
    private Runnable onFinishInitCameraRunnable;
    private Runnable onKeyboardClosed;
    public boolean onceVisible;
    private Runnable openKeyboardRunnable;
    private int originalViewHeight;
    private CharSequence overrideHint;
    private CharSequence overrideHint2;
    private boolean overrideKeyboardAnimation;
    private long paidMessagesPrice;
    private Paint paint;
    private AnimatorSet panelAnimation;
    private Activity parentActivity;
    private ChatActivity parentFragment;
    private RectF pauseRect;
    private TLRPC.KeyboardButton pendingLocationButton;
    private MessageObject pendingMessageObject;
    private int popupX;
    private int popupY;
    private boolean premiumEmojiBulletin;
    public boolean preventInput;
    private CloseProgressDrawable2 progressDrawable;
    private ImageView reactionsButton;
    private Runnable recordAudioVideoRunnable;
    private boolean recordAudioVideoRunnableStarted;
    private RecordCircle recordCircle;
    private Property recordCircleScale;
    private Property recordControlsCircleScale;
    private RLottieImageView recordDeleteImageView;
    private RecordDot recordDot;
    private int recordInterfaceState;
    private boolean recordIsCanceled;
    private FrameLayout recordPanel;
    private AnimatorSet recordPannelAnimation;
    private LinearLayout recordTimeContainer;
    private TimerView recordTimerView;
    protected FrameLayout recordedAudioPanel;
    private boolean recordingAudioVideo;
    public int recordingGuid;
    private android.graphics.Rect rect;
    private Paint redDotPaint;
    private boolean removeEmojiViewAfterAnimation;
    private MessageObject replyingMessageObject;
    private ChatActivity.ReplyQuote replyingQuote;
    private MessageObject replyingTopMessage;
    private final Theme.ResourcesProvider resourcesProvider;
    private Property roundedTranslationYProperty;
    private Runnable runEmojiPanelAnimation;
    private AnimatorSet runningAnimation;
    private AnimatorSet runningAnimation2;
    private AnimatorSet runningAnimationAudio;
    private int runningAnimationType;
    private float scale;
    private boolean scheduleButtonHidden;
    private ImageView scheduledButton;
    private AnimatorSet scheduledButtonAnimation;
    private ValueAnimator searchAnimator;
    private float searchToOpenProgress;
    private int searchingType;
    private SendButton sendButton;
    private int sendButtonBackgroundColor;
    private FrameLayout sendButtonContainer;
    private boolean sendButtonEnabled;
    private boolean sendButtonVisible;
    private boolean sendByEnter;
    private Drawable sendDrawable;
    public boolean sendPlainEnabled;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private android.graphics.Rect sendRect;
    private boolean sendRoundEnabled;
    private HintView2 sendSuggestHintView;
    private boolean sendVoiceEnabled;
    private ActionBarMenuSubItem sendWhenOnlineButton;
    private SenderSelectPopup senderSelectPopupWindow;
    private SenderSelectView senderSelectView;
    private long sentFromPreview;
    private Runnable setTextFieldRunnable;
    boolean shiftPressed;
    protected boolean shouldAnimateEditTextWithBounds;
    public boolean shouldDrawBackground;
    public boolean shouldDrawRecordedAudioPanelInParent;
    private boolean showKeyboardOnResume;
    private boolean showTooltip;
    private long showTooltipStartTime;
    private Runnable showTopViewRunnable;
    private boolean silent;
    private SizeNotifierFrameLayout sizeNotifierLayout;
    private int slideDelta;
    private SlideTextView slideText;
    private float slideToCancelLockProgress;
    private float slideToCancelProgress;
    private SlowModeBtn slowModeButton;
    private int slowModeTimer;
    private boolean smoothKeyboard;
    private float snapAnimationProgress;
    private final ColoredImageSpan[] spans;
    private float startTranslation;
    private float startedDraggingX;
    private AnimatedArrowDrawable stickersArrow;
    private boolean stickersDragging;
    private boolean stickersEnabled;
    private boolean stickersExpanded;
    private int stickersExpandedHeight;
    private Animator stickersExpansionAnim;
    private float stickersExpansionProgress;
    private boolean stickersTabOpen;
    private ImageView suggestButton;
    private FrameLayout textFieldContainer;
    boolean textTransitionIsRunning;
    private float tooltipAlpha;
    private final AnimatedFloat topGradientAlpha;
    protected View topLineView;
    protected View topView;
    protected float topViewEnterProgress;
    protected boolean topViewShowed;
    private final ValueAnimator.AnimatorUpdateListener topViewUpdateListener;
    private float transformToSeekbar;
    private TrendingStickersAlert trendingStickersAlert;
    private Runnable updateExpandabilityRunnable;
    private Runnable updateSlowModeRunnable;
    private TLRPC.UserFull userInfo;
    protected VideoTimelineView videoTimelineView;
    private VideoEditedInfo videoToSendMessageObject;
    public boolean voiceOnce;
    private boolean waitingForKeyboardOpen;
    private boolean waitingForKeyboardOpenAfterAnimation;
    private PowerManager.WakeLock wakeLock;
    private boolean wasSendTyping;

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$16, reason: invalid class name */
    class AnonymousClass16 extends FrameLayout {
        AnonymousClass16(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$drawChild$0(Canvas canvas, View view, long j) {
            return Boolean.valueOf(super.drawChild(canvas, view, j));
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(final Canvas canvas, final View view, final long j) {
            if (view != null) {
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (view == chatActivityEnterView.messageEditText) {
                    return chatActivityEnterView.drawMessageEditText(canvas, new Utilities.Callback0Return() { // from class: org.telegram.ui.Components.ChatActivityEnterView$16$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback0Return
                        public final Object run() {
                            return this.f$0.lambda$drawChild$0(canvas, view, j);
                        }
                    });
                }
            }
            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
            if (chatActivityEnterView2.shouldDrawRecordedAudioPanelInParent && view == chatActivityEnterView2.recordedAudioPanel) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (ChatActivityEnterView.this.scheduledButton != null) {
                int measuredWidth = (getMeasuredWidth() - AndroidUtilities.dp((ChatActivityEnterView.this.botButton == null || ChatActivityEnterView.this.botButton.getVisibility() != 0) ? 48.0f : 96.0f)) - AndroidUtilities.dp(48.0f);
                ChatActivityEnterView.this.scheduledButton.layout(measuredWidth, ChatActivityEnterView.this.scheduledButton.getTop(), ChatActivityEnterView.this.scheduledButton.getMeasuredWidth() + measuredWidth, ChatActivityEnterView.this.scheduledButton.getBottom());
            }
            if (ChatActivityEnterView.this.animationParamsX.isEmpty()) {
                return;
            }
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                Float f = (Float) ChatActivityEnterView.this.animationParamsX.get(childAt);
                if (f != null) {
                    childAt.setTranslationX(f.floatValue() - childAt.getLeft());
                    childAt.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                }
            }
            ChatActivityEnterView.this.animationParamsX.clear();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$20, reason: invalid class name */
    class AnonymousClass20 extends FrameLayout {
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass20(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.val$resourcesProvider = resourcesProvider;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0(Long l) {
            ChatActivityEnterView.this.sendMessageInternal(true, 0, l.longValue(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$1(boolean z, int i) {
            MediaController.getInstance().stopRecording(1, z, i, false, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$2() {
            MediaController.getInstance().stopRecording(0, false, 0, false, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$3(Long l) {
            ChatActivityEnterView.this.sendMessageInternal(true, 0, l.longValue(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$4() {
            ChatActivityEnterView.this.moveToSendStateRunnable = null;
            ChatActivityEnterView.this.updateRecordInterface(1, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$5(Long l) {
            ChatActivityEnterView.this.sendMessageInternal(true, 0, l.longValue(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$6(Long l) {
            ChatActivityEnterView.this.sendMessageInternal(true, 0, l.longValue(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$7(boolean z, int i) {
            MediaController.getInstance().stopRecording(1, z, i, false, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$8() {
            MediaController.getInstance().stopRecording(0, false, 0, false, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$9() {
            ChatActivityEnterView.this.moveToSendStateRunnable = null;
            ChatActivityEnterView.this.updateRecordInterface(1, true);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            FrameLayout frameLayout;
            ChatActivityEnterView.this.createRecordCircle();
            if (motionEvent.getAction() == 0) {
                if (!ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) {
                    TLRPC.Chat currentChat = ChatActivityEnterView.this.parentFragment == null ? null : ChatActivityEnterView.this.parentFragment.getCurrentChat();
                    TLRPC.UserFull currentUserInfo = ChatActivityEnterView.this.parentFragment == null ? ChatActivityEnterView.this.userInfo : ChatActivityEnterView.this.parentFragment.getCurrentUserInfo();
                    if ((currentChat != null && !ChatObject.canSendVoice(currentChat) && (!ChatObject.canSendRoundVideo(currentChat) || !ChatActivityEnterView.this.hasRecordVideo)) || (currentUserInfo != null && currentUserInfo.voice_messages_forbidden)) {
                        ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                        return true;
                    }
                    if (ChatActivityEnterView.this.hasRecordVideo) {
                        ChatActivityEnterView.this.calledRecordRunnable = false;
                        ChatActivityEnterView.this.recordAudioVideoRunnableStarted = true;
                        AndroidUtilities.runOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable, 150L);
                    } else {
                        ChatActivityEnterView.this.recordAudioVideoRunnable.run();
                    }
                    return true;
                }
                if (!ChatActivityEnterView.this.hasRecordVideo || ChatActivityEnterView.this.calledRecordRunnable) {
                    ChatActivityEnterView.this.startedDraggingX = -1.0f;
                    if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                        if (ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isInScheduleMode()) {
                            AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda1
                                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                                public final void didSelectDate(boolean z, int i) {
                                    ChatActivityEnterView.AnonymousClass20.lambda$onTouchEvent$1(z, i);
                                }
                            }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ChatActivityEnterView.AnonymousClass20.lambda$onTouchEvent$2();
                                }
                            }, this.val$resourcesProvider);
                        }
                        if (AlertsCreator.needsPaidMessageAlert(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id)) {
                            if (ChatActivityEnterView.this.isInVideoMode()) {
                                if (ChatActivityEnterView.this.slideText != null) {
                                    ChatActivityEnterView.this.slideText.setEnabled(false);
                                }
                                ChatActivityEnterView.this.delegate.toggleVideoRecordingPause();
                            } else {
                                if (ChatActivityEnterView.this.sendButtonVisible) {
                                    ChatActivityEnterView.this.calledRecordRunnable = true;
                                }
                                MediaController.getInstance().toggleRecordingPause(ChatActivityEnterView.this.voiceOnce);
                                ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                                if (ChatActivityEnterView.this.slideText != null) {
                                    ChatActivityEnterView.this.slideText.setEnabled(false);
                                }
                            }
                            AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda3
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    this.f$0.lambda$onTouchEvent$3((Long) obj);
                                }
                            });
                            return true;
                        }
                        MediaController.getInstance().stopRecording(ChatActivityEnterView.this.isInScheduleMode() ? 3 : 1, true, 0, ChatActivityEnterView.this.voiceOnce, 0L);
                        ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                    } else {
                        if (AlertsCreator.needsPaidMessageAlert(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id)) {
                            if (ChatActivityEnterView.this.slideText != null) {
                                ChatActivityEnterView.this.slideText.setEnabled(false);
                            }
                            ChatActivityEnterView.this.delegate.toggleVideoRecordingPause();
                            AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda0
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    this.f$0.lambda$onTouchEvent$0((Long) obj);
                                }
                            });
                            return true;
                        }
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = ChatActivityEnterView.this.delegate;
                        ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                        chatActivityEnterViewDelegate.needStartRecordVideo(1, true, 0, chatActivityEnterView.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView.effectId, 0L);
                        ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                    }
                    ChatActivityEnterView.this.recordingAudioVideo = false;
                    ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                    chatActivityEnterView2.messageTransitionIsRunning = false;
                    AndroidUtilities.runOnUIThread(chatActivityEnterView2.moveToSendStateRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onTouchEvent$4();
                        }
                    }, 200L);
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                if (motionEvent.getAction() == 2 && ChatActivityEnterView.this.recordingAudioVideo) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    if (ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) {
                        return false;
                    }
                    if (ChatActivityEnterView.this.recordCircle.setLockTranslation(y) == 2) {
                        ChatActivityEnterView.this.startLockTransition();
                        return false;
                    }
                    ChatActivityEnterView.this.recordCircle.setMovingCords(x, y);
                    if (ChatActivityEnterView.this.startedDraggingX == -1.0f) {
                        ChatActivityEnterView.this.startedDraggingX = x;
                        ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                        double measuredWidth = chatActivityEnterView3.sizeNotifierLayout.getMeasuredWidth();
                        Double.isNaN(measuredWidth);
                        chatActivityEnterView3.distCanMove = (float) (measuredWidth * 0.35d);
                        if (ChatActivityEnterView.this.distCanMove > AndroidUtilities.dp(140.0f)) {
                            ChatActivityEnterView.this.distCanMove = AndroidUtilities.dp(140.0f);
                        }
                    }
                    float x2 = (((x + ChatActivityEnterView.this.audioVideoButtonContainer.getX()) - ChatActivityEnterView.this.startedDraggingX) / ChatActivityEnterView.this.distCanMove) + 1.0f;
                    if (ChatActivityEnterView.this.startedDraggingX != -1.0f) {
                        float f = x2 <= 1.0f ? x2 < BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : x2 : 1.0f;
                        if (ChatActivityEnterView.this.slideText != null) {
                            ChatActivityEnterView.this.slideText.setSlideX(f);
                        }
                        ChatActivityEnterView.this.setSlideToCancelProgress(f);
                        x2 = f;
                    }
                    if (x2 == BitmapDescriptorFactory.HUE_RED) {
                        if (ChatActivityEnterView.this.hasRecordVideo && ChatActivityEnterView.this.isInVideoMode()) {
                            CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = ChatActivityEnterView.this.delegate;
                            ChatActivityEnterView chatActivityEnterView4 = ChatActivityEnterView.this;
                            chatActivityEnterViewDelegate2.needStartRecordVideo(2, true, 0, chatActivityEnterView4.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView4.effectId, 0L);
                            ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                        } else {
                            ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                            MediaController.getInstance().stopRecording(0, false, 0, ChatActivityEnterView.this.voiceOnce, 0L);
                        }
                        ChatActivityEnterView.this.recordingAudioVideo = false;
                        ChatActivityEnterView.this.updateRecordInterface(5, true);
                    }
                }
                return true;
            }
            if (motionEvent.getAction() == 3 && ChatActivityEnterView.this.recordingAudioVideo) {
                if (ChatActivityEnterView.this.slideToCancelProgress < 0.7f) {
                    if (ChatActivityEnterView.this.hasRecordVideo && ChatActivityEnterView.this.isInVideoMode()) {
                        CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = ChatActivityEnterView.this.delegate;
                        ChatActivityEnterView chatActivityEnterView5 = ChatActivityEnterView.this;
                        chatActivityEnterViewDelegate3.needStartRecordVideo(2, true, 0, chatActivityEnterView5.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView5.effectId, 0L);
                        ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                    } else {
                        ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        MediaController.getInstance().stopRecording(0, false, 0, ChatActivityEnterView.this.voiceOnce, 0L);
                    }
                    ChatActivityEnterView.this.millisecondsRecorded = 0L;
                    ChatActivityEnterView.this.recordingAudioVideo = false;
                    ChatActivityEnterView.this.updateRecordInterface(5, true);
                } else {
                    ChatActivityEnterView.this.sendButtonVisible = true;
                    ChatActivityEnterView.this.startLockTransition();
                }
                return false;
            }
            if ((ChatActivityEnterView.this.recordCircle != null && ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) || ((frameLayout = ChatActivityEnterView.this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0)) {
                if (ChatActivityEnterView.this.recordAudioVideoRunnableStarted) {
                    AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable);
                }
                return false;
            }
            if ((((motionEvent.getX() + ChatActivityEnterView.this.audioVideoButtonContainer.getX()) - ChatActivityEnterView.this.startedDraggingX) / ChatActivityEnterView.this.distCanMove) + 1.0f < 0.45d) {
                if (ChatActivityEnterView.this.hasRecordVideo && ChatActivityEnterView.this.isInVideoMode()) {
                    CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate4 = ChatActivityEnterView.this.delegate;
                    ChatActivityEnterView chatActivityEnterView6 = ChatActivityEnterView.this;
                    chatActivityEnterViewDelegate4.needStartRecordVideo(2, true, 0, chatActivityEnterView6.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView6.effectId, 0L);
                    ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                } else {
                    ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                    MediaController.getInstance().stopRecording(0, false, 0, ChatActivityEnterView.this.voiceOnce, 0L);
                }
                ChatActivityEnterView.this.millisecondsRecorded = 0L;
                ChatActivityEnterView.this.recordingAudioVideo = false;
                ChatActivityEnterView.this.updateRecordInterface(5, true);
            } else if (ChatActivityEnterView.this.recordAudioVideoRunnableStarted) {
                AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable);
                if (ChatActivityEnterView.this.sendVoiceEnabled && ChatActivityEnterView.this.sendRoundEnabled) {
                    ChatActivityEnterView.this.delegate.onSwitchRecordMode(!ChatActivityEnterView.this.isInVideoMode());
                    ChatActivityEnterView.this.setRecordVideoButtonVisible(!r1.isInVideoMode(), true);
                } else {
                    ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                }
                performHapticFeedback(3);
                sendAccessibilityEvent(1);
            } else if (!ChatActivityEnterView.this.hasRecordVideo || ChatActivityEnterView.this.calledRecordRunnable) {
                ChatActivityEnterView.this.startedDraggingX = -1.0f;
                if (ChatActivityEnterView.this.hasRecordVideo && ChatActivityEnterView.this.isInVideoMode()) {
                    if (AlertsCreator.needsPaidMessageAlert(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id)) {
                        if (ChatActivityEnterView.this.slideText != null) {
                            ChatActivityEnterView.this.slideText.setEnabled(false);
                        }
                        ChatActivityEnterView.this.delegate.toggleVideoRecordingPause();
                        AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda5
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$onTouchEvent$5((Long) obj);
                            }
                        });
                        return true;
                    }
                    CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate5 = ChatActivityEnterView.this.delegate;
                    ChatActivityEnterView chatActivityEnterView7 = ChatActivityEnterView.this;
                    chatActivityEnterViewDelegate5.needStartRecordVideo(1, true, 0, chatActivityEnterView7.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView7.effectId, 0L);
                    ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                } else if (!ChatActivityEnterView.this.sendVoiceEnabled) {
                    ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                } else {
                    if (AlertsCreator.needsPaidMessageAlert(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id)) {
                        if (ChatActivityEnterView.this.sendButtonVisible) {
                            ChatActivityEnterView.this.calledRecordRunnable = true;
                        }
                        MediaController.getInstance().toggleRecordingPause(ChatActivityEnterView.this.voiceOnce);
                        ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        if (ChatActivityEnterView.this.slideText != null) {
                            ChatActivityEnterView.this.slideText.setEnabled(false);
                        }
                        AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda6
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$onTouchEvent$6((Long) obj);
                            }
                        });
                        return true;
                    }
                    if (ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isInScheduleMode()) {
                        AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda7
                            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                            public final void didSelectDate(boolean z, int i) {
                                ChatActivityEnterView.AnonymousClass20.lambda$onTouchEvent$7(z, i);
                            }
                        }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.AnonymousClass20.lambda$onTouchEvent$8();
                            }
                        }, this.val$resourcesProvider);
                    }
                    ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                    MediaController.getInstance().stopRecording(ChatActivityEnterView.this.isInScheduleMode() ? 3 : 1, true, 0, ChatActivityEnterView.this.voiceOnce, 0L);
                }
                ChatActivityEnterView.this.recordingAudioVideo = false;
                ChatActivityEnterView chatActivityEnterView8 = ChatActivityEnterView.this;
                chatActivityEnterView8.messageTransitionIsRunning = false;
                AndroidUtilities.runOnUIThread(chatActivityEnterView8.moveToSendStateRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTouchEvent$9();
                    }
                }, ChatActivityEnterView.this.shouldDrawBackground ? 500L : 0L);
            }
            return true;
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$23, reason: invalid class name */
    class AnonymousClass23 extends ImageView {
        AnonymousClass23(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            final ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            post(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$23$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.access$9600(chatActivityEnterView);
                }
            });
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$29, reason: invalid class name */
    class AnonymousClass29 implements ViewTreeObserver.OnDrawListener {
        final /* synthetic */ SimpleAvatarView val$avatar;
        final /* synthetic */ SenderSelectPopup.SenderView val$senderView;

        AnonymousClass29(SimpleAvatarView simpleAvatarView, SenderSelectPopup.SenderView senderView) {
            this.val$avatar = simpleAvatarView;
            this.val$senderView = senderView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(SimpleAvatarView simpleAvatarView, SenderSelectPopup.SenderView senderView) {
            simpleAvatarView.getViewTreeObserver().removeOnDrawListener(this);
            senderView.avatar.setHideAvatar(true);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            final SimpleAvatarView simpleAvatarView = this.val$avatar;
            final SenderSelectPopup.SenderView senderView = this.val$senderView;
            simpleAvatarView.post(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$29$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDraw$0(simpleAvatarView, senderView);
                }
            });
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$39, reason: invalid class name */
    class AnonymousClass39 implements RecyclerListView.OnItemClickListener {
        AnonymousClass39() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(String str, boolean z, int i) {
            SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, false, null, null, null, z, i, null, false);
            sendMessageParamsOf.quick_reply_shortcut = ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null;
            sendMessageParamsOf.quick_reply_shortcut_id = ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0;
            sendMessageParamsOf.effect_id = ChatActivityEnterView.this.effectId;
            SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendMessage(sendMessageParamsOf);
            ChatActivityEnterView.this.setFieldText("");
            ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
            ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(String str, Long l) {
            SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, false, null, null, null, true, 0, null, false);
            sendMessageParamsOf.quick_reply_shortcut = ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null;
            sendMessageParamsOf.quick_reply_shortcut_id = ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0;
            sendMessageParamsOf.effect_id = ChatActivityEnterView.this.effectId;
            sendMessageParamsOf.payStars = l.longValue();
            sendMessageParamsOf.monoForumPeer = ChatActivityEnterView.this.getSendMonoForumPeerId();
            sendMessageParamsOf.suggestionParams = ChatActivityEnterView.this.getSendMessageSuggestionParams();
            SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendMessage(sendMessageParamsOf);
            ChatActivityEnterView.this.setFieldText("");
            ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
            ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
        public void onItemClick(View view, int i) {
            if (view instanceof BotCommandsMenuView.BotCommandView) {
                final String command = ((BotCommandsMenuView.BotCommandView) view).getCommand();
                if (TextUtils.isEmpty(command)) {
                    return;
                }
                if (ChatActivityEnterView.this.isInScheduleMode()) {
                    AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.dialog_id, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$39$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i2) {
                            this.f$0.lambda$onItemClick$0(command, z, i2);
                        }
                    }, ChatActivityEnterView.this.resourcesProvider);
                } else if (ChatActivityEnterView.this.parentFragment == null || !ChatActivityEnterView.this.parentFragment.checkSlowMode(view)) {
                    AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$39$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onItemClick$1(command, (Long) obj);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$44, reason: invalid class name */
    class AnonymousClass44 implements TextWatcher {
        boolean heightShouldBeChanged;
        private boolean ignorePrevTextChange;
        private boolean nextChangeIsSend;
        private CharSequence prevText;
        private boolean processChange;

        AnonymousClass44() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$afterTextChanged$0() {
            ChatActivityEnterView.this.showCaptionLimitBulletin();
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x0171  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0180  */
        @Override // android.text.TextWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void afterTextChanged(Editable editable) {
            ChatActivityEnterView chatActivityEnterView;
            BotCommandsMenuContainer botCommandsMenuContainer;
            ChatActivityEnterView chatActivityEnterView2;
            int i;
            if (this.ignorePrevTextChange) {
                return;
            }
            boolean z = false;
            if (this.prevText != null) {
                this.ignorePrevTextChange = true;
                editable.replace(0, editable.length(), this.prevText);
                this.prevText = null;
                this.ignorePrevTextChange = false;
                return;
            }
            if (ChatActivityEnterView.this.innerTextChange == 0) {
                if (this.nextChangeIsSend) {
                    ChatActivityEnterView.this.sendMessage();
                    this.nextChangeIsSend = false;
                }
                if (this.processChange) {
                    for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                        editable.removeSpan(imageSpan);
                    }
                    Emoji.replaceEmoji((CharSequence) editable, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt(), false, (int[]) null);
                    this.processChange = false;
                }
            }
            ChatActivityEnterView.this.codePointCount = Character.codePointCount(editable, 0, editable.length());
            if (ChatActivityEnterView.this.currentLimit > 0 && (i = ChatActivityEnterView.this.currentLimit - ChatActivityEnterView.this.codePointCount) <= 100) {
                if (i < -9999) {
                    i = -9999;
                }
                ChatActivityEnterView.this.createCaptionLimitView();
                ChatActivityEnterView.this.captionLimitView.setNumber(i, ChatActivityEnterView.this.captionLimitView.getVisibility() == 0);
                if (ChatActivityEnterView.this.captionLimitView.getVisibility() != 0) {
                    ChatActivityEnterView.this.captionLimitView.setVisibility(0);
                    ChatActivityEnterView.this.captionLimitView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ChatActivityEnterView.this.captionLimitView.setScaleX(0.5f);
                    ChatActivityEnterView.this.captionLimitView.setScaleY(0.5f);
                }
                ChatActivityEnterView.this.captionLimitView.animate().setListener(null).cancel();
                ChatActivityEnterView.this.captionLimitView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(100L).start();
                if (i < 0) {
                    ChatActivityEnterView.this.captionLimitView.setTextColor(ChatActivityEnterView.this.getThemedColor(Theme.key_text_RedRegular));
                    chatActivityEnterView = ChatActivityEnterView.this;
                    if (chatActivityEnterView.doneButtonEnabled != z && chatActivityEnterView.doneButton != null) {
                        chatActivityEnterView2 = ChatActivityEnterView.this;
                        chatActivityEnterView2.doneButtonEnabled = z;
                        if (chatActivityEnterView2.doneButton != null) {
                            ChatActivityEnterView.this.doneButton.invalidate();
                        }
                    }
                    botCommandsMenuContainer = ChatActivityEnterView.this.botCommandsMenuContainer;
                    if (botCommandsMenuContainer != null) {
                        botCommandsMenuContainer.dismiss();
                    }
                    ChatActivityEnterView.this.checkBotMenu();
                    if (ChatActivityEnterView.this.editingCaption || ChatActivityEnterView.this.captionLimitBulletinShown || MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).premiumFeaturesBlocked() || UserConfig.getInstance(ChatActivityEnterView.this.currentAccount).isPremium() || ChatActivityEnterView.this.codePointCount <= MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).captionLengthLimitDefault || ChatActivityEnterView.this.codePointCount >= MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).captionLengthLimitPremium) {
                        return;
                    }
                    ChatActivityEnterView.this.captionLimitBulletinShown = true;
                    if (this.heightShouldBeChanged) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$44$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$afterTextChanged$0();
                            }
                        }, 300L);
                        return;
                    } else {
                        ChatActivityEnterView.this.showCaptionLimitBulletin();
                        return;
                    }
                }
                ChatActivityEnterView.this.captionLimitView.setTextColor(ChatActivityEnterView.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
            } else if (ChatActivityEnterView.this.captionLimitView != null) {
                ChatActivityEnterView.this.captionLimitView.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.5f).scaleY(0.5f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.44.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.captionLimitView.setVisibility(8);
                    }
                });
            }
            z = true;
            chatActivityEnterView = ChatActivityEnterView.this;
            if (chatActivityEnterView.doneButtonEnabled != z) {
                chatActivityEnterView2 = ChatActivityEnterView.this;
                chatActivityEnterView2.doneButtonEnabled = z;
                if (chatActivityEnterView2.doneButton != null) {
                }
            }
            botCommandsMenuContainer = ChatActivityEnterView.this.botCommandsMenuContainer;
            if (botCommandsMenuContainer != null) {
            }
            ChatActivityEnterView.this.checkBotMenu();
            if (ChatActivityEnterView.this.editingCaption) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!this.ignorePrevTextChange && ChatActivityEnterView.this.recordingAudioVideo) {
                this.prevText = charSequence.toString();
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.ignorePrevTextChange) {
                return;
            }
            boolean z = (ChatActivityEnterView.this.emojiView == null ? MessagesController.getGlobalEmojiSettings().getInt("selected_page", 0) : ChatActivityEnterView.this.emojiView.getCurrentPage()) != 0 && (ChatActivityEnterView.this.allowStickers || ChatActivityEnterView.this.allowGifs);
            if (((i2 == 0 && !TextUtils.isEmpty(charSequence)) || (i2 != 0 && TextUtils.isEmpty(charSequence))) && z) {
                ChatActivityEnterView.this.setEmojiButtonImage(false, true);
            }
            if (ChatActivityEnterView.this.lineCount != ChatActivityEnterView.this.messageEditText.getLineCount()) {
                this.heightShouldBeChanged = (ChatActivityEnterView.this.messageEditText.getLineCount() >= 4) != (ChatActivityEnterView.this.lineCount >= 4);
                if (!ChatActivityEnterView.this.isInitLineCount && ChatActivityEnterView.this.messageEditText.getMeasuredWidth() > 0) {
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.onLineCountChanged(chatActivityEnterView.lineCount, ChatActivityEnterView.this.messageEditText.getLineCount());
                }
                ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                chatActivityEnterView2.lineCount = chatActivityEnterView2.messageEditText.getLineCount();
            } else {
                this.heightShouldBeChanged = false;
            }
            if (ChatActivityEnterView.this.innerTextChange == 1) {
                return;
            }
            if (ChatActivityEnterView.this.sendByEnter) {
                ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                if (!chatActivityEnterView3.ctrlPressed && !chatActivityEnterView3.shiftPressed && !chatActivityEnterView3.ignoreTextChange && !ChatActivityEnterView.this.isPaste && ChatActivityEnterView.this.editingMessageObject == null && i3 > i2 && charSequence.length() > 0 && charSequence.length() == i + i3 && charSequence.charAt(charSequence.length() - 1) == '\n') {
                    this.nextChangeIsSend = true;
                }
            }
            ChatActivityEnterView.this.isPaste = false;
            ChatActivityEnterView.this.checkSendButton(true);
            CharSequence trimmedString = AndroidUtilities.getTrimmedString(charSequence.toString());
            if (ChatActivityEnterView.this.delegate != null && !ChatActivityEnterView.this.ignoreTextChange) {
                int i4 = i3 + 1;
                if (i2 > i4 || i3 - i2 > 2 || TextUtils.isEmpty(charSequence)) {
                    ChatActivityEnterView.this.messageWebPageSearch = true;
                }
                ChatActivityEnterView.this.delegate.onTextChanged(charSequence, i2 > i4 || i3 - i2 > 2, false);
            }
            if (ChatActivityEnterView.this.innerTextChange != 2 && i3 - i2 > 1) {
                this.processChange = true;
            }
            if (ChatActivityEnterView.this.editingMessageObject == null && !ChatActivityEnterView.this.canWriteToChannel && trimmedString.length() != 0 && ChatActivityEnterView.this.lastTypingTimeSend < System.currentTimeMillis() - 5000 && !ChatActivityEnterView.this.ignoreTextChange) {
                ChatActivityEnterView.this.lastTypingTimeSend = System.currentTimeMillis();
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.needSendTyping();
                }
            }
            ChatActivityEnterView.this.updateSendButtonPaid();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$71, reason: invalid class name */
    class AnonymousClass71 implements EmojiView.EmojiViewDelegate {
        AnonymousClass71() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClearEmojiRecent$4(AlertDialog alertDialog, int i) {
            ChatActivityEnterView.this.emojiView.clearRecentEmoji();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCustomEmojiSelected$0(String str, TLRPC.Document document, long j, boolean z) {
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null) {
                return;
            }
            int selectionEnd = editTextCaption.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                try {
                    ChatActivityEnterView.this.innerTextChange = 2;
                    if (str == null) {
                        str = "😀";
                    }
                    SpannableString spannableString = new SpannableString(str);
                    AnimatedEmojiSpan animatedEmojiSpan = document != null ? new AnimatedEmojiSpan(document, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt()) : new AnimatedEmojiSpan(j, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt());
                    if (!z) {
                        animatedEmojiSpan.fromEmojiKeyboard = true;
                    }
                    animatedEmojiSpan.cacheType = AnimatedEmojiDrawable.getCacheTypeForEnterView();
                    spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                    EditTextCaption editTextCaption2 = ChatActivityEnterView.this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText().insert(selectionEnd, spannableString));
                    ChatActivityEnterView.this.messageEditText.setSelection(spannableString.length() + selectionEnd, selectionEnd + spannableString.length());
                } catch (Exception e) {
                    FileLog.e(e);
                }
                ChatActivityEnterView.this.innerTextChange = 0;
            } catch (Throwable th) {
                ChatActivityEnterView.this.innerTextChange = 0;
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGifSelected$2(Object obj, String str, boolean z, int i, Object obj2, Long l) {
            if (ChatActivityEnterView.this.stickersExpanded) {
                if (ChatActivityEnterView.this.searchingType != 0) {
                    ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                }
                ChatActivityEnterView.this.setStickersExpanded(false, true, false);
            }
            TL_stories$StoryItem replyToStory = ChatActivityEnterView.this.delegate != null ? ChatActivityEnterView.this.delegate.getReplyToStory() : null;
            if (obj instanceof TLRPC.Document) {
                TLRPC.Document document = (TLRPC.Document) obj;
                SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendSticker(document, str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), replyToStory, ChatActivityEnterView.this.replyingQuote, null, z, i, false, obj2, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, l.longValue(), ChatActivityEnterView.this.getSendMonoForumPeerId(), ChatActivityEnterView.this.getSendMessageSuggestionParams());
                MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).addRecentGif(document, (int) (System.currentTimeMillis() / 1000), true);
                if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id)) {
                    ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj2, document);
                }
            } else if (obj instanceof TLRPC.BotInlineResult) {
                TLRPC.BotInlineResult botInlineResult = (TLRPC.BotInlineResult) obj;
                if (botInlineResult.document != null) {
                    MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).addRecentGif(botInlineResult.document, (int) (System.currentTimeMillis() / 1000), false);
                    if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id)) {
                        ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj2, botInlineResult.document);
                    }
                }
                HashMap map = new HashMap();
                map.put("id", botInlineResult.id);
                map.put("query_id", "" + botInlineResult.query_id);
                map.put("force_gif", "1");
                if (replyToStory == null) {
                    SendMessagesHelper.prepareSendingBotContextResult(ChatActivityEnterView.this.parentFragment, ChatActivityEnterView.this.accountInstance, botInlineResult, map, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, z, i, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, l.longValue());
                } else {
                    SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendSticker(botInlineResult.document, str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), replyToStory, ChatActivityEnterView.this.replyingQuote, null, z, i, false, obj2, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, l.longValue(), ChatActivityEnterView.this.getSendMonoForumPeerId(), ChatActivityEnterView.this.getSendMessageSuggestionParams());
                }
                if (ChatActivityEnterView.this.searchingType != 0) {
                    ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                    ChatActivityEnterView.this.emojiView.closeSearch(true);
                    ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                }
            }
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onMessageSend(null, z, i, 0L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGifSelected$3(final Object obj, final String str, final boolean z, final int i, final Object obj2, final Long l) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$71$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onGifSelected$2(obj, str, z, i, obj2, l);
                }
            };
            if (ChatActivityEnterView.this.showConfirmAlert(runnable)) {
                return;
            }
            runnable.run();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean canSchedule() {
            return ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.canScheduleMessage();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public long getDialogId() {
            return ChatActivityEnterView.this.dialog_id;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public float getProgressToSearchOpened() {
            return ChatActivityEnterView.this.searchToOpenProgress;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public int getThreadId() {
            return ChatActivityEnterView.this.getThreadMessageId();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void invalidateEnterView() {
            ChatActivityEnterView.this.invalidate();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean isExpanded() {
            return ChatActivityEnterView.this.stickersExpanded;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean isInScheduleMode() {
            return ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.isInScheduleMode();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean isSearchOpened() {
            return ChatActivityEnterView.this.searchingType != 0;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean isUserSelf() {
            return ChatActivityEnterView.this.dialog_id == UserConfig.getInstance(ChatActivityEnterView.this.currentAccount).getClientUserId();
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onAnimatedEmojiUnlockClick() {
            BaseFragment lastFragment = ChatActivityEnterView.this.parentFragment;
            if (lastFragment == null) {
                lastFragment = LaunchActivity.getLastFragment();
            }
            PremiumFeatureBottomSheet premiumFeatureBottomSheet = new PremiumFeatureBottomSheet(lastFragment, 11, false);
            if (lastFragment != null) {
                lastFragment.showDialog(premiumFeatureBottomSheet);
            } else {
                premiumFeatureBottomSheet.show();
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null || editTextCaption.length() == 0) {
                return false;
            }
            ChatActivityEnterView.this.messageEditText.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentActivity == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString(R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString(R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString(R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$71$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onClearEmojiRecent$4(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(R.string.Cancel), null);
            ChatActivityEnterView.this.parentFragment.showDialog(builder.create());
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onCustomEmojiSelected(final long j, final TLRPC.Document document, final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$71$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCustomEmojiSelected$0(str, document, j, z);
                }
            });
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null) {
                return;
            }
            int selectionEnd = editTextCaption.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                try {
                    ChatActivityEnterView.this.innerTextChange = 2;
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji((CharSequence) str, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt(), false, (int[]) null);
                    EditTextCaption editTextCaption2 = ChatActivityEnterView.this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText().insert(selectionEnd, charSequenceReplaceEmoji));
                    int length = selectionEnd + charSequenceReplaceEmoji.length();
                    ChatActivityEnterView.this.messageEditText.setSelection(length, length);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            } finally {
                ChatActivityEnterView.this.innerTextChange = 0;
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSettingsClick(ArrayList arrayList) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.presentFragment(new StickersActivity(5, arrayList));
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        /* renamed from: onGifSelected, reason: merged with bridge method [inline-methods] */
        public void lambda$onGifSelected$1(final View view, final Object obj, final String str, final Object obj2, final boolean z, final int i) {
            if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
                return;
            }
            if (isInScheduleMode() && i == 0) {
                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$71$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z2, int i2) {
                        this.f$0.lambda$onGifSelected$1(view, obj, str, obj2, z2, i2);
                    }
                }, ChatActivityEnterView.this.resourcesProvider);
                return;
            }
            if (ChatActivityEnterView.this.slowModeTimer <= 0 || isInScheduleMode()) {
                AlertsCreator.ensurePaidMessageConfirmation(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$71$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj3) {
                        this.f$0.lambda$onGifSelected$3(obj, str, z, i, obj2, (Long) obj3);
                    }
                });
            } else if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onUpdateSlowModeButton(view != null ? view : ChatActivityEnterView.this.slowModeButton, true, ChatActivityEnterView.this.slowModeButton.getText());
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onSearchOpenClose(int i) {
            ChatActivityEnterView.this.setSearchingTypeInternal(i, true);
            if (i != 0) {
                ChatActivityEnterView.this.setStickersExpanded(true, true, false, i == 1);
            }
            if (ChatActivityEnterView.this.emojiTabOpen && ChatActivityEnterView.this.searchingType == 2) {
                ChatActivityEnterView.this.checkStickresExpandHeight();
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onShowStickerSet(TLRPC.StickerSet stickerSet, TLRPC.InputStickerSet inputStickerSet, boolean z) {
            if (ChatActivityEnterView.this.trendingStickersAlert != null && !ChatActivityEnterView.this.trendingStickersAlert.isDismissed()) {
                ChatActivityEnterView.this.trendingStickersAlert.getLayout().showStickerSet(stickerSet, inputStickerSet);
                return;
            }
            BaseFragment lastFragment = ChatActivityEnterView.this.parentFragment;
            if (lastFragment == null) {
                lastFragment = LaunchActivity.getLastFragment();
            }
            if (lastFragment == null || ChatActivityEnterView.this.parentActivity == null) {
                return;
            }
            if (stickerSet != null) {
                inputStickerSet = new TLRPC.TL_inputStickerSetID();
                inputStickerSet.access_hash = stickerSet.access_hash;
                inputStickerSet.id = stickerSet.id;
            }
            Activity activity = ChatActivityEnterView.this.parentActivity;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            BaseFragment baseFragment = lastFragment;
            StickersAlert stickersAlert = new StickersAlert(activity, baseFragment, inputStickerSet, null, chatActivityEnterView, chatActivityEnterView.resourcesProvider, false);
            lastFragment.showDialog(stickersAlert);
            if (z) {
                stickersAlert.enableEditMode();
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSelected(View view, TLRPC.Document document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i) {
            if (ChatActivityEnterView.this.trendingStickersAlert != null) {
                ChatActivityEnterView.this.trendingStickersAlert.lambda$new$0();
                ChatActivityEnterView.this.trendingStickersAlert = null;
            }
            if (ChatActivityEnterView.this.slowModeTimer > 0 && !isInScheduleMode()) {
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onUpdateSlowModeButton(view != null ? view : ChatActivityEnterView.this.slowModeButton, true, ChatActivityEnterView.this.slowModeButton.getText());
                    return;
                }
                return;
            }
            if (ChatActivityEnterView.this.stickersExpanded) {
                if (ChatActivityEnterView.this.searchingType != 0) {
                    ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                    ChatActivityEnterView.this.emojiView.closeSearch(true, MessageObject.getStickerSetId(document));
                    ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                }
                ChatActivityEnterView.this.setStickersExpanded(false, true, false);
            }
            ChatActivityEnterView.this.lambda$onStickerSelected$74(document, str, obj, sendAnimationData, false, z, i);
            if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id) && MessageObject.isGifDocument(document)) {
                ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj, document);
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSetAdd(TLRPC.StickerSetCovered stickerSetCovered) {
            MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).toggleStickerSet(ChatActivityEnterView.this.parentActivity, stickerSetCovered, 2, ChatActivityEnterView.this.parentFragment, false, false);
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSetRemove(TLRPC.StickerSetCovered stickerSetCovered) {
            MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).toggleStickerSet(ChatActivityEnterView.this.parentActivity, stickerSetCovered, 0, ChatActivityEnterView.this.parentFragment, false, false);
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onStickersGroupClick(long j) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                if (AndroidUtilities.isTablet()) {
                    ChatActivityEnterView.this.hidePopup(false);
                }
                GroupStickersActivity groupStickersActivity = new GroupStickersActivity(j);
                groupStickersActivity.setInfo(ChatActivityEnterView.this.info);
                ChatActivityEnterView.this.parentFragment.presentFragment(groupStickersActivity);
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onStickersSettingsClick() {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.presentFragment(new StickersActivity(0, null));
            }
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void onTabOpened(int i) {
            ChatActivityEnterView.this.delegate.onStickersTab(i == 3);
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            chatActivityEnterView.post(chatActivityEnterView.updateExpandabilityRunnable);
        }

        @Override // org.telegram.ui.Components.EmojiView.EmojiViewDelegate
        public void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout) {
            BaseFragment lastFragment = ChatActivityEnterView.this.parentFragment;
            if (lastFragment == null) {
                lastFragment = LaunchActivity.getLastFragment();
            }
            if (lastFragment != null) {
                ChatActivityEnterView.this.trendingStickersAlert = new TrendingStickersAlert(ChatActivityEnterView.this.getContext(), lastFragment, trendingStickersLayout, ChatActivityEnterView.this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.71.1
                    @Override // org.telegram.ui.Components.TrendingStickersAlert, org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
                    /* renamed from: dismiss */
                    public void lambda$new$0() {
                        super.lambda$new$0();
                        if (ChatActivityEnterView.this.trendingStickersAlert == this) {
                            ChatActivityEnterView.this.trendingStickersAlert = null;
                        }
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onTrendingStickersShowed(false);
                        }
                    }
                };
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onTrendingStickersShowed(true);
                }
                lastFragment.showDialog(ChatActivityEnterView.this.trendingStickersAlert);
            }
        }
    }

    public enum BotMenuButtonType {
        NO_BUTTON,
        COMMANDS,
        WEB_VIEW
    }

    private static class BusinessLinkPresetMessage {
        public ArrayList entities;
        public String text;

        private BusinessLinkPresetMessage() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ChatActivityEditTextCaption extends EditTextCaption {
        CanvasButton canvasButton;

        public ChatActivityEditTextCaption(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        private void editPhoto(final Uri uri, String str) {
            final File fileGeneratePicturePath = AndroidUtilities.generatePicturePath(ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.isSecretChat(), MimeTypeMap.getSingleton().getExtensionFromMimeType(str));
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$editPhoto$5(uri, fileGeneratePicturePath);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$editPhoto$5(Uri uri, final File file) {
            try {
                InputStream inputStreamOpenInputStream = getContext().getContentResolver().openInputStream(uri);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStreamOpenInputStream.read(bArr);
                    if (i <= 0) {
                        inputStreamOpenInputStream.close();
                        fileOutputStream.close();
                        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, -1, 0L, file.getAbsolutePath(), 0, false, 0, 0, 0L);
                        final ArrayList arrayList = new ArrayList();
                        arrayList.add(photoEntry);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() throws Resources.NotFoundException {
                                this.f$0.lambda$editPhoto$4(arrayList, file);
                            }
                        });
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i);
                    fileOutputStream.flush();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateInputConnection$1(final InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
            if (BuildCompat.isAtLeastNMR1() && (i & 1) != 0) {
                try {
                    inputContentInfoCompat.requestPermission();
                } catch (Exception unused) {
                    return false;
                }
            }
            if (!inputContentInfoCompat.getDescription().hasMimeType("image/gif") && !SendMessagesHelper.shouldSendWebPAsSticker(null, inputContentInfoCompat.getContentUri())) {
                editPhoto(inputContentInfoCompat.getContentUri(), inputContentInfoCompat.getDescription().getMimeType(0));
            } else if (ChatActivityEnterView.this.isInScheduleMode()) {
                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i2) {
                        this.f$0.lambda$onCreateInputConnection$0(inputContentInfoCompat, z, i2);
                    }
                }, ChatActivityEnterView.this.resourcesProvider);
            } else {
                lambda$onCreateInputConnection$0(inputContentInfoCompat, true, 0);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$2() {
            ChatActivityEnterView.this.showRestrictedHint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$3() {
            ChatActivityEnterView.this.waitingForKeyboardOpenAfterAnimation = false;
            ChatActivityEnterView.this.openKeyboardInternal();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: openPhotoViewerForEdit, reason: merged with bridge method [inline-methods] */
        public void lambda$editPhoto$4(final ArrayList arrayList, final File file) throws Resources.NotFoundException {
            if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.getParentActivity() == null) {
                return;
            }
            final MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) arrayList.get(0);
            if (ChatActivityEnterView.this.keyboardVisible) {
                AndroidUtilities.hideKeyboard(this);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption.1
                    @Override // java.lang.Runnable
                    public void run() throws Resources.NotFoundException {
                        ChatActivityEditTextCaption.this.lambda$editPhoto$4(arrayList, file);
                    }
                }, 100L);
            } else {
                PhotoViewer.getInstance().setParentActivity(ChatActivityEnterView.this.parentFragment, ChatActivityEnterView.this.resourcesProvider);
                PhotoViewer.getInstance().openPhotoForSelect(arrayList, 0, 2, false, new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption.2
                    boolean sending;

                    @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
                    public boolean canCaptureMorePhotos() {
                        return false;
                    }

                    @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
                    public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2) {
                        String str;
                        if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                            ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
                        MediaController.PhotoEntry photoEntry2 = photoEntry;
                        boolean z3 = photoEntry2.isVideo;
                        if ((!z3 && (str = photoEntry2.imagePath) != null) || (str = photoEntry2.path) != null) {
                            sendingMediaInfo.path = str;
                        }
                        sendingMediaInfo.thumbPath = photoEntry2.thumbPath;
                        sendingMediaInfo.isVideo = z3;
                        CharSequence charSequence = photoEntry2.caption;
                        sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                        MediaController.PhotoEntry photoEntry3 = photoEntry;
                        sendingMediaInfo.entities = photoEntry3.entities;
                        sendingMediaInfo.masks = photoEntry3.stickers;
                        sendingMediaInfo.ttl = photoEntry3.ttl;
                        sendingMediaInfo.videoEditedInfo = videoEditedInfo;
                        sendingMediaInfo.canDeleteAfter = true;
                        arrayList2.add(sendingMediaInfo);
                        photoEntry.reset();
                        this.sending = true;
                        SendMessagesHelper.prepareSendingMedia(ChatActivityEnterView.this.accountInstance, arrayList2, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, false, false, ChatActivityEnterView.this.editingMessageObject, z, i2, ChatActivityEnterView.this.parentFragment == null ? 0 : ChatActivityEnterView.this.parentFragment.getChatMode(), SendMessagesHelper.checkUpdateStickersOrder(sendingMediaInfo.caption), null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, 0L, false, 0L, ChatActivityEnterView.this.getSendMonoForumPeerId(), ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.messageSuggestionParams : null);
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onMessageSend(null, true, i2, 0L);
                        }
                    }

                    @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
                    public void willHidePhotoViewer() {
                        if (this.sending) {
                            return;
                        }
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }, ChatActivityEnterView.this.parentFragment);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: send, reason: merged with bridge method [inline-methods] */
        public void lambda$onCreateInputConnection$0(InputContentInfoCompat inputContentInfoCompat, boolean z, int i) {
            MessageSendPreview messageSendPreview = ChatActivityEnterView.this.messageSendPreview;
            if (messageSendPreview != null) {
                messageSendPreview.dismiss(true);
                ChatActivityEnterView.this.messageSendPreview = null;
            }
            if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
                return;
            }
            if (inputContentInfoCompat.getDescription().hasMimeType("image/gif")) {
                SendMessagesHelper.prepareSendingDocument(ChatActivityEnterView.this.accountInstance, null, null, inputContentInfoCompat.getContentUri(), null, "image/gif", ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, null, z, 0, inputContentInfoCompat, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, false);
            } else {
                SendMessagesHelper.prepareSendingPhoto(ChatActivityEnterView.this.accountInstance, null, inputContentInfoCompat.getContentUri(), ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), ChatActivityEnterView.this.replyingQuote, null, null, null, inputContentInfoCompat, 0, null, z, 0, ChatActivityEnterView.this.parentFragment == null ? 0 : ChatActivityEnterView.this.parentFragment.getChatMode(), ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0);
            }
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onMessageSend(null, true, i, 0L);
            }
        }

        @Override // android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (ChatActivityEnterView.this.preventInput) {
                return false;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        @Override // org.telegram.ui.Components.EditTextBoldCursor
        protected void extendActionMode(ActionMode actionMode, Menu menu) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.extendActionMode(menu);
            } else {
                ChatActivityEnterView.this.extendActionMode(menu);
            }
        }

        @Override // org.telegram.ui.Components.EditTextBoldCursor
        protected Theme.ResourcesProvider getResourcesProvider() {
            return ChatActivityEnterView.this.resourcesProvider;
        }

        @Override // org.telegram.ui.Components.EditTextCaption
        protected void onContextMenuClose() {
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onContextMenuClose();
            }
        }

        @Override // org.telegram.ui.Components.EditTextCaption
        protected void onContextMenuOpen() {
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onContextMenuOpen();
            }
        }

        @Override // android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (inputConnectionOnCreateInputConnection == null) {
                return null;
            }
            try {
                if (ChatActivityEnterView.this.isEditingBusinessLink()) {
                    EditorInfoCompat.setContentMimeTypes(editorInfo, null);
                } else {
                    EditorInfoCompat.setContentMimeTypes(editorInfo, new String[]{"image/gif", "image/*", "image/jpg", "image/png", "image/webp"});
                }
                return InputConnectionCompat.createWrapper(inputConnectionOnCreateInputConnection, editorInfo, new InputConnectionCompat.OnCommitContentListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda0
                    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
                    public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
                        return this.f$0.lambda$onCreateInputConnection$1(inputContentInfoCompat, i, bundle);
                    }
                });
            } catch (Throwable th) {
                FileLog.e(th);
                return inputConnectionOnCreateInputConnection;
            }
        }

        @Override // org.telegram.ui.Components.EditTextCaption, org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        protected void onMeasure(int i, int i2) {
            ChatActivityEnterView.this.isInitLineCount = getMeasuredWidth() == 0 && getMeasuredHeight() == 0;
            super.onMeasure(i, i2);
            if (ChatActivityEnterView.this.isInitLineCount) {
                ChatActivityEnterView.this.lineCount = getLineCount();
            }
            ChatActivityEnterView.this.isInitLineCount = false;
        }

        @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onEditTextScroll();
            }
        }

        @Override // org.telegram.ui.Components.EditTextEffects, android.widget.TextView
        protected void onSelectionChanged(int i, int i2) {
            super.onSelectionChanged(i, i2);
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onTextSelectionChanged(i, i2);
            }
        }

        @Override // org.telegram.ui.Components.EditTextCaption, android.widget.EditText, android.widget.TextView
        public boolean onTextContextMenuItem(int i) {
            if (i == 16908322) {
                ChatActivityEnterView.this.isPaste = true;
                ClipData primaryClip = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip();
                if (primaryClip != null && primaryClip.getItemCount() == 1 && primaryClip.getDescription().hasMimeType("image/*") && !ChatActivityEnterView.this.isEditingBusinessLink()) {
                    editPhoto(primaryClip.getItemAt(0).getUri(), primaryClip.getDescription().getMimeType(0));
                }
            }
            return super.onTextContextMenuItem(i);
        }

        @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!ChatActivityEnterView.this.stickersDragging && ChatActivityEnterView.this.stickersExpansionAnim == null) {
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (!chatActivityEnterView.sendPlainEnabled && !chatActivityEnterView.isEditingMessage()) {
                    if (this.canvasButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.canvasButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTouchEvent$2();
                            }
                        });
                    }
                    this.canvasButton.setRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
                    return this.canvasButton.checkTouchEvent(motionEvent);
                }
                if (ChatActivityEnterView.this.isPopupShowing() && motionEvent.getAction() == 0) {
                    if (ChatActivityEnterView.this.searchingType != 0) {
                        ChatActivityEnterView.this.setSearchingTypeInternal(0, false);
                        ChatActivityEnterView.this.emojiView.closeSearch(false);
                        requestFocus();
                    }
                    ChatActivityEnterView.this.showPopup(AndroidUtilities.usingHardwareInput ? 0 : 2, 0);
                    if (ChatActivityEnterView.this.stickersExpanded) {
                        ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                        ChatActivityEnterView.this.waitingForKeyboardOpenAfterAnimation = true;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTouchEvent$3();
                            }
                        }, 200L);
                    } else {
                        ChatActivityEnterView.this.openKeyboardInternal();
                    }
                    return true;
                }
                try {
                    return super.onTouchEvent(motionEvent);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
            return false;
        }

        @Override // android.view.View
        public boolean requestFocus(int i, android.graphics.Rect rect) {
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            if (chatActivityEnterView.sendPlainEnabled || chatActivityEnterView.isEditingMessage()) {
                return super.requestFocus(i, rect);
            }
            return false;
        }

        @Override // android.view.View
        public boolean requestRectangleOnScreen(android.graphics.Rect rect) {
            rect.bottom += AndroidUtilities.dp(1000.0f);
            return super.requestRectangleOnScreen(rect);
        }

        @Override // org.telegram.ui.Components.EditTextEffects
        public void setOffsetY(float f) {
            super.setOffsetY(f);
            if (ChatActivityEnterView.this.sizeNotifierLayout.getForeground() != null) {
                ChatActivityEnterView.this.sizeNotifierLayout.invalidateDrawable(ChatActivityEnterView.this.sizeNotifierLayout.getForeground());
            }
        }
    }

    public interface ChatActivityEnterViewDelegate {

        /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$bottomPanelTranslationYChanged(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, float f) {
            }

            public static boolean $default$checkCanRemoveRestrictionsByBoosts(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return false;
            }

            public static void $default$didPressSuggestionButton(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static int $default$getContentViewHeight(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return 0;
            }

            public static ChatActivity.ReplyQuote $default$getReplyQuote(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static TL_stories$StoryItem $default$getReplyToStory(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static TLRPC.TL_channels_sendAsPeers $default$getSendAsPeers(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static boolean $default$hasForwardingMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return false;
            }

            public static boolean $default$hasScheduledMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return true;
            }

            public static int $default$measureKeyboardHeight(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return 0;
            }

            public static void $default$onContextMenuClose(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onContextMenuOpen(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onEditTextScroll(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onKeyboardRequested(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onTrendingStickersShowed(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, boolean z) {
            }

            public static boolean $default$onceVoiceAvailable(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return false;
            }

            public static void $default$openScheduledMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$prepareMessageSending(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$scrollToSendingMessage(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }
        }

        void bottomPanelTranslationYChanged(float f);

        boolean checkCanRemoveRestrictionsByBoosts();

        void didPressAttachButton();

        void didPressSuggestionButton();

        int getContentViewHeight();

        ChatActivity.ReplyQuote getReplyQuote();

        TL_stories$StoryItem getReplyToStory();

        TLRPC.TL_channels_sendAsPeers getSendAsPeers();

        boolean hasForwardingMessages();

        boolean hasScheduledMessages();

        boolean isVideoRecordingPaused();

        int measureKeyboardHeight();

        void needChangeVideoPreviewState(int i, float f);

        void needSendTyping();

        void needShowMediaBanHint();

        void needStartRecordAudio(int i);

        void needStartRecordVideo(int i, boolean z, int i2, int i3, long j, long j2);

        void onAttachButtonHidden();

        void onAttachButtonShow();

        void onAudioVideoInterfaceUpdated();

        void onContextMenuClose();

        void onContextMenuOpen();

        void onEditTextScroll();

        void onKeyboardRequested();

        void onMessageEditEnd(boolean z);

        void onMessageSend(CharSequence charSequence, boolean z, int i, long j);

        void onPreAudioVideoRecord();

        void onSendLongClick();

        void onStickersExpandedChange();

        void onStickersTab(boolean z);

        void onSwitchRecordMode(boolean z);

        void onTextChanged(CharSequence charSequence, boolean z, boolean z2);

        void onTextSelectionChanged(int i, int i2);

        void onTextSpansChanged(CharSequence charSequence);

        void onTrendingStickersShowed(boolean z);

        void onUpdateSlowModeButton(View view, boolean z, CharSequence charSequence);

        void onWindowSizeChanged(int i);

        boolean onceVoiceAvailable();

        void openScheduledMessages();

        void prepareMessageSending();

        void scrollToSendingMessage();

        void toggleVideoRecordingPause();
    }

    public class ControlsView extends FrameLayout {
        private AnimatedFloat hidePauseT;
        private int lastSize;
        private long lastUpdateTime;
        Paint lockBackgroundPaint;
        Paint lockOutlinePaint;
        Paint lockPaint;
        private Drawable micDrawable;
        private HintView2 onceHint;
        private boolean oncePressed;
        public final RectF onceRect;
        private Paint p;
        Path path;
        private final Path path2;
        private HintView2 pauseHint;
        private boolean pausePressed;
        private CaptionContainerView.PeriodDrawable periodDrawable;
        private final float[] radiiLeft;
        private final float[] radiiRight;
        private final RectF rectF;
        private Drawable tooltipBackground;
        private Drawable tooltipBackgroundArrow;
        private StaticLayout tooltipLayout;
        private String tooltipMessage;
        private TextPaint tooltipPaint;
        private float tooltipWidth;
        private Drawable vidDrawable;
        private VirtualViewHelper virtualViewHelper;

        private class VirtualViewHelper extends ExploreByTouchHelper {
            public VirtualViewHelper(View view) {
                super(view);
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected int getVirtualViewAt(float f, float f2) {
                if (ChatActivityEnterView.this.sendButtonVisible && ChatActivityEnterView.this.recordCircle != null && ChatActivityEnterView.this.pauseRect.contains(f, f2)) {
                    return 2;
                }
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                return (!chatActivityEnterView.onceVisible || chatActivityEnterView.recordCircle == null || ChatActivityEnterView.this.snapAnimationProgress <= 0.1f || !ControlsView.this.onceRect.contains(f, f2)) ? -1 : 4;
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void getVisibleVirtualViews(List list) {
                if (ChatActivityEnterView.this.sendButtonVisible) {
                    list.add(2);
                }
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (!chatActivityEnterView.onceVisible || chatActivityEnterView.recordCircle == null || ChatActivityEnterView.this.snapAnimationProgress <= 0.1f) {
                    return;
                }
                list.add(4);
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
                return true;
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                int i2;
                if (i == 2) {
                    ChatActivityEnterView.this.rect.set((int) ChatActivityEnterView.this.pauseRect.left, (int) ChatActivityEnterView.this.pauseRect.top, (int) ChatActivityEnterView.this.pauseRect.right, (int) ChatActivityEnterView.this.pauseRect.bottom);
                    accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.rect);
                    i2 = ChatActivityEnterView.this.transformToSeekbar > 0.5f ? R.string.AccActionResume : R.string.AccActionPause;
                } else {
                    if (i != 4) {
                        return;
                    }
                    android.graphics.Rect rect = ChatActivityEnterView.this.rect;
                    RectF rectF = ControlsView.this.onceRect;
                    rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                    accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.rect);
                    i2 = ChatActivityEnterView.this.voiceOnce ? R.string.AccActionOnceDeactivate : R.string.AccActionOnceActivate;
                }
                accessibilityNodeInfoCompat.setText(LocaleController.getString(i2));
            }
        }

        public ControlsView(Context context) {
            super(context);
            this.tooltipPaint = new TextPaint(1);
            this.lockBackgroundPaint = new Paint(1);
            this.lockPaint = new Paint(1);
            this.lockOutlinePaint = new Paint(1);
            this.path = new Path();
            this.p = new Paint(1);
            this.rectF = new RectF();
            this.onceRect = new RectF();
            this.path2 = new Path();
            this.radiiLeft = new float[]{fDp, fDp, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, fDp};
            this.radiiRight = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, fDp, fDp, fDp, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
            this.hidePauseT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            VirtualViewHelper virtualViewHelper = new VirtualViewHelper(this);
            this.virtualViewHelper = virtualViewHelper;
            ViewCompat.setAccessibilityDelegate(this, virtualViewHelper);
            CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable();
            this.periodDrawable = periodDrawable;
            periodDrawable.setCallback(this);
            this.periodDrawable.setValue(1, ChatActivityEnterView.this.voiceOnce, false);
            this.lockOutlinePaint.setStyle(Paint.Style.STROKE);
            this.lockOutlinePaint.setStrokeCap(Paint.Cap.ROUND);
            this.lockOutlinePaint.setStrokeWidth(AndroidUtilities.dpf2(1.7f));
            ChatActivityEnterView.this.lockShadowDrawable = getResources().getDrawable(R.drawable.lock_round_shadow);
            ChatActivityEnterView.this.lockShadowDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoiceLockShadow), PorterDuff.Mode.MULTIPLY));
            this.tooltipBackground = Theme.createRoundRectDrawable(AndroidUtilities.dp(5.0f), ChatActivityEnterView.this.getThemedColor(Theme.key_chat_gifSaveHintBackground));
            this.tooltipPaint.setTextSize(AndroidUtilities.dp(14.0f));
            this.tooltipBackgroundArrow = ContextCompat.getDrawable(context, R.drawable.tooltip_arrow);
            this.tooltipMessage = LocaleController.getString("SlideUpToLock", R.string.SlideUpToLock);
            float fDp = AndroidUtilities.dp(3.0f);
            float fDp2 = AndroidUtilities.dp(3.0f);
            this.micDrawable = getResources().getDrawable(R.drawable.input_mic).mutate();
            this.vidDrawable = getResources().getDrawable(R.drawable.input_video).mutate();
            setWillNotDraw(false);
            updateColors();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$hideHintView$2(HintView2 hintView2) {
            removeView(hintView2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$hideHintView$3(HintView2 hintView2) {
            removeView(hintView2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$4() {
            if (!MediaController.getInstance().isRecordingPaused()) {
                MessagesController.getGlobalMainSettings().edit().putInt("voicepausehint", 3).apply();
            }
            if (ChatActivityEnterView.this.sendButtonVisible) {
                ChatActivityEnterView.this.calledRecordRunnable = true;
            }
            MediaController.getInstance().toggleRecordingPause(ChatActivityEnterView.this.voiceOnce);
            ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
            if (ChatActivityEnterView.this.slideText != null) {
                ChatActivityEnterView.this.slideText.setEnabled(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$5(Runnable runnable) {
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            chatActivityEnterView.millisecondsRecorded = chatActivityEnterView.audioTimelineView.getAudioRightMs() - ChatActivityEnterView.this.audioTimelineView.getAudioLeftMs();
            MediaController.getInstance().trimCurrentRecording(ChatActivityEnterView.this.audioTimelineView.getAudioLeftMs(), ChatActivityEnterView.this.audioTimelineView.getAudioRightMs(), runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onTouchEvent$6(Runnable runnable, AlertDialog alertDialog, int i) {
            runnable.run();
            MessagesController.getGlobalMainSettings().edit().putBoolean("trimvoicehint", false).apply();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showOnceHint$1(HintView2 hintView2) {
            removeView(hintView2);
            if (this.onceHint == hintView2) {
                this.onceHint = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showPauseHint$0(HintView2 hintView2) {
            removeView(hintView2);
            if (this.pauseHint == hintView2) {
                this.pauseHint = null;
            }
        }

        private void scale(RectF rectF, float f) {
            float fCenterX = rectF.centerX();
            float fCenterY = rectF.centerY();
            rectF.left = AndroidUtilities.lerp(fCenterX, rectF.left, f);
            rectF.right = AndroidUtilities.lerp(fCenterX, rectF.right, f);
            rectF.top = AndroidUtilities.lerp(fCenterY, rectF.top, f);
            rectF.bottom = AndroidUtilities.lerp(fCenterY, rectF.bottom, f);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
            return super.dispatchHoverEvent(motionEvent) || this.virtualViewHelper.dispatchHoverEvent(motionEvent);
        }

        public void hideHintView() {
            final HintView2 hintView2 = this.pauseHint;
            if (hintView2 != null) {
                hintView2.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$hideHintView$2(hintView2);
                    }
                });
                hintView2.hide();
                this.pauseHint = null;
            }
            final HintView2 hintView22 = this.onceHint;
            if (hintView22 != null) {
                hintView22.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$hideHintView$3(hintView22);
                    }
                });
                hintView22.hide();
                this.onceHint = null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:71:0x03dc  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            float fMax;
            float fDp;
            float fDpf2;
            float f;
            float f2;
            float f3;
            float interpolation;
            float f4;
            float f5;
            float f6;
            float f7;
            float fMax2;
            float f8 = ChatActivityEnterView.this.scale <= 0.5f ? ChatActivityEnterView.this.scale / 0.5f : ChatActivityEnterView.this.scale <= 0.75f ? 1.0f - (((ChatActivityEnterView.this.scale - 0.5f) / 0.25f) * 0.1f) : (((ChatActivityEnterView.this.scale - 0.75f) / 0.25f) * 0.1f) + 0.9f;
            long jCurrentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            this.lastUpdateTime = System.currentTimeMillis();
            if (ChatActivityEnterView.this.lockAnimatedTranslation != 10000.0f) {
                fMax = Math.max(0, (int) (ChatActivityEnterView.this.startTranslation - ChatActivityEnterView.this.lockAnimatedTranslation));
                if (fMax > AndroidUtilities.dp(57.0f)) {
                    fMax = AndroidUtilities.dp(57.0f);
                }
            } else {
                fMax = BitmapDescriptorFactory.HUE_RED;
            }
            int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp2(26.0f);
            float fDp2 = 1.0f - (fMax / AndroidUtilities.dp(57.0f));
            float measuredHeight = getMeasuredHeight() - AndroidUtilities.dp(194.0f);
            if (ChatActivityEnterView.this.sendButtonVisible) {
                float fDp3 = AndroidUtilities.dp(36.0f);
                fDp = (((AndroidUtilities.dp(60.0f) + measuredHeight) + (AndroidUtilities.dpf2(30.0f) * (1.0f - f8))) - fMax) + (AndroidUtilities.dpf2(14.0f) * fDp2);
                fDpf2 = (((fDp3 / 2.0f) + fDp) - AndroidUtilities.dpf2(8.0f)) + AndroidUtilities.dpf2(2.0f);
                AndroidUtilities.dpf2(16.0f);
                AndroidUtilities.dpf2(2.0f);
                f = (((1.0f - fDp2) * 9.0f) * (1.0f - ChatActivityEnterView.this.snapAnimationProgress)) - ((ChatActivityEnterView.this.snapAnimationProgress * 15.0f) * (1.0f - (fDp2 > 0.4f ? 1.0f : fDp2 / 0.4f)));
                f3 = fDp2;
                f2 = fDp3;
            } else {
                float fDp4 = AndroidUtilities.dp(36.0f) + ((int) (AndroidUtilities.dp(14.0f) * fDp2));
                fDp = (((AndroidUtilities.dp(60.0f) + measuredHeight) + ((int) (AndroidUtilities.dp(30.0f) * (1.0f - f8)))) - ((int) fMax)) + (ChatActivityEnterView.this.idleProgress * fDp2 * (-AndroidUtilities.dp(8.0f)));
                fDpf2 = (((fDp4 / 2.0f) + fDp) - AndroidUtilities.dpf2(8.0f)) + AndroidUtilities.dpf2(2.0f) + (AndroidUtilities.dpf2(2.0f) * fDp2);
                AndroidUtilities.dpf2(16.0f);
                AndroidUtilities.dpf2(2.0f);
                AndroidUtilities.dpf2(2.0f);
                f = (1.0f - fDp2) * 9.0f;
                ChatActivityEnterView.this.snapAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                f2 = fDp4;
                f3 = BitmapDescriptorFactory.HUE_RED;
            }
            float f9 = fDp;
            float f10 = f;
            if ((ChatActivityEnterView.this.showTooltip && System.currentTimeMillis() - ChatActivityEnterView.this.showTooltipStartTime > 200) || ChatActivityEnterView.this.tooltipAlpha != BitmapDescriptorFactory.HUE_RED) {
                if (fDp2 < 0.8f || ChatActivityEnterView.this.sendButtonVisible || ChatActivityEnterView.this.exitTransition != BitmapDescriptorFactory.HUE_RED || ChatActivityEnterView.this.transformToSeekbar != BitmapDescriptorFactory.HUE_RED) {
                    ChatActivityEnterView.this.showTooltip = false;
                }
                if (!ChatActivityEnterView.this.showTooltip) {
                    ChatActivityEnterView.access$4924(ChatActivityEnterView.this, jCurrentTimeMillis / 150.0f);
                    if (ChatActivityEnterView.this.tooltipAlpha < BitmapDescriptorFactory.HUE_RED) {
                        ChatActivityEnterView.this.tooltipAlpha = BitmapDescriptorFactory.HUE_RED;
                    }
                } else if (ChatActivityEnterView.this.tooltipAlpha != 1.0f) {
                    ChatActivityEnterView.access$4916(ChatActivityEnterView.this, jCurrentTimeMillis / 150.0f);
                    if (ChatActivityEnterView.this.tooltipAlpha >= 1.0f) {
                        ChatActivityEnterView.this.tooltipAlpha = 1.0f;
                        SharedConfig.increaseLockRecordAudioVideoHintShowed();
                    }
                }
                int i = (int) (ChatActivityEnterView.this.tooltipAlpha * 255.0f);
                this.tooltipBackground.setAlpha(i);
                this.tooltipBackgroundArrow.setAlpha(i);
                this.tooltipPaint.setAlpha(i);
                if (this.tooltipLayout != null) {
                    canvas.save();
                    this.rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    canvas.translate((getMeasuredWidth() - this.tooltipWidth) - AndroidUtilities.dp(44.0f), AndroidUtilities.dpf2(16.0f) + measuredHeight);
                    this.tooltipBackground.setBounds(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(2.0f), (int) (this.tooltipWidth + AndroidUtilities.dp(36.0f)), (int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f)));
                    this.tooltipBackground.draw(canvas);
                    this.tooltipLayout.draw(canvas);
                    canvas.restore();
                    canvas.save();
                    canvas.translate(getMeasuredWidth() - AndroidUtilities.dp(26.0f), ((AndroidUtilities.dpf2(17.0f) + measuredHeight) + (this.tooltipLayout.getHeight() / 2.0f)) - (ChatActivityEnterView.this.idleProgress * AndroidUtilities.dpf2(3.0f)));
                    this.path.reset();
                    this.path.setLastPoint(-AndroidUtilities.dpf2(5.0f), AndroidUtilities.dpf2(4.0f));
                    this.path.lineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    this.path.lineTo(AndroidUtilities.dpf2(5.0f), AndroidUtilities.dpf2(4.0f));
                    this.p.setColor(-1);
                    this.p.setAlpha(i);
                    this.p.setStyle(Paint.Style.STROKE);
                    this.p.setStrokeCap(Paint.Cap.ROUND);
                    this.p.setStrokeJoin(Paint.Join.ROUND);
                    this.p.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
                    canvas.drawPath(this.path, this.p);
                    canvas.restore();
                    canvas.save();
                    Drawable drawable = this.tooltipBackgroundArrow;
                    drawable.setBounds(measuredWidth - (drawable.getIntrinsicWidth() / 2), (int) (this.tooltipLayout.getHeight() + measuredHeight + AndroidUtilities.dpf2(20.0f)), (this.tooltipBackgroundArrow.getIntrinsicWidth() / 2) + measuredWidth, ((int) (this.tooltipLayout.getHeight() + measuredHeight + AndroidUtilities.dpf2(20.0f))) + this.tooltipBackgroundArrow.getIntrinsicHeight());
                    this.tooltipBackgroundArrow.draw(canvas);
                    canvas.restore();
                }
            }
            float f11 = this.hidePauseT.set(ChatActivityEnterView.this.isInVideoMode && ChatActivityEnterView.this.millisecondsRecorded >= 59000);
            if (ChatActivityEnterView.this.transformToSeekbar != BitmapDescriptorFactory.HUE_RED) {
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (chatActivityEnterView.audioTimelineView != null) {
                    float f12 = chatActivityEnterView.transformToSeekbar > 0.38f ? 1.0f : ChatActivityEnterView.this.transformToSeekbar / 0.38f;
                    if (ChatActivityEnterView.this.transformToSeekbar > 0.63f) {
                        interpolation = BitmapDescriptorFactory.HUE_RED;
                        fMax2 = 1.0f;
                    } else {
                        float f13 = (ChatActivityEnterView.this.transformToSeekbar - 0.38f) / 0.25f;
                        interpolation = BitmapDescriptorFactory.HUE_RED;
                        fMax2 = Math.max(BitmapDescriptorFactory.HUE_RED, f13);
                    }
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_BOTH;
                    float interpolation2 = cubicBezierInterpolator.getInterpolation(f12);
                    cubicBezierInterpolator.getInterpolation(fMax2);
                    f4 = interpolation2;
                } else if (ChatActivityEnterView.this.exitTransition != BitmapDescriptorFactory.HUE_RED) {
                    float f14 = ChatActivityEnterView.this.exitTransition > 0.6f ? 1.0f : ChatActivityEnterView.this.exitTransition / 0.6f;
                    ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                    float fMax3 = chatActivityEnterView2.messageTransitionIsRunning ? chatActivityEnterView2.exitTransition : Math.max(BitmapDescriptorFactory.HUE_RED, (chatActivityEnterView2.exitTransition - 0.6f) / 0.4f);
                    CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_BOTH;
                    float interpolation3 = cubicBezierInterpolator2.getInterpolation(f14);
                    interpolation = cubicBezierInterpolator2.getInterpolation(fMax3);
                    f4 = interpolation3;
                } else {
                    interpolation = BitmapDescriptorFactory.HUE_RED;
                    f4 = BitmapDescriptorFactory.HUE_RED;
                }
            }
            canvas.save();
            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - ChatActivityEnterView.this.textFieldContainer.getMeasuredHeight());
            float f15 = 1.0f - ChatActivityEnterView.this.controlsScale != BitmapDescriptorFactory.HUE_RED ? 1.0f - ChatActivityEnterView.this.controlsScale : interpolation != BitmapDescriptorFactory.HUE_RED ? interpolation : BitmapDescriptorFactory.HUE_RED;
            if (ChatActivityEnterView.this.slideToCancelProgress < 0.7f || ChatActivityEnterView.this.canceledByGesture) {
                ChatActivityEnterView.this.showTooltip = false;
                if (ChatActivityEnterView.this.slideToCancelLockProgress != BitmapDescriptorFactory.HUE_RED) {
                    ChatActivityEnterView.access$5724(ChatActivityEnterView.this, 0.12f);
                    if (ChatActivityEnterView.this.slideToCancelLockProgress < BitmapDescriptorFactory.HUE_RED) {
                        ChatActivityEnterView.this.slideToCancelLockProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                }
            } else if (ChatActivityEnterView.this.slideToCancelLockProgress != 1.0f) {
                ChatActivityEnterView.access$5716(ChatActivityEnterView.this, 0.12f);
                if (ChatActivityEnterView.this.slideToCancelLockProgress > 1.0f) {
                    ChatActivityEnterView.this.slideToCancelLockProgress = 1.0f;
                }
            }
            float fDpf22 = AndroidUtilities.dpf2(72.0f);
            float fDpf23 = (fDpf22 * f15) + (AndroidUtilities.dpf2(24.0f) * f4 * (1.0f - f15)) + ((1.0f - ChatActivityEnterView.this.slideToCancelLockProgress) * fDpf22);
            if (fDpf23 <= fDpf22) {
                fDpf22 = fDpf23;
            }
            float f16 = (1.0f - f11) * ChatActivityEnterView.this.controlsScale * (1.0f - interpolation) * ChatActivityEnterView.this.slideToCancelLockProgress;
            float f17 = measuredWidth;
            float f18 = fDpf2 + fDpf22;
            canvas.scale(f16, f16, f17, f18);
            float f19 = f4;
            float f20 = f9 + fDpf22;
            this.rectF.set(f17 - AndroidUtilities.dpf2(18.0f), f20, f17 + AndroidUtilities.dpf2(18.0f), f20 + f2);
            ChatActivityEnterView.this.lockShadowDrawable.setBounds((int) (this.rectF.left - AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.top - AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.right + AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.bottom + AndroidUtilities.dpf2(3.0f)));
            ChatActivityEnterView.this.lockShadowDrawable.draw(canvas);
            canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(18.0f), AndroidUtilities.dpf2(18.0f), this.lockBackgroundPaint);
            ChatActivityEnterView.this.pauseRect.set(this.rectF);
            scale(ChatActivityEnterView.this.pauseRect, f16);
            HintView2 hintView2 = this.pauseHint;
            if (hintView2 != null) {
                hintView2.setJointPx(BitmapDescriptorFactory.HUE_RED, this.rectF.centerY());
                this.pauseHint.invalidate();
            }
            float f21 = 1.0f - f3;
            this.rectF.set((f17 - AndroidUtilities.dpf2(6.0f)) - (AndroidUtilities.dpf2(2.0f) * f21), f18 - (AndroidUtilities.dpf2(2.0f) * f21), measuredWidth + AndroidUtilities.dp(6.0f) + (AndroidUtilities.dpf2(2.0f) * f21), f18 + AndroidUtilities.dp(12.0f) + (AndroidUtilities.dpf2(2.0f) * f21));
            RectF rectF = this.rectF;
            float f22 = rectF.bottom;
            float fCenterX = rectF.centerX();
            float fCenterY = this.rectF.centerY();
            canvas.save();
            float f23 = 1.0f - fDp2;
            canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(2.0f) * f23);
            canvas.rotate(f10, fCenterX, fCenterY);
            if (f3 != 1.0f) {
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(8.0f), AndroidUtilities.dpf2(8.0f));
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), f22 + fDpf22 + (AndroidUtilities.dpf2(2.0f) * f23));
                canvas.translate(f17 - AndroidUtilities.dpf2(4.0f), ((this.rectF.top - AndroidUtilities.dp(6.0f)) - AndroidUtilities.lerp(AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(1.5f) * (1.0f - ChatActivityEnterView.this.idleProgress), fDp2)) + (AndroidUtilities.dpf2(12.0f) * f3) + (AndroidUtilities.dpf2(2.0f) * ChatActivityEnterView.this.snapAnimationProgress));
                if (f10 > BitmapDescriptorFactory.HUE_RED) {
                    canvas.rotate(f10, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                }
                f5 = f2;
                f6 = f3;
                canvas.drawLine(AndroidUtilities.dpf2(8.0f), AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(8.0f), (AndroidUtilities.dpf2(4.0f) * f21) + AndroidUtilities.dpf2(6.0f), this.lockOutlinePaint);
                canvas.drawArc(rectF2, BitmapDescriptorFactory.HUE_RED, -180.0f, false, this.lockOutlinePaint);
                float fDpf24 = AndroidUtilities.dpf2(4.0f);
                float fDpf25 = AndroidUtilities.dpf2(4.0f);
                float fDpf26 = AndroidUtilities.dpf2(4.0f);
                ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, fDpf24, BitmapDescriptorFactory.HUE_RED, fDpf25 + (fDpf26 * chatActivityEnterView3.idleProgress * fDp2 * (!chatActivityEnterView3.sendButtonVisible ? 1 : 0)) + (AndroidUtilities.dpf2(4.0f) * ChatActivityEnterView.this.snapAnimationProgress * f23), this.lockOutlinePaint);
                canvas.restore();
            } else {
                f5 = f2;
                f6 = f3;
            }
            float fClamp = Utilities.clamp(ChatActivityEnterView.this.transformToSeekbar * 2.0f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            Drawable drawable2 = fClamp > BitmapDescriptorFactory.HUE_RED ? ChatActivityEnterView.this.isInVideoMode ? this.vidDrawable : this.micDrawable : null;
            int alpha = this.lockPaint.getAlpha();
            this.lockPaint.setAlpha((int) (alpha * (1.0f - fClamp)));
            if (f6 > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(3.0f), AndroidUtilities.dpf2(3.0f), this.lockBackgroundPaint);
                this.path2.rewind();
                RectF rectF3 = AndroidUtilities.rectTmp;
                rectF3.set(this.rectF);
                rectF3.right = this.rectF.centerX() - (AndroidUtilities.dp(1.66f) * f6);
                float[] fArr = this.radiiLeft;
                float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(1.5f), f6);
                fArr[7] = fLerp;
                fArr[6] = fLerp;
                fArr[1] = fLerp;
                fArr[0] = fLerp;
                float[] fArr2 = this.radiiLeft;
                float fDp5 = AndroidUtilities.dp(1.5f) * f6;
                fArr2[5] = fDp5;
                fArr2[4] = fDp5;
                fArr2[3] = fDp5;
                fArr2[2] = fDp5;
                Path path = this.path2;
                float[] fArr3 = this.radiiLeft;
                Path.Direction direction = Path.Direction.CW;
                path.addRoundRect(rectF3, fArr3, direction);
                rectF3.set(this.rectF);
                rectF3.left = this.rectF.centerX() + (AndroidUtilities.dp(1.66f) * f6);
                float[] fArr4 = this.radiiRight;
                float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(1.5f), f6);
                fArr4[5] = fLerp2;
                fArr4[4] = fLerp2;
                fArr4[3] = fLerp2;
                fArr4[2] = fLerp2;
                float[] fArr5 = this.radiiRight;
                float fDp6 = AndroidUtilities.dp(1.5f) * f6;
                fArr5[7] = fDp6;
                fArr5[6] = fDp6;
                fArr5[1] = fDp6;
                fArr5[0] = fDp6;
                this.path2.addRoundRect(rectF3, this.radiiRight, direction);
                canvas.drawPath(this.path2, this.lockPaint);
            } else {
                canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(3.0f), AndroidUtilities.dpf2(3.0f), this.lockPaint);
            }
            this.lockPaint.setAlpha(alpha);
            if (drawable2 != null) {
                android.graphics.Rect rect = AndroidUtilities.rectTmp2;
                f7 = f17;
                rect.set((int) (this.rectF.centerX() - ((drawable2.getIntrinsicWidth() / 2) * 0.9285f)), (int) (this.rectF.centerY() - ((drawable2.getIntrinsicHeight() / 2) * 0.9285f)), (int) (this.rectF.centerX() + ((drawable2.getIntrinsicWidth() / 2) * 0.9285f)), (int) (this.rectF.centerY() + ((drawable2.getIntrinsicHeight() / 2) * 0.9285f)));
                drawable2.setBounds(rect);
                drawable2.setAlpha((int) (fClamp * 255.0f));
                drawable2.draw(canvas);
            } else {
                f7 = f17;
            }
            if (f6 != 1.0f) {
                canvas.drawCircle(fCenterX, fCenterY, AndroidUtilities.dpf2(2.0f) * f21, this.lockBackgroundPaint);
            }
            canvas.restore();
            canvas.restore();
            float fLerp3 = AndroidUtilities.lerp(f9, getMeasuredHeight() - AndroidUtilities.dp(118.0f), Math.max(ChatActivityEnterView.this.exitTransition, Math.min(f19, ChatActivityEnterView.this.slideToCancelLockProgress))) + fDpf22 + (AndroidUtilities.dp(38.0f) * f11);
            this.rectF.set(f7 - AndroidUtilities.dpf2(18.0f), fLerp3, f7 + AndroidUtilities.dpf2(18.0f), fLerp3 + f5);
            ChatActivityEnterView chatActivityEnterView4 = ChatActivityEnterView.this;
            chatActivityEnterView4.onceVisible = chatActivityEnterView4.delegate != null && ChatActivityEnterView.this.delegate.onceVoiceAvailable();
            if (ChatActivityEnterView.this.onceVisible) {
                float fDpf27 = AndroidUtilities.dpf2(12.0f);
                RectF rectF4 = this.rectF;
                float f24 = rectF4.left;
                float fDpf28 = (rectF4.top - AndroidUtilities.dpf2(36.0f)) - fDpf27;
                RectF rectF5 = this.rectF;
                rectF4.set(f24, fDpf28, rectF5.right, rectF5.top - fDpf27);
                HintView2 hintView22 = this.onceHint;
                if (hintView22 != null) {
                    hintView22.setJointPx(BitmapDescriptorFactory.HUE_RED, this.rectF.centerY());
                    this.onceHint.invalidate();
                }
                this.onceRect.set(this.rectF);
                canvas.save();
                float f25 = ChatActivityEnterView.this.controlsScale * (1.0f - ChatActivityEnterView.this.exitTransition) * ChatActivityEnterView.this.slideToCancelLockProgress * ChatActivityEnterView.this.snapAnimationProgress;
                canvas.scale(f25, f25, this.rectF.centerX(), this.rectF.centerY());
                ChatActivityEnterView.this.lockShadowDrawable.setBounds((int) (this.rectF.left - AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.top - AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.right + AndroidUtilities.dpf2(3.0f)), (int) (this.rectF.bottom + AndroidUtilities.dpf2(3.0f)));
                ChatActivityEnterView.this.lockShadowDrawable.draw(canvas);
                canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(18.0f), AndroidUtilities.dpf2(18.0f), this.lockBackgroundPaint);
                CaptionContainerView.PeriodDrawable periodDrawable = this.periodDrawable;
                RectF rectF6 = this.rectF;
                periodDrawable.setBounds((int) rectF6.left, (int) rectF6.top, (int) rectF6.right, (int) rectF6.bottom);
                this.periodDrawable.draw(canvas);
                canvas.restore();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int iDp = AndroidUtilities.dp(254.0f);
            if (this.lastSize != size) {
                this.lastSize = size;
                StaticLayout staticLayout = new StaticLayout(this.tooltipMessage, this.tooltipPaint, AndroidUtilities.dp(220.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
                this.tooltipLayout = staticLayout;
                int lineCount = staticLayout.getLineCount();
                this.tooltipWidth = BitmapDescriptorFactory.HUE_RED;
                for (int i3 = 0; i3 < lineCount; i3++) {
                    float lineWidth = this.tooltipLayout.getLineWidth(i3);
                    if (lineWidth > this.tooltipWidth) {
                        this.tooltipWidth = lineWidth;
                    }
                }
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(iDp, 1073741824));
        }

        @Override // android.view.View
        protected boolean onSetAlpha(int i) {
            return super.onSetAlpha(i);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                if (ChatActivityEnterView.this.sendButtonVisible) {
                    this.pausePressed = ChatActivityEnterView.this.pauseRect.contains(x, y);
                }
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (chatActivityEnterView.onceVisible && chatActivityEnterView.recordCircle != null && ChatActivityEnterView.this.snapAnimationProgress > 0.1f) {
                    this.oncePressed = this.onceRect.contains(x, y);
                }
            } else {
                if (motionEvent.getAction() == 1) {
                    if (this.pausePressed && ChatActivityEnterView.this.pauseRect.contains(x, y)) {
                        if (ChatActivityEnterView.this.isInVideoMode()) {
                            if (ChatActivityEnterView.this.slideText != null) {
                                ChatActivityEnterView.this.slideText.setEnabled(false);
                            }
                            ChatActivityEnterView.this.delegate.toggleVideoRecordingPause();
                        } else {
                            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onTouchEvent$4();
                                }
                            };
                            HintView2 hintView2 = this.pauseHint;
                            if (hintView2 != null && hintView2.shown()) {
                                hideHintView();
                            }
                            RecordedAudioPlayerView recordedAudioPlayerView = ChatActivityEnterView.this.audioTimelineView;
                            if (recordedAudioPlayerView != null) {
                                recordedAudioPlayerView.setPlaying(false);
                            }
                            if (!MediaController.getInstance().isRecordingPaused() || (ChatActivityEnterView.this.audioTimelineView.getAudioLeft() <= 0.01f && ChatActivityEnterView.this.audioTimelineView.getAudioRight() >= 0.99f)) {
                                runnable.run();
                            } else {
                                final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onTouchEvent$5(runnable);
                                    }
                                };
                                if (MessagesController.getGlobalMainSettings().getBoolean("trimvoicehint", true)) {
                                    new AlertDialog.Builder(getContext(), ChatActivityEnterView.this.resourcesProvider).setTitle(LocaleController.getString(R.string.RecordingTrimTitle)).setMessage(LocaleController.getString(R.string.RecordingTrimText)).setPositiveButton(LocaleController.getString(R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda2
                                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                                        public final void onClick(AlertDialog alertDialog, int i) {
                                            ChatActivityEnterView.ControlsView.lambda$onTouchEvent$6(runnable2, alertDialog, i);
                                        }
                                    }).setNegativeButton(LocaleController.getString(R.string.Cancel), null).show();
                                } else {
                                    runnable = runnable2;
                                    runnable.run();
                                }
                            }
                        }
                    } else if (this.oncePressed && this.onceRect.contains(x, y)) {
                        ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                        boolean z = !chatActivityEnterView2.voiceOnce;
                        chatActivityEnterView2.voiceOnce = z;
                        this.periodDrawable.setValue(1, z, true);
                        MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).toggleDraftVoiceOnce(ChatActivityEnterView.this.dialog_id, (ChatActivityEnterView.this.parentFragment == null || !ChatActivityEnterView.this.parentFragment.isTopic) ? 0L : ChatActivityEnterView.this.parentFragment.getTopicId(), ChatActivityEnterView.this.voiceOnce);
                        if (ChatActivityEnterView.this.voiceOnce) {
                            showOnceHint();
                        } else {
                            hideHintView();
                        }
                        invalidate();
                    }
                    this.oncePressed = false;
                    this.pausePressed = false;
                    return true;
                }
                if (motionEvent.getAction() == 3) {
                }
                this.oncePressed = false;
                this.pausePressed = false;
            }
            return this.pausePressed || this.oncePressed;
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            super.setAlpha(f);
        }

        public void showOnceHint() {
            hideHintView();
            HintView2 hintView2 = new HintView2(getContext(), 2);
            this.onceHint = hintView2;
            hintView2.setJoint(1.0f, BitmapDescriptorFactory.HUE_RED);
            this.onceHint.setMultilineText(true);
            this.onceHint.setText(AndroidUtilities.replaceTags(LocaleController.getString(ChatActivityEnterView.this.isInVideoMode ? ChatActivityEnterView.this.voiceOnce ? R.string.VideoSetOnceHintEnabled : R.string.VideoSetOnceHint : ChatActivityEnterView.this.voiceOnce ? R.string.VoiceSetOnceHintEnabled : R.string.VoiceSetOnceHint)));
            HintView2 hintView22 = this.onceHint;
            hintView22.setMaxWidthPx(HintView2.cutInFancyHalf(hintView22.getText(), this.onceHint.getTextPaint()));
            if (ChatActivityEnterView.this.voiceOnce) {
                this.onceHint.setIcon(R.raw.fire_on);
            } else {
                MessagesController.getGlobalMainSettings().edit().putInt("voiceoncehint", MessagesController.getGlobalMainSettings().getInt("voiceoncehint", 0) + 1).apply();
            }
            addView(this.onceHint, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 54.0f, 58.0f));
            final HintView2 hintView23 = this.onceHint;
            hintView23.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOnceHint$1(hintView23);
                }
            });
            this.onceHint.show();
        }

        public void showPauseHint() {
            if (MessagesController.getGlobalMainSettings().getInt("voicepausehint", 0) > 3) {
                return;
            }
            hideHintView();
            HintView2 hintView2 = new HintView2(getContext(), 2);
            this.pauseHint = hintView2;
            hintView2.setJoint(1.0f, BitmapDescriptorFactory.HUE_RED);
            this.pauseHint.setMultilineText(true);
            this.pauseHint.setText(LocaleController.getString(R.string.VoicePauseHint));
            MessagesController.getGlobalMainSettings().edit().putInt("voicepausehint", MessagesController.getGlobalMainSettings().getInt("voicepausehint", 0) + 1).apply();
            addView(this.pauseHint, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 54.0f, 58.0f));
            final HintView2 hintView22 = this.pauseHint;
            hintView22.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showPauseHint$0(hintView22);
                }
            });
            this.pauseHint.show();
        }

        public void showTooltipIfNeed() {
            if (SharedConfig.lockRecordAudioVideoHint < 3) {
                ChatActivityEnterView.this.showTooltip = true;
                ChatActivityEnterView.this.showTooltipStartTime = System.currentTimeMillis();
            }
        }

        public void updateColors() {
            CaptionContainerView.PeriodDrawable periodDrawable = this.periodDrawable;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_messagePanelVoiceLock;
            periodDrawable.updateColors(chatActivityEnterView.getThemedColor(i), ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoiceBackground), -1);
            Paint paint = this.lockBackgroundPaint;
            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
            int i2 = Theme.key_chat_messagePanelVoiceLockBackground;
            paint.setColor(chatActivityEnterView2.getThemedColor(i2));
            this.tooltipPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_gifSaveHintText));
            int iDp = AndroidUtilities.dp(5.0f);
            ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
            int i3 = Theme.key_chat_gifSaveHintBackground;
            this.tooltipBackground = Theme.createRoundRectDrawable(iDp, chatActivityEnterView3.getThemedColor(i3));
            Drawable drawable = this.tooltipBackgroundArrow;
            int themedColor = ChatActivityEnterView.this.getThemedColor(i3);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            drawable.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            this.lockBackgroundPaint.setColor(ChatActivityEnterView.this.getThemedColor(i2));
            this.lockPaint.setColor(ChatActivityEnterView.this.getThemedColor(i));
            this.lockOutlinePaint.setColor(ChatActivityEnterView.this.getThemedColor(i));
            this.micDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), mode));
            this.vidDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), mode));
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.periodDrawable || super.verifyDrawable(drawable);
        }
    }

    public class RecordCircle extends View {
        private float amplitude;
        private float animateAmplitudeDiff;
        private float animateToAmplitude;
        BlobDrawable bigWaveDrawable;
        private float circleRadius;
        private float circleRadiusAmplitude;
        public float drawingCircleRadius;
        public float drawingCx;
        public float drawingCy;
        public float iconScale;
        boolean incIdle;
        private float lastMovingX;
        private float lastMovingY;
        private long lastUpdateTime;
        private int paintAlpha;
        public float progressToSeekbarStep3;
        private float progressToSendButton;
        RectF rectF;
        private boolean showWaves;
        public boolean skipDraw;
        BlobDrawable tinyWaveDrawable;
        private float touchSlop;
        private VirtualViewHelper virtualViewHelper;
        public boolean voiceEnterTransitionInProgress;
        private float wavesEnterAnimation;

        private class VirtualViewHelper extends ExploreByTouchHelper {
            private int[] coords;

            public VirtualViewHelper(View view) {
                super(view);
                this.coords = new int[2];
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected int getVirtualViewAt(float f, float f2) {
                if (!RecordCircle.this.isSendButtonVisible() || ChatActivityEnterView.this.recordCircle == null) {
                    return -1;
                }
                if (ChatActivityEnterView.this.sendRect.contains((int) f, (int) f2)) {
                    return 1;
                }
                if (ChatActivityEnterView.this.pauseRect.contains(f, f2)) {
                    return 2;
                }
                if (ChatActivityEnterView.this.slideText == null || ChatActivityEnterView.this.slideText.cancelRect == null) {
                    return -1;
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(ChatActivityEnterView.this.slideText.cancelRect);
                ChatActivityEnterView.this.slideText.getLocationOnScreen(this.coords);
                int[] iArr = this.coords;
                rectF.offset(iArr[0], iArr[1]);
                ChatActivityEnterView.this.recordCircle.getLocationOnScreen(this.coords);
                int[] iArr2 = this.coords;
                rectF.offset(-iArr2[0], -iArr2[1]);
                return rectF.contains(f, f2) ? 3 : -1;
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void getVisibleVirtualViews(List list) {
                if (RecordCircle.this.isSendButtonVisible()) {
                    list.add(1);
                    list.add(3);
                }
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
                return true;
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                int i2;
                String str;
                String string;
                if (i == 1) {
                    accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.sendRect);
                    i2 = R.string.Send;
                    str = "Send";
                } else {
                    if (i == 2) {
                        ChatActivityEnterView.this.rect.set((int) ChatActivityEnterView.this.pauseRect.left, (int) ChatActivityEnterView.this.pauseRect.top, (int) ChatActivityEnterView.this.pauseRect.right, (int) ChatActivityEnterView.this.pauseRect.bottom);
                        accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.rect);
                        string = LocaleController.getString(R.string.Stop);
                        accessibilityNodeInfoCompat.setText(string);
                    }
                    if (i != 3 || ChatActivityEnterView.this.recordCircle == null) {
                        return;
                    }
                    if (ChatActivityEnterView.this.slideText != null && ChatActivityEnterView.this.slideText.cancelRect != null) {
                        android.graphics.Rect rect = AndroidUtilities.rectTmp2;
                        rect.set(ChatActivityEnterView.this.slideText.cancelRect);
                        ChatActivityEnterView.this.slideText.getLocationOnScreen(this.coords);
                        int[] iArr = this.coords;
                        rect.offset(iArr[0], iArr[1]);
                        ChatActivityEnterView.this.recordCircle.getLocationOnScreen(this.coords);
                        int[] iArr2 = this.coords;
                        rect.offset(-iArr2[0], -iArr2[1]);
                        accessibilityNodeInfoCompat.setBoundsInParent(rect);
                    }
                    i2 = R.string.Cancel;
                    str = "Cancel";
                }
                string = LocaleController.getString(str, i2);
                accessibilityNodeInfoCompat.setText(string);
            }
        }

        public RecordCircle(Context context) {
            super(context);
            this.tinyWaveDrawable = new BlobDrawable(11, LiteMode.FLAGS_CHAT);
            this.bigWaveDrawable = new BlobDrawable(12, LiteMode.FLAGS_CHAT);
            this.circleRadius = AndroidUtilities.dpf2(41.0f);
            this.circleRadiusAmplitude = AndroidUtilities.dp(30.0f);
            this.rectF = new RectF();
            this.wavesEnterAnimation = BitmapDescriptorFactory.HUE_RED;
            this.showWaves = true;
            VirtualViewHelper virtualViewHelper = new VirtualViewHelper(this);
            this.virtualViewHelper = virtualViewHelper;
            ViewCompat.setAccessibilityDelegate(this, virtualViewHelper);
            this.tinyWaveDrawable.minRadius = AndroidUtilities.dp(47.0f);
            this.tinyWaveDrawable.maxRadius = AndroidUtilities.dp(55.0f);
            this.tinyWaveDrawable.generateBlob();
            this.bigWaveDrawable.minRadius = AndroidUtilities.dp(47.0f);
            this.bigWaveDrawable.maxRadius = AndroidUtilities.dp(55.0f);
            this.bigWaveDrawable.generateBlob();
            this.iconScale = 1.0f;
            float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            this.touchSlop = scaledTouchSlop * scaledTouchSlop;
            updateColors();
        }

        private void checkDrawables() {
            if (ChatActivityEnterView.this.micDrawable != null) {
                return;
            }
            ChatActivityEnterView.this.micDrawable = getResources().getDrawable(R.drawable.input_mic_pressed).mutate();
            Drawable drawable = ChatActivityEnterView.this.micDrawable;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_messagePanelVoicePressed;
            int themedColor = chatActivityEnterView.getThemedColor(i);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            drawable.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            ChatActivityEnterView.this.cameraDrawable = getResources().getDrawable(R.drawable.input_video_pressed).mutate();
            ChatActivityEnterView.this.cameraDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), mode));
            ChatActivityEnterView.this.sendDrawable = getResources().getDrawable(R.drawable.attach_send).mutate();
            ChatActivityEnterView.this.sendDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), mode));
            ChatActivityEnterView.this.micOutline = getResources().getDrawable(R.drawable.input_mic).mutate();
            Drawable drawable2 = ChatActivityEnterView.this.micOutline;
            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
            int i2 = Theme.key_chat_messagePanelIcons;
            drawable2.setColorFilter(new PorterDuffColorFilter(chatActivityEnterView2.getThemedColor(i2), mode));
            ChatActivityEnterView.this.cameraOutline = getResources().getDrawable(R.drawable.input_video).mutate();
            ChatActivityEnterView.this.cameraOutline.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i2), mode));
        }

        private void drawIconInternal(Canvas canvas, Drawable drawable, Drawable drawable2, float f, int i) {
            checkDrawables();
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (f != BitmapDescriptorFactory.HUE_RED && f != 1.0f && drawable2 != null) {
                canvas.save();
                canvas.scale(f, f, drawable.getBounds().centerX(), drawable.getBounds().centerY());
                float f3 = i;
                drawable.setAlpha((int) (f3 * f));
                drawable.draw(canvas);
                canvas.restore();
                canvas.save();
                float f4 = 1.0f - f;
                canvas.scale(f4, f4, drawable.getBounds().centerX(), drawable.getBounds().centerY());
                drawable2.setAlpha((int) (f3 * f4));
                drawable2.draw(canvas);
                canvas.restore();
                return;
            }
            if (ChatActivityEnterView.this.canceledByGesture && ChatActivityEnterView.this.slideToCancelProgress == 1.0f) {
                ChatActivityEnterView.this.audioVideoSendButton.setAlpha(1.0f);
                setVisibility(8);
                return;
            }
            if (ChatActivityEnterView.this.canceledByGesture && ChatActivityEnterView.this.slideToCancelProgress < 1.0f) {
                Drawable drawable3 = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraOutline : ChatActivityEnterView.this.micOutline;
                drawable3.setBounds(drawable.getBounds());
                if (ChatActivityEnterView.this.slideToCancelProgress >= 0.93f) {
                    f2 = ((ChatActivityEnterView.this.slideToCancelProgress - 0.93f) / 0.07f) * 255.0f;
                }
                int i2 = (int) f2;
                drawable3.setAlpha(i2);
                drawable3.draw(canvas);
                drawable3.setAlpha(255);
                i = 255 - i2;
            } else if (ChatActivityEnterView.this.canceledByGesture) {
                return;
            }
            drawable.setAlpha(i);
            drawable.draw(canvas);
        }

        public void canceledByGesture() {
            ChatActivityEnterView.this.canceledByGesture = true;
        }

        @Override // android.view.View
        protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
            return super.dispatchHoverEvent(motionEvent) || this.virtualViewHelper.dispatchHoverEvent(motionEvent);
        }

        public void drawIcon(Canvas canvas, int i, int i2, float f) {
            Drawable drawable;
            checkDrawables();
            if (isSendButtonVisible()) {
                drawable = this.progressToSendButton != 1.0f ? ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable : null;
                drawable = ChatActivityEnterView.this.sendDrawable;
            } else {
                drawable = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable;
            }
            Drawable drawable2 = drawable;
            Drawable drawable3 = drawable;
            ChatActivityEnterView.this.sendRect.set(i - (drawable2.getIntrinsicWidth() / 2), i2 - (drawable2.getIntrinsicHeight() / 2), (drawable2.getIntrinsicWidth() / 2) + i, (drawable2.getIntrinsicHeight() / 2) + i2);
            drawable2.setBounds(ChatActivityEnterView.this.sendRect);
            if (drawable3 != null) {
                drawable3.setBounds(i - (drawable3.getIntrinsicWidth() / 2), i2 - (drawable3.getIntrinsicHeight() / 2), i + (drawable3.getIntrinsicWidth() / 2), i2 + (drawable3.getIntrinsicHeight() / 2));
            }
            drawIconInternal(canvas, drawable2, drawable3, this.progressToSendButton, (int) (f * 255.0f));
        }

        public void drawWaves(Canvas canvas, float f, float f2, float f3) {
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.wavesEnterAnimation);
            float f4 = ChatActivityEnterView.this.slideToCancelProgress > 0.7f ? 1.0f : ChatActivityEnterView.this.slideToCancelProgress / 0.7f;
            canvas.save();
            float f5 = ChatActivityEnterView.this.scale * f4 * interpolation * (BlobDrawable.SCALE_BIG_MIN + (this.bigWaveDrawable.amplitude * 1.4f)) * f3;
            canvas.scale(f5, f5, f, f2);
            BlobDrawable blobDrawable = this.bigWaveDrawable;
            blobDrawable.draw(f, f2, canvas, blobDrawable.paint);
            canvas.restore();
            float f6 = ChatActivityEnterView.this.scale * f4 * interpolation * (BlobDrawable.SCALE_SMALL_MIN + (this.tinyWaveDrawable.amplitude * 1.4f)) * f3;
            canvas.save();
            canvas.scale(f6, f6, f, f2);
            BlobDrawable blobDrawable2 = this.tinyWaveDrawable;
            blobDrawable2.draw(f, f2, canvas, blobDrawable2.paint);
            canvas.restore();
        }

        public float getControlsScale() {
            return ChatActivityEnterView.this.controlsScale;
        }

        public float getScale() {
            return ChatActivityEnterView.this.scale;
        }

        public float getTransformToSeekbarProgressStep3() {
            return this.progressToSeekbarStep3;
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            ControlsView controlsView = ChatActivityEnterView.this.controlsView;
            if (controlsView != null) {
                controlsView.invalidate();
            }
        }

        public boolean isSendButtonVisible() {
            return ChatActivityEnterView.this.sendButtonVisible;
        }

        /* JADX WARN: Removed duplicated region for block: B:124:0x0440  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0548  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x05ab  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            float interpolation;
            float fMax;
            float f;
            float interpolation2;
            Drawable drawable;
            ChatActivityEnterView chatActivityEnterView;
            float f2;
            Canvas canvas2;
            Drawable drawable2;
            Drawable drawable3;
            float f3;
            if (this.skipDraw) {
                return;
            }
            int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp2(26.0f);
            int iDp = (int) (AndroidUtilities.dp(170.0f) + BitmapDescriptorFactory.HUE_RED);
            this.drawingCx = ChatActivityEnterView.this.slideDelta + measuredWidth;
            float f4 = iDp;
            this.drawingCy = f4;
            float f5 = ChatActivityEnterView.this.scale <= 0.5f ? ChatActivityEnterView.this.scale / 0.5f : ChatActivityEnterView.this.scale <= 0.75f ? 1.0f - (((ChatActivityEnterView.this.scale - 0.5f) / 0.25f) * 0.1f) : (((ChatActivityEnterView.this.scale - 0.75f) / 0.25f) * 0.1f) + 0.9f;
            long jCurrentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            float f6 = this.animateToAmplitude;
            float f7 = this.amplitude;
            if (f6 != f7) {
                float f8 = this.animateAmplitudeDiff;
                float f9 = f7 + (jCurrentTimeMillis * f8);
                this.amplitude = f9;
                if (f8 <= BitmapDescriptorFactory.HUE_RED ? f9 < f6 : f9 > f6) {
                    this.amplitude = f6;
                }
                invalidate();
            }
            float interpolation3 = (this.circleRadius + (this.circleRadiusAmplitude * this.amplitude)) * f5 * (ChatActivityEnterView.this.canceledByGesture ? CubicBezierInterpolator.EASE_OUT.getInterpolation(1.0f - ChatActivityEnterView.this.slideToCancelProgress) * 0.7f : (ChatActivityEnterView.this.slideToCancelProgress * 0.3f) + 0.7f);
            this.progressToSeekbarStep3 = BitmapDescriptorFactory.HUE_RED;
            if (ChatActivityEnterView.this.transformToSeekbar != BitmapDescriptorFactory.HUE_RED) {
                ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                if (chatActivityEnterView2.audioTimelineView != null) {
                    float f10 = chatActivityEnterView2.transformToSeekbar > 0.38f ? 1.0f : ChatActivityEnterView.this.transformToSeekbar / 0.38f;
                    float fMax2 = ChatActivityEnterView.this.transformToSeekbar > 0.63f ? 1.0f : Math.max(BitmapDescriptorFactory.HUE_RED, (ChatActivityEnterView.this.transformToSeekbar - 0.38f) / 0.25f);
                    this.progressToSeekbarStep3 = Math.max(BitmapDescriptorFactory.HUE_RED, ((ChatActivityEnterView.this.transformToSeekbar - 0.38f) - 0.25f) / 0.37f);
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_BOTH;
                    interpolation = cubicBezierInterpolator.getInterpolation(f10);
                    interpolation2 = cubicBezierInterpolator.getInterpolation(fMax2);
                    this.progressToSeekbarStep3 = cubicBezierInterpolator.getInterpolation(this.progressToSeekbarStep3);
                    float fDp = AndroidUtilities.dp(8.0f);
                    interpolation3 = (((interpolation3 + (AndroidUtilities.dp(16.0f) * interpolation)) - fDp) * (1.0f - interpolation2)) + fDp;
                    fMax = 1.0f;
                    f = BitmapDescriptorFactory.HUE_RED;
                } else {
                    if (ChatActivityEnterView.this.exitTransition != BitmapDescriptorFactory.HUE_RED) {
                        float f11 = ChatActivityEnterView.this.exitTransition > 0.6f ? 1.0f : ChatActivityEnterView.this.exitTransition / 0.6f;
                        ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                        boolean z = chatActivityEnterView3.messageTransitionIsRunning;
                        float fMax3 = chatActivityEnterView3.exitTransition;
                        if (!z) {
                            fMax3 = Math.max(BitmapDescriptorFactory.HUE_RED, (fMax3 - 0.6f) / 0.4f);
                        }
                        CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_BOTH;
                        interpolation = cubicBezierInterpolator2.getInterpolation(f11);
                        float interpolation4 = cubicBezierInterpolator2.getInterpolation(fMax3);
                        interpolation3 = (interpolation3 + (AndroidUtilities.dp(16.0f) * interpolation)) * (1.0f - interpolation4);
                        if (!LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || ChatActivityEnterView.this.exitTransition <= 0.6f) {
                            f = interpolation4;
                            fMax = 1.0f;
                        } else {
                            fMax = Math.max(BitmapDescriptorFactory.HUE_RED, 1.0f - ((ChatActivityEnterView.this.exitTransition - 0.6f) / 0.4f));
                            f = interpolation4;
                        }
                    } else {
                        interpolation = BitmapDescriptorFactory.HUE_RED;
                        fMax = 1.0f;
                        f = BitmapDescriptorFactory.HUE_RED;
                    }
                    interpolation2 = BitmapDescriptorFactory.HUE_RED;
                }
            }
            if (ChatActivityEnterView.this.canceledByGesture && ChatActivityEnterView.this.slideToCancelProgress > 0.7f) {
                fMax *= 1.0f - ((ChatActivityEnterView.this.slideToCancelProgress - 0.7f) / 0.3f);
            }
            if (this.progressToSeekbarStep3 > BitmapDescriptorFactory.HUE_RED) {
                ChatActivityEnterView.this.paint.setColor(ColorUtils.blendARGB(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoiceBackground), ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordedVoiceBackground), this.progressToSeekbarStep3));
            } else {
                ChatActivityEnterView.this.paint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoiceBackground));
            }
            checkDrawables();
            Drawable drawable4 = null;
            if (isSendButtonVisible()) {
                float f12 = this.progressToSendButton;
                if (f12 != 1.0f) {
                    float f13 = f12 + (jCurrentTimeMillis / 150.0f);
                    this.progressToSendButton = f13;
                    if (f13 > 1.0f) {
                        this.progressToSendButton = 1.0f;
                    }
                    drawable4 = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable;
                }
                drawable = ChatActivityEnterView.this.sendDrawable;
            } else {
                drawable = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable;
            }
            float f14 = interpolation3;
            float f15 = fMax;
            ChatActivityEnterView.this.sendRect.set(measuredWidth - (drawable.getIntrinsicWidth() / 2), iDp - (drawable.getIntrinsicHeight() / 2), measuredWidth + (drawable.getIntrinsicWidth() / 2), iDp + (drawable.getIntrinsicHeight() / 2));
            drawable.setBounds(ChatActivityEnterView.this.sendRect);
            if (drawable4 != null) {
                drawable4.setBounds(measuredWidth - (drawable4.getIntrinsicWidth() / 2), iDp - (drawable4.getIntrinsicHeight() / 2), (drawable4.getIntrinsicWidth() / 2) + measuredWidth, iDp + (drawable4.getIntrinsicHeight() / 2));
            }
            int y = 0;
            if (this.incIdle) {
                chatActivityEnterView = ChatActivityEnterView.this;
                float f16 = chatActivityEnterView.idleProgress + 0.01f;
                chatActivityEnterView.idleProgress = f16;
                f2 = 1.0f;
                if (f16 > 1.0f) {
                    this.incIdle = false;
                    chatActivityEnterView.idleProgress = f2;
                }
            } else {
                chatActivityEnterView = ChatActivityEnterView.this;
                float f17 = chatActivityEnterView.idleProgress - 0.01f;
                chatActivityEnterView.idleProgress = f17;
                f2 = BitmapDescriptorFactory.HUE_RED;
                if (f17 < BitmapDescriptorFactory.HUE_RED) {
                    this.incIdle = true;
                    chatActivityEnterView.idleProgress = f2;
                }
            }
            if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                this.tinyWaveDrawable.minRadius = AndroidUtilities.dp(47.0f);
                this.tinyWaveDrawable.maxRadius = AndroidUtilities.dp(47.0f) + (AndroidUtilities.dp(15.0f) * BlobDrawable.FORM_SMALL_MAX);
                this.bigWaveDrawable.minRadius = AndroidUtilities.dp(50.0f);
                this.bigWaveDrawable.maxRadius = AndroidUtilities.dp(50.0f) + (AndroidUtilities.dp(12.0f) * BlobDrawable.FORM_BIG_MAX);
                this.bigWaveDrawable.updateAmplitude(jCurrentTimeMillis);
                BlobDrawable blobDrawable = this.bigWaveDrawable;
                blobDrawable.update(blobDrawable.amplitude, 1.01f);
                this.tinyWaveDrawable.updateAmplitude(jCurrentTimeMillis);
                BlobDrawable blobDrawable2 = this.tinyWaveDrawable;
                blobDrawable2.update(blobDrawable2.amplitude, 1.02f);
            }
            this.lastUpdateTime = System.currentTimeMillis();
            float f18 = ChatActivityEnterView.this.slideToCancelProgress > 0.7f ? 1.0f : ChatActivityEnterView.this.slideToCancelProgress / 0.7f;
            if (!LiteMode.isEnabled(LiteMode.FLAGS_CHAT) || interpolation2 == 1.0f || f >= 0.4f || f18 <= BitmapDescriptorFactory.HUE_RED || ChatActivityEnterView.this.canceledByGesture) {
                canvas2 = canvas;
            } else {
                if (this.showWaves) {
                    float f19 = this.wavesEnterAnimation;
                    if (f19 != 1.0f) {
                        float f20 = f19 + 0.04f;
                        this.wavesEnterAnimation = f20;
                        if (f20 > 1.0f) {
                            this.wavesEnterAnimation = 1.0f;
                        }
                    }
                }
                if (!this.voiceEnterTransitionInProgress) {
                    float interpolation5 = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.wavesEnterAnimation);
                    canvas.save();
                    float f21 = 1.0f - interpolation;
                    float f22 = ChatActivityEnterView.this.scale * f21 * f18 * interpolation5 * (BlobDrawable.SCALE_BIG_MIN + (this.bigWaveDrawable.amplitude * 1.4f));
                    canvas2 = canvas;
                    canvas2.scale(f22, f22, ChatActivityEnterView.this.slideDelta + measuredWidth, f4);
                    this.bigWaveDrawable.draw(ChatActivityEnterView.this.slideDelta + measuredWidth, f4, canvas2, this.bigWaveDrawable.paint);
                    canvas.restore();
                    float f23 = ChatActivityEnterView.this.scale * f21 * f18 * interpolation5 * (BlobDrawable.SCALE_SMALL_MIN + (this.tinyWaveDrawable.amplitude * 1.4f));
                    canvas.save();
                    canvas2.scale(f23, f23, ChatActivityEnterView.this.slideDelta + measuredWidth, f4);
                    this.tinyWaveDrawable.draw(ChatActivityEnterView.this.slideDelta + measuredWidth, f4, canvas2, this.tinyWaveDrawable.paint);
                    canvas.restore();
                }
            }
            if (!this.voiceEnterTransitionInProgress) {
                ChatActivityEnterView.this.paint.setAlpha((int) (this.paintAlpha * f15));
                if (ChatActivityEnterView.this.scale == 1.0f) {
                    if (ChatActivityEnterView.this.transformToSeekbar == BitmapDescriptorFactory.HUE_RED) {
                        drawable2 = drawable;
                        drawable3 = drawable4;
                        f3 = f14;
                        canvas2.drawCircle(ChatActivityEnterView.this.slideDelta + measuredWidth, f4, f3, ChatActivityEnterView.this.paint);
                    } else if (ChatActivityEnterView.this.isInVideoMode || this.progressToSeekbarStep3 <= BitmapDescriptorFactory.HUE_RED) {
                        drawable2 = drawable;
                        drawable3 = drawable4;
                        f3 = f14;
                        canvas2.drawCircle(ChatActivityEnterView.this.slideDelta + measuredWidth, f4, f3 * (1.0f - this.progressToSeekbarStep3), ChatActivityEnterView.this.paint);
                    } else {
                        if (ChatActivityEnterView.this.audioTimelineView != null) {
                            float f24 = f4 + f14;
                            float f25 = f4 - f14;
                            float f26 = r0.slideDelta + measuredWidth + f14;
                            float f27 = (ChatActivityEnterView.this.slideDelta + measuredWidth) - f14;
                            RecordedAudioPlayerView recordedAudioPlayerView = ChatActivityEnterView.this.audioTimelineView;
                            drawable3 = drawable4;
                            int x = 0;
                            for (View view = (View) recordedAudioPlayerView.getParent(); view != getParent(); view = (View) view.getParent()) {
                                y = (int) (y + view.getY());
                                x = (int) (x + view.getX());
                            }
                            float f28 = y;
                            float y2 = (recordedAudioPlayerView.getY() + f28) - getY();
                            drawable2 = drawable;
                            float y3 = ((recordedAudioPlayerView.getY() + recordedAudioPlayerView.getMeasuredHeight()) + f28) - getY();
                            float f29 = x;
                            float x2 = (((recordedAudioPlayerView.getX() + recordedAudioPlayerView.getMeasuredWidth()) + f29) - getX()) - ChatActivityEnterView.this.horizontalPadding;
                            float x3 = ((recordedAudioPlayerView.getX() + f29) - getX()) + ChatActivityEnterView.this.horizontalPadding;
                            float measuredHeight = ChatActivityEnterView.this.isInVideoMode() ? BitmapDescriptorFactory.HUE_RED : recordedAudioPlayerView.getMeasuredHeight() / 2.0f;
                            float fLerp = AndroidUtilities.lerp(f25, y2, this.progressToSeekbarStep3);
                            float fLerp2 = AndroidUtilities.lerp(f24, y3, this.progressToSeekbarStep3);
                            float fLerp3 = AndroidUtilities.lerp(f27, x3, this.progressToSeekbarStep3);
                            float fLerp4 = AndroidUtilities.lerp(f26, x2, this.progressToSeekbarStep3);
                            f3 = f14;
                            AndroidUtilities.lerp(f3, measuredHeight, this.progressToSeekbarStep3);
                            this.rectF.set(fLerp3, fLerp, fLerp4, fLerp2);
                            ChatActivityEnterView.this.audioTimelineView.drawIn(canvas2, this.rectF, this.progressToSeekbarStep3);
                        }
                    }
                    canvas.save();
                    canvas2.translate(ChatActivityEnterView.this.slideDelta, BitmapDescriptorFactory.HUE_RED);
                    drawIconInternal(canvas, drawable2, drawable3, this.progressToSendButton, (int) ((1.0f - interpolation2) * (1.0f - f) * 255.0f));
                    canvas.restore();
                } else {
                    drawable2 = drawable;
                    drawable3 = drawable4;
                    f3 = f14;
                }
            }
            if (ChatActivityEnterView.this.scale != 1.0f) {
                canvas2.drawCircle(measuredWidth + ChatActivityEnterView.this.slideDelta, f4, f3, ChatActivityEnterView.this.paint);
                float f30 = ChatActivityEnterView.this.canceledByGesture ? 1.0f - ChatActivityEnterView.this.slideToCancelProgress : 1.0f;
                canvas.save();
                canvas2.translate(ChatActivityEnterView.this.slideDelta, BitmapDescriptorFactory.HUE_RED);
                drawIconInternal(canvas, drawable2, drawable3, this.progressToSendButton, (int) (f30 * 255.0f));
                canvas.restore();
            }
            this.drawingCircleRadius = f3;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            View.MeasureSpec.getSize(i);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(194.0f), 1073741824));
            float measuredWidth = getMeasuredWidth() * 0.35f;
            if (measuredWidth > AndroidUtilities.dp(140.0f)) {
                measuredWidth = AndroidUtilities.dp(140.0f);
            }
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            chatActivityEnterView.slideDelta = (int) ((-measuredWidth) * (1.0f - chatActivityEnterView.slideToCancelProgress));
        }

        public void resetLockTranslation(boolean z) {
            if (!z) {
                ChatActivityEnterView.this.sendButtonVisible = false;
                ChatActivityEnterView.this.lockAnimatedTranslation = -1.0f;
                ChatActivityEnterView.this.startTranslation = -1.0f;
                ChatActivityEnterView.this.slideToCancelProgress = 1.0f;
                ChatActivityEnterView.this.slideToCancelLockProgress = 1.0f;
                ChatActivityEnterView.this.snapAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                ChatActivityEnterView.this.controlsScale = BitmapDescriptorFactory.HUE_RED;
            }
            invalidate();
            ChatActivityEnterView.this.transformToSeekbar = BitmapDescriptorFactory.HUE_RED;
            ChatActivityEnterView.this.isRecordingStateChanged();
            ChatActivityEnterView.this.exitTransition = BitmapDescriptorFactory.HUE_RED;
            this.iconScale = 1.0f;
            ChatActivityEnterView.this.scale = BitmapDescriptorFactory.HUE_RED;
            ChatActivityEnterView.this.tooltipAlpha = BitmapDescriptorFactory.HUE_RED;
            ChatActivityEnterView.this.showTooltip = false;
            this.progressToSendButton = BitmapDescriptorFactory.HUE_RED;
            ChatActivityEnterView.this.canceledByGesture = false;
            ControlsView controlsView = ChatActivityEnterView.this.controlsView;
            if (controlsView != null) {
                controlsView.invalidate();
            }
        }

        public void setAmplitude(double d) {
            this.bigWaveDrawable.setValue((float) (Math.min(1800.0d, d) / 1800.0d), true);
            this.tinyWaveDrawable.setValue((float) (Math.min(1800.0d, d) / 1800.0d), false);
            float fMin = (float) (Math.min(1800.0d, d) / 1800.0d);
            this.animateToAmplitude = fMin;
            this.animateAmplitudeDiff = (fMin - this.amplitude) / 375.0f;
            invalidate();
        }

        public void setControlsScale(float f) {
            ChatActivityEnterView.this.controlsScale = f;
            ControlsView controlsView = ChatActivityEnterView.this.controlsView;
            if (controlsView != null) {
                controlsView.invalidate();
            }
        }

        public int setLockTranslation(float f) {
            if (ChatActivityEnterView.this.sendButtonVisible) {
                return 2;
            }
            if (ChatActivityEnterView.this.lockAnimatedTranslation == -1.0f) {
                ChatActivityEnterView.this.startTranslation = f;
            }
            ChatActivityEnterView.this.lockAnimatedTranslation = f;
            invalidate();
            if (ChatActivityEnterView.this.canceledByGesture || ChatActivityEnterView.this.slideToCancelProgress < 0.7f || ChatActivityEnterView.this.startTranslation - ChatActivityEnterView.this.lockAnimatedTranslation < AndroidUtilities.dp(57.0f)) {
                return 1;
            }
            ChatActivityEnterView.this.sendButtonVisible = true;
            ControlsView controlsView = ChatActivityEnterView.this.controlsView;
            if (controlsView != null) {
                controlsView.showPauseHint();
            }
            return 2;
        }

        public void setMovingCords(float f, float f2) {
            float f3 = f - this.lastMovingX;
            float f4 = f2 - this.lastMovingY;
            float f5 = (f3 * f3) + (f4 * f4);
            this.lastMovingY = f2;
            this.lastMovingX = f;
            if (ChatActivityEnterView.this.showTooltip && ChatActivityEnterView.this.tooltipAlpha == BitmapDescriptorFactory.HUE_RED && f5 > this.touchSlop) {
                ChatActivityEnterView.this.showTooltipStartTime = System.currentTimeMillis();
            }
        }

        public void setScale(float f) {
            ChatActivityEnterView.this.scale = f;
            invalidate();
        }

        public void setSendButtonInvisible() {
            ChatActivityEnterView.this.sendButtonVisible = false;
            invalidate();
            ControlsView controlsView = ChatActivityEnterView.this.controlsView;
            if (controlsView != null) {
                controlsView.invalidate();
            }
        }

        public void setTransformToSeekbar(float f) {
            ChatActivityEnterView.this.transformToSeekbar = f;
            invalidate();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
        }

        public void showWaves(boolean z, boolean z2) {
            if (!z2) {
                this.wavesEnterAnimation = z ? 1.0f : 0.5f;
            }
            this.showWaves = z;
        }

        public void updateColors() {
            Paint paint = ChatActivityEnterView.this.paint;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_messagePanelVoiceBackground;
            paint.setColor(chatActivityEnterView.getThemedColor(i));
            this.tinyWaveDrawable.paint.setColor(ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 38));
            this.bigWaveDrawable.paint.setColor(ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 76));
            this.paintAlpha = ChatActivityEnterView.this.paint.getAlpha();
        }
    }

    private class RecordDot extends View {
        private float alpha;
        boolean attachedToWindow;
        RLottieDrawable drawable;
        private boolean enterAnimation;
        private boolean isIncr;
        private long lastUpdateTime;
        boolean playing;

        public RecordDot(Context context) {
            super(context);
            int i = R.raw.chat_audio_record_delete_2;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f), false, null);
            this.drawable = rLottieDrawable;
            rLottieDrawable.setInvalidateOnProgressSet(true);
            updateColors();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attachedToWindow = true;
            if (this.playing) {
                this.drawable.start();
            }
            this.drawable.setMasterParent(this);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attachedToWindow = false;
            this.drawable.stop();
            this.drawable.setMasterParent(null);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.playing) {
                this.drawable.setAlpha((int) (this.alpha * 255.0f));
            }
            ChatActivityEnterView.this.redDotPaint.setAlpha((int) (this.alpha * 255.0f));
            long jCurrentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            if (this.enterAnimation) {
                this.alpha = 1.0f;
            } else if (this.isIncr || this.playing) {
                float f = this.alpha + (jCurrentTimeMillis / 600.0f);
                this.alpha = f;
                if (f >= 1.0f) {
                    this.alpha = 1.0f;
                    this.isIncr = false;
                }
            } else {
                float f2 = this.alpha - (jCurrentTimeMillis / 600.0f);
                this.alpha = f2;
                if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                    this.alpha = BitmapDescriptorFactory.HUE_RED;
                    this.isIncr = true;
                }
            }
            this.lastUpdateTime = System.currentTimeMillis();
            if (this.playing) {
                this.drawable.draw(canvas);
            }
            if (!this.playing || !this.drawable.hasBitmap()) {
                canvas.drawCircle(getMeasuredWidth() >> 1, getMeasuredHeight() >> 1, AndroidUtilities.dp(5.0f), ChatActivityEnterView.this.redDotPaint);
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        }

        public void playDeleteAnimation() {
            this.playing = true;
            this.drawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            if (this.attachedToWindow) {
                this.drawable.start();
            }
        }

        public void resetAlpha() {
            this.alpha = 1.0f;
            this.lastUpdateTime = System.currentTimeMillis();
            this.isIncr = false;
            this.playing = false;
            this.drawable.stop();
            invalidate();
        }

        public void updateColors() {
            int themedColor = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordedVoiceDot);
            int themedColor2 = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelBackground);
            ChatActivityEnterView.this.redDotPaint.setColor(themedColor);
            this.drawable.beginApplyLayerColors();
            this.drawable.setLayerColor("Cup Red.**", themedColor);
            this.drawable.setLayerColor("Box.**", themedColor);
            this.drawable.setLayerColor("Line 1.**", themedColor2);
            this.drawable.setLayerColor("Line 2.**", themedColor2);
            this.drawable.setLayerColor("Line 3.**", themedColor2);
            this.drawable.commitApplyLayerColors();
        }
    }

    private class ScrimDrawable extends Drawable {
        private Paint paint;

        public ScrimDrawable() {
            Paint paint = new Paint();
            this.paint = paint;
            paint.setColor(0);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (ChatActivityEnterView.this.emojiView == null) {
                return;
            }
            this.paint.setAlpha(Math.round(ChatActivityEnterView.this.stickersExpansionProgress * 102.0f));
            float width = ChatActivityEnterView.this.getWidth();
            float y = (ChatActivityEnterView.this.emojiView.getY() - ChatActivityEnterView.this.getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, y + (editTextCaption == null ? BitmapDescriptorFactory.HUE_RED : editTextCaption.getOffsetY()), this.paint);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public static class SendButton extends View {
        private final AnimatedFloat animatedPriceVisible;
        private final Paint backgroundPaint;
        public final ButtonBounce bounce;
        private ValueAnimator bounceCountAnimator;
        public boolean center;
        private float circlePadX;
        private float circlePadY;
        private int circleSize;
        private final AnimatedTextView.AnimatedTextDrawable count;
        private float countBounceScale;
        private final Paint countClearPaint;
        private Drawable drawable;
        private int drawableColor;
        private Drawable drawableInverse;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiDrawable;
        private Drawable inactiveDrawable;
        private boolean infiniteLoading;
        private final AnimatedFloat loadingAnimatedProgress;
        private final AnimatedFloat loadingAnimatedShown;
        private final FastOutSlowInInterpolator loadingInterpolator;
        private final Paint loadingPaint;
        private float loadingProgress;
        private boolean loadingShown;
        private int messagesCount;
        public final AnimatedFloat open;
        private final Path path;
        private final AnimatedTextView.AnimatedTextDrawable priceText;
        public int resId;
        public final Theme.ResourcesProvider resourcesProvider;
        private final ColoredImageSpan[] spans;
        private long starsPrice;

        public SendButton(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animatedPriceVisible = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            this.backgroundPaint = new Paint(1);
            Paint paint = new Paint(1);
            this.countClearPaint = paint;
            this.circleSize = -1;
            this.spans = new ColoredImageSpan[1];
            this.open = new AnimatedFloat(this, 0L, 420L, cubicBezierInterpolator);
            this.bounce = new ButtonBounce(this);
            this.loadingInterpolator = new FastOutSlowInInterpolator();
            this.loadingAnimatedShown = new AnimatedFloat(this, 0L, 420L, cubicBezierInterpolator);
            this.loadingAnimatedProgress = new AnimatedFloat(this, 0L, 500L, cubicBezierInterpolator);
            this.path = new Path();
            Paint paint2 = new Paint(1);
            this.loadingPaint = paint2;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.count = animatedTextDrawable;
            this.countBounceScale = 1.0f;
            this.resId = i;
            this.resourcesProvider = resourcesProvider;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable();
            this.priceText = animatedTextDrawable2;
            animatedTextDrawable2.setTextSize(AndroidUtilities.dp(15.0f));
            animatedTextDrawable2.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable2.setTextColor(-1);
            animatedTextDrawable2.setGravity(5);
            animatedTextDrawable2.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable2.setCallback(this);
            this.drawable = context.getResources().getDrawable(i).mutate();
            this.inactiveDrawable = context.getResources().getDrawable(i).mutate();
            this.drawableInverse = context.getResources().getDrawable(i).mutate();
            this.emojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(14.0f));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
            paint2.setStrokeJoin(Paint.Join.ROUND);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setTextColor(-1);
            animatedTextDrawable.setTextSize(AndroidUtilities.dp(14.0f));
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
            animatedTextDrawable.setGravity(17);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bounceCount$0(ValueAnimator valueAnimator) {
            this.countBounceScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }

        public void bounceCount() {
            ValueAnimator valueAnimator = this.bounceCountAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.9f, 1.0f);
            this.bounceCountAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$SendButton$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$bounceCount$0(valueAnimator2);
                }
            });
            this.bounceCountAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.SendButton.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SendButton.this.countBounceScale = 1.0f;
                }
            });
            this.bounceCountAnimator.setDuration(180L);
            this.bounceCountAnimator.setInterpolator(new OvershootInterpolator());
            this.bounceCountAnimator.start();
        }

        public void copyTo(SendButton sendButton) {
            sendButton.count.setText(this.count.getText(), false);
            sendButton.countBounceScale = this.countBounceScale;
            sendButton.setEmoji(this.emojiDrawable.getDrawable());
            sendButton.setStarsPrice(this.starsPrice, this.messagesCount);
            sendButton.open.force(this.open.get());
            sendButton.animatedPriceVisible.force(this.animatedPriceVisible.get());
            sendButton.setCircleSize(this.circleSize);
            sendButton.setCirclePadding(this.circlePadX, this.circlePadY);
        }

        public int getCircleSize() {
            int i = this.circleSize;
            return i >= 0 ? i : getMeasuredHeight() - AndroidUtilities.dp(8.0f);
        }

        public int getFillColor() {
            return Theme.getColor(Theme.key_chat_messagePanelSend, this.resourcesProvider);
        }

        public int height() {
            return height(getMeasuredHeight());
        }

        public int height(int i) {
            return (int) AndroidUtilities.lerp(this.circlePadY + getCircleSize() + this.circlePadY, AndroidUtilities.dp(32.0f), this.starsPrice > 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            super.invalidate(i, i2, i3, i4);
        }

        public boolean isInScheduleMode() {
            return false;
        }

        public abstract boolean isInactive();

        public boolean isOpen() {
            return this.starsPrice > 0;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            float f2;
            int i;
            int i2;
            float f3;
            float f4;
            float fCurrentTimeMillis;
            float f5;
            Paint paint;
            boolean z;
            Canvas canvas2;
            RectF rectF;
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            updateColors();
            Drawable drawable = isInactive() ? this.inactiveDrawable : this.drawable;
            int measuredWidth = (getMeasuredWidth() - (getMeasuredHeight() / 2)) - (drawable.getIntrinsicWidth() / 2);
            int measuredHeight = (getMeasuredHeight() - drawable.getIntrinsicHeight()) / 2;
            if (!this.center) {
                if (isInScheduleMode()) {
                    measuredHeight -= AndroidUtilities.dp(1.0f);
                } else {
                    measuredWidth += AndroidUtilities.dp(2.0f);
                }
            }
            int i3 = measuredWidth;
            int i4 = measuredHeight;
            float f6 = this.loadingAnimatedShown.set(this.loadingShown);
            float f7 = this.open.set(isOpen());
            float f8 = this.animatedPriceVisible.set(this.starsPrice > 0);
            if (f7 < 1.0f) {
                drawable.setBounds(i3, i4, drawable.getIntrinsicWidth() + i3, drawable.getIntrinsicHeight() + i4);
                drawable.draw(canvas);
            }
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.lerp(getMeasuredWidth() - (getMeasuredHeight() / 2.0f), getMeasuredWidth() - AndroidUtilities.dp(4.0f), f7) - this.circlePadX, getMeasuredWidth() - AndroidUtilities.dp(9.0f), f8);
            float fLerp2 = AndroidUtilities.lerp(((getMeasuredHeight() - this.circlePadY) - AndroidUtilities.dp(4.0f)) - (getCircleSize() / 2), getMeasuredHeight() - AndroidUtilities.dp(24.0f), f8);
            float fLerp3 = AndroidUtilities.lerp(getCircleSize(), AndroidUtilities.dp(22.0f) + this.priceText.getCurrentWidth(), f8) * f7;
            float fLerp4 = AndroidUtilities.lerp(getCircleSize(), AndroidUtilities.dp(32.0f), f8) * f7;
            float f9 = fLerp - (fLerp3 / 2.0f);
            setPivotX(f9);
            setPivotY(fLerp2);
            if (f7 > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                this.path.rewind();
                float fMin = Math.min(fLerp3, fLerp4) / 2.0f;
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f10 = fLerp4 / 2.0f;
                rectF2.set(fLerp - fLerp3, fLerp2 - f10, fLerp, f10 + fLerp2);
                this.path.addRoundRect(rectF2, fMin, fMin, Path.Direction.CW);
                canvas.drawPath(this.path, this.backgroundPaint);
                canvas.clipPath(this.path);
                if (f6 > BitmapDescriptorFactory.HUE_RED) {
                    this.loadingPaint.setColor(-1);
                    this.loadingPaint.setAlpha((int) (f6 * 255.0f));
                    float fDp = AndroidUtilities.dp(8.66f);
                    rectF2.set(f9 - fDp, fLerp2 - fDp, f9 + fDp, fDp + fLerp2);
                    if (this.infiniteLoading) {
                        long jCurrentTimeMillis = System.currentTimeMillis() % 5400;
                        i = i3;
                        float interpolation = (jCurrentTimeMillis * 1520) / 5400.0f;
                        float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, interpolation - 20.0f);
                        int i5 = 0;
                        while (i5 < 4) {
                            float f11 = f9;
                            int i6 = i5 * 1350;
                            interpolation += this.loadingInterpolator.getInterpolation((jCurrentTimeMillis - i6) / 667.0f) * 250.0f;
                            fMax += this.loadingInterpolator.getInterpolation((jCurrentTimeMillis - (i6 + 667)) / 667.0f) * 250.0f;
                            i5++;
                            f9 = f11;
                            fLerp = fLerp;
                            fLerp2 = fLerp2;
                            i4 = i4;
                        }
                        float f12 = f9;
                        float f13 = fLerp2;
                        float f14 = fLerp;
                        i2 = i4;
                        rectF = AndroidUtilities.rectTmp;
                        f5 = interpolation - fMax;
                        paint = this.loadingPaint;
                        z = false;
                        canvas2 = canvas;
                        fCurrentTimeMillis = fMax;
                        f2 = f12;
                        f3 = f13;
                        f = f14;
                    } else {
                        f2 = f9;
                        i = i3;
                        i2 = i4;
                        f3 = fLerp2;
                        f = fLerp;
                        fCurrentTimeMillis = (-90.0f) + ((((System.currentTimeMillis() % 3000) / 1000.0f) * 120.0f) % 360.0f);
                        f5 = this.loadingAnimatedProgress.set(this.loadingProgress) * 360.0f;
                        paint = this.loadingPaint;
                        z = false;
                        canvas2 = canvas;
                        rectF = rectF2;
                    }
                    canvas2.drawArc(rectF, fCurrentTimeMillis, f5, z, paint);
                    canvas.save();
                    float fLerp5 = AndroidUtilities.lerp(1.0f, 0.6f, f6);
                    canvas.scale(fLerp5, fLerp5, f2, f3);
                    invalidate();
                } else {
                    f2 = f9;
                    i = i3;
                    i2 = i4;
                    f3 = fLerp2;
                    f = fLerp;
                }
                if (f8 > BitmapDescriptorFactory.HUE_RED) {
                    this.priceText.setBounds((getMeasuredWidth() - this.priceText.getAnimateToWidth()) - AndroidUtilities.dp(20.0f), getMeasuredHeight() - AndroidUtilities.dp(48.0f), getMeasuredWidth() - AndroidUtilities.dp(20.0f), getMeasuredHeight());
                    f4 = 1.0f;
                    this.priceText.setAlpha((int) (f8 * 255.0f * (1.0f - f6)));
                    this.priceText.draw(canvas);
                } else {
                    f4 = 1.0f;
                }
                this.drawableInverse.setAlpha((int) ((f4 - f6) * 255.0f * (f4 - f8)));
                if (this.circleSize > 0) {
                    this.drawableInverse.setBounds((int) (f2 - (r1.getIntrinsicWidth() / 2.0f)), (int) (f3 - (this.drawableInverse.getIntrinsicHeight() / 2.0f)), (int) ((this.drawableInverse.getIntrinsicWidth() / 2.0f) + f2), (int) (f3 + (this.drawableInverse.getIntrinsicHeight() / 2.0f)));
                } else {
                    this.drawableInverse.setBounds(i, i2, i + drawable.getIntrinsicWidth(), i2 + drawable.getIntrinsicHeight());
                }
                this.drawableInverse.draw(canvas);
                if (f6 > BitmapDescriptorFactory.HUE_RED) {
                    canvas.restore();
                }
                canvas.restore();
            } else {
                f = fLerp;
            }
            float fIsNotEmpty = this.count.isNotEmpty() * (1.0f - f8);
            float fMax2 = Math.max(AndroidUtilities.dp(12.0f) + this.count.getCurrentWidth(), AndroidUtilities.dp(24.0f)) / 2.0f;
            float measuredWidth2 = (getMeasuredWidth() - this.circlePadX) - fMax2;
            float measuredHeight2 = (getMeasuredHeight() - this.circlePadY) - fMax2;
            this.count.setBounds((int) (measuredWidth2 - fMax2), (int) (measuredHeight2 - fMax2), (int) (measuredWidth2 + fMax2), (int) (measuredHeight2 + fMax2));
            if (fIsNotEmpty > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(measuredWidth2, measuredHeight2, (AndroidUtilities.dp(2.0f) + fMax2) * fIsNotEmpty * this.countBounceScale, this.countClearPaint);
                canvas.drawCircle(measuredWidth2, measuredHeight2, fMax2 * fIsNotEmpty * this.countBounceScale, this.backgroundPaint);
                this.count.setAlpha((int) (fIsNotEmpty * 255.0f));
                this.count.draw(canvas);
            }
            if (fIsNotEmpty < 1.0f) {
                int iDp = AndroidUtilities.dp(8.0f);
                int iLerp = (int) AndroidUtilities.lerp(((getMeasuredWidth() - (getCircleSize() / 2.0f)) - this.circlePadX) + AndroidUtilities.dp(12.0f), f - AndroidUtilities.dp(2.0f), f8);
                int iLerp2 = (int) AndroidUtilities.lerp(((getMeasuredHeight() - (getCircleSize() / 2.0f)) - this.circlePadY) + AndroidUtilities.dp(10.0f), getMeasuredHeight() - AndroidUtilities.dp(12.0f), f8);
                this.emojiDrawable.setBounds(iLerp - iDp, iLerp2 - iDp, iLerp + iDp, iLerp2 + iDp);
                this.emojiDrawable.setAlpha((int) ((1.0f - fIsNotEmpty) * 255.0f));
                this.emojiDrawable.draw(canvas);
            }
            canvas.restore();
            super.onDraw(canvas);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                return false;
            }
            if (motionEvent.getAction() != 0 || (motionEvent.getX() >= getWidth() - width() && motionEvent.getY() >= getHeight() - height())) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }

        public void setCirclePadding(float f, float f2) {
            this.circlePadX = f;
            this.circlePadY = f2;
        }

        public void setCircleSize(int i) {
            this.circleSize = i;
        }

        public void setCount(int i, boolean z) {
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.count;
            String str = "";
            if (i > 0) {
                str = "" + i;
            }
            animatedTextDrawable.setText(str, z);
            invalidate();
        }

        public void setEffect(long j) {
            TLRPC.TL_availableEffect effect = MessagesController.getInstance(UserConfig.selectedAccount).getEffect(j);
            setEmoji(effect != null ? Emoji.getEmojiDrawable(effect.emoticon) : null);
        }

        public void setEmoji(Drawable drawable) {
            this.emojiDrawable.set(drawable, true);
        }

        public void setLoading(boolean z, float f) {
            if (this.loadingShown == z && (!z || Math.abs(this.loadingProgress - f) < 0.01f)) {
                if (this.infiniteLoading == (Math.abs(f - (-3.0f)) < 0.01f)) {
                    return;
                }
            }
            this.infiniteLoading = Math.abs(f - (-3.0f)) < 0.01f;
            if (!this.loadingShown && z) {
                this.loadingAnimatedProgress.set(BitmapDescriptorFactory.HUE_RED, true);
            }
            AnimatedFloat animatedFloat = this.loadingAnimatedShown;
            animatedFloat.setDelay((!z || animatedFloat.get() < 1.0f) ? 0L : 650L);
            this.loadingShown = z;
            if (!z) {
                f = 1.0f;
            }
            this.loadingProgress = f;
            invalidate();
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            super.setPressed(z);
            this.bounce.setPressed(z);
        }

        public void setResourceId(int i) {
            if (this.resId != i) {
                this.resId = i;
                this.drawable = getContext().getResources().getDrawable(i).mutate();
                this.inactiveDrawable = getContext().getResources().getDrawable(i).mutate();
                this.drawableInverse = getContext().getResources().getDrawable(i).mutate();
                invalidate();
            }
        }

        public void setStarsPrice(long j, int i) {
            setStarsPrice(j, i, true);
        }

        public void setStarsPrice(long j, int i, boolean z) {
            if (this.starsPrice == j && this.messagesCount == i) {
                return;
            }
            this.starsPrice = j;
            this.messagesCount = i;
            if (j > 0) {
                this.priceText.setText(StarsIntroActivity.replaceStars("⭐️" + LocaleController.formatNumber(j * Math.max(1, this.messagesCount), ','), this.spans), z);
            }
            if (z) {
                invalidate();
            } else {
                this.animatedPriceVisible.force(this.starsPrice > 0);
            }
        }

        public abstract boolean shouldDrawBackground();

        public void updateColors() {
            Paint paint;
            int alphaComponent;
            int i = Theme.key_chat_messagePanelSend;
            int color = Theme.getColor(i, this.resourcesProvider);
            if (color != this.drawableColor) {
                this.drawableColor = color;
                Drawable drawable = this.drawable;
                int color2 = Theme.getColor(i, this.resourcesProvider);
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                drawable.setColorFilter(new PorterDuffColorFilter(color2, mode));
                int color3 = Theme.getColor(Theme.key_chat_messagePanelIcons, this.resourcesProvider);
                this.inactiveDrawable.setColorFilter(new PorterDuffColorFilter(Color.argb(180, Color.red(color3), Color.green(color3), Color.blue(color3)), mode));
                this.drawableInverse.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelVoicePressed, this.resourcesProvider), mode));
            }
            if (shouldDrawBackground()) {
                paint = this.backgroundPaint;
                alphaComponent = getFillColor();
            } else {
                paint = this.backgroundPaint;
                alphaComponent = ColorUtils.setAlphaComponent(-1, 75);
            }
            paint.setColor(alphaComponent);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.count || drawable == this.emojiDrawable || drawable == this.priceText || super.verifyDrawable(drawable);
        }

        public int width() {
            return width(getMeasuredHeight());
        }

        public int width(int i) {
            boolean zIsOpen = isOpen();
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = zIsOpen ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            if (this.starsPrice > 0) {
                f = 1.0f;
            }
            return (int) AndroidUtilities.lerp(this.circlePadX + getCircleSize() + this.circlePadX, AndroidUtilities.dp(18.0f) + AndroidUtilities.dp(22.0f) + this.priceText.getAnimateToWidth(), f * f2);
        }
    }

    private class SlideTextView extends View {
        Paint arrowPaint;
        Path arrowPath;
        TextPaint bluePaint;
        float cancelAlpha;
        int cancelCharOffset;
        StaticLayout cancelLayout;
        public android.graphics.Rect cancelRect;
        String cancelString;
        float cancelToProgress;
        float cancelWidth;
        TextPaint grayPaint;
        private int lastSize;
        long lastUpdateTime;
        boolean moveForward;
        private boolean pressed;
        Drawable selectableBackground;
        float slideProgress;
        float slideToAlpha;
        String slideToCancelString;
        float slideToCancelWidth;
        StaticLayout slideToLayout;
        boolean smallSize;
        float xOffset;

        public SlideTextView(Context context) {
            super(context);
            this.arrowPaint = new Paint(1);
            this.xOffset = BitmapDescriptorFactory.HUE_RED;
            this.arrowPath = new Path();
            this.cancelRect = new android.graphics.Rect();
            this.smallSize = AndroidUtilities.displaySize.x <= AndroidUtilities.dp(320.0f);
            TextPaint textPaint = new TextPaint(1);
            this.grayPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.dp(this.smallSize ? 13.0f : 15.0f));
            TextPaint textPaint2 = new TextPaint(1);
            this.bluePaint = textPaint2;
            textPaint2.setTextSize(AndroidUtilities.dp(15.0f));
            this.bluePaint.setTypeface(AndroidUtilities.bold());
            this.arrowPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelIcons));
            this.arrowPaint.setStyle(Paint.Style.STROKE);
            this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(this.smallSize ? 1.0f : 1.6f));
            this.arrowPaint.setStrokeCap(Paint.Cap.ROUND);
            this.arrowPaint.setStrokeJoin(Paint.Join.ROUND);
            this.slideToCancelString = LocaleController.getString(R.string.SlideToCancel2);
            String upperCase = LocaleController.getString("Cancel", R.string.Cancel).toUpperCase();
            this.cancelString = upperCase;
            this.cancelCharOffset = this.slideToCancelString.indexOf(upperCase);
            updateColors();
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            this.selectableBackground.setState(getDrawableState());
        }

        @Override // android.view.View
        public void jumpDrawablesToCurrentState() {
            super.jumpDrawablesToCurrentState();
            Drawable drawable = this.selectableBackground;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }

        public void onCancelButtonPressed() {
            long topicId = 0;
            if (ChatActivityEnterView.this.hasRecordVideo && ChatActivityEnterView.this.isInVideoMode()) {
                CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = ChatActivityEnterView.this.delegate;
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                chatActivityEnterViewDelegate.needStartRecordVideo(5, true, 0, chatActivityEnterView.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView.effectId, 0L);
                ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
            } else {
                ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                MediaController.getInstance().stopRecording(0, false, 0, ChatActivityEnterView.this.voiceOnce, 0L);
            }
            ChatActivityEnterView.this.audioToSend = null;
            ChatActivityEnterView.this.audioToSendMessageObject = null;
            ChatActivityEnterView.this.videoToSendMessageObject = null;
            ChatActivityEnterView.this.millisecondsRecorded = 0L;
            ChatActivityEnterView.this.recordingAudioVideo = false;
            MediaDataController mediaDataController = MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount);
            long j = ChatActivityEnterView.this.dialog_id;
            if (ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.isTopic) {
                topicId = ChatActivityEnterView.this.parentFragment.getTopicId();
            }
            mediaDataController.pushDraftVoiceMessage(j, topicId, null);
            ChatActivityEnterView.this.updateRecordInterface(2, true);
            ChatActivityEnterView.this.checkSendButton(true);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.slideToLayout == null || this.cancelLayout == null || ChatActivityEnterView.this.recordCircle == null) {
                return;
            }
            int width = this.cancelLayout.getWidth() + AndroidUtilities.dp(16.0f);
            this.grayPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            this.grayPaint.setAlpha((int) (this.slideToAlpha * (1.0f - this.cancelToProgress) * this.slideProgress));
            this.bluePaint.setAlpha((int) (this.cancelAlpha * this.cancelToProgress));
            this.arrowPaint.setColor(this.grayPaint.getColor());
            if (this.smallSize) {
                this.xOffset = AndroidUtilities.dp(16.0f);
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
                this.lastUpdateTime = System.currentTimeMillis();
                if (this.cancelToProgress == BitmapDescriptorFactory.HUE_RED && this.slideProgress > 0.8f) {
                    if (this.moveForward) {
                        float fDp = this.xOffset + ((AndroidUtilities.dp(3.0f) / 250.0f) * jCurrentTimeMillis);
                        this.xOffset = fDp;
                        if (fDp > AndroidUtilities.dp(6.0f)) {
                            this.xOffset = AndroidUtilities.dp(6.0f);
                            this.moveForward = false;
                        }
                    } else {
                        float fDp2 = this.xOffset - ((AndroidUtilities.dp(3.0f) / 250.0f) * jCurrentTimeMillis);
                        this.xOffset = fDp2;
                        if (fDp2 < (-AndroidUtilities.dp(6.0f))) {
                            this.xOffset = -AndroidUtilities.dp(6.0f);
                            this.moveForward = true;
                        }
                    }
                }
            }
            boolean z = this.cancelCharOffset >= 0;
            int measuredWidth = ((int) ((getMeasuredWidth() - this.slideToCancelWidth) / 2.0f)) + AndroidUtilities.dp(5.0f);
            int measuredWidth2 = (int) ((getMeasuredWidth() - this.cancelWidth) / 2.0f);
            float primaryHorizontal = z ? this.slideToLayout.getPrimaryHorizontal(this.cancelCharOffset) : BitmapDescriptorFactory.HUE_RED;
            float f = z ? (measuredWidth + primaryHorizontal) - measuredWidth2 : BitmapDescriptorFactory.HUE_RED;
            float f2 = this.xOffset;
            float f3 = this.cancelToProgress;
            float fDp3 = ((measuredWidth + ((f2 * (1.0f - f3)) * this.slideProgress)) - (f * f3)) + AndroidUtilities.dp(16.0f);
            float fDp4 = z ? BitmapDescriptorFactory.HUE_RED : this.cancelToProgress * AndroidUtilities.dp(12.0f);
            if (this.cancelToProgress != 1.0f) {
                int translationX = (int) ((((-getMeasuredWidth()) / 4) * (1.0f - this.slideProgress)) + (ChatActivityEnterView.this.recordCircle.getTranslationX() * 0.3f));
                canvas.save();
                canvas.clipRect((ChatActivityEnterView.this.recordTimerView == null ? BitmapDescriptorFactory.HUE_RED : ChatActivityEnterView.this.recordTimerView.getLeftProperty()) + AndroidUtilities.dp(4.0f), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                canvas.save();
                int i = (int) fDp3;
                canvas.translate((i - AndroidUtilities.dp(this.smallSize ? 7.0f : 10.0f)) + translationX, fDp4);
                canvas.drawPath(this.arrowPath, this.arrowPaint);
                canvas.restore();
                canvas.save();
                canvas.translate(i + translationX, ((getMeasuredHeight() - this.slideToLayout.getHeight()) / 2.0f) + fDp4);
                this.slideToLayout.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            float measuredHeight = (getMeasuredHeight() - this.cancelLayout.getHeight()) / 2.0f;
            if (!z) {
                measuredHeight -= AndroidUtilities.dp(12.0f) - fDp4;
            }
            float f4 = z ? fDp3 + primaryHorizontal : measuredWidth2;
            this.cancelRect.set((int) f4, (int) measuredHeight, (int) (this.cancelLayout.getWidth() + f4), (int) (this.cancelLayout.getHeight() + measuredHeight));
            this.cancelRect.inset(-AndroidUtilities.dp(16.0f), -AndroidUtilities.dp(16.0f));
            if (this.cancelToProgress > BitmapDescriptorFactory.HUE_RED) {
                this.selectableBackground.setBounds((getMeasuredWidth() / 2) - width, (getMeasuredHeight() / 2) - width, (getMeasuredWidth() / 2) + width, (getMeasuredHeight() / 2) + width);
                this.selectableBackground.draw(canvas);
                canvas.save();
                canvas.translate(f4, measuredHeight);
                this.cancelLayout.draw(canvas);
                canvas.restore();
            } else {
                setPressed(false);
            }
            if (this.cancelToProgress != 1.0f) {
                invalidate();
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            Path path;
            float f;
            float fDpf2;
            float f2;
            float f3;
            super.onMeasure(i, i2);
            int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
            if (this.lastSize != measuredHeight) {
                this.lastSize = measuredHeight;
                this.slideToCancelWidth = this.grayPaint.measureText(this.slideToCancelString);
                this.cancelWidth = this.bluePaint.measureText(this.cancelString);
                this.lastUpdateTime = System.currentTimeMillis();
                int measuredHeight2 = getMeasuredHeight() >> 1;
                this.arrowPath.reset();
                if (this.smallSize) {
                    path = this.arrowPath;
                    f = 2.5f;
                    fDpf2 = AndroidUtilities.dpf2(2.5f);
                    f2 = measuredHeight2;
                    f3 = 3.12f;
                } else {
                    path = this.arrowPath;
                    f = 4.0f;
                    fDpf2 = AndroidUtilities.dpf2(4.0f);
                    f2 = measuredHeight2;
                    f3 = 5.0f;
                }
                path.setLastPoint(fDpf2, f2 - AndroidUtilities.dpf2(f3));
                this.arrowPath.lineTo(BitmapDescriptorFactory.HUE_RED, f2);
                this.arrowPath.lineTo(AndroidUtilities.dpf2(f), f2 + AndroidUtilities.dpf2(f3));
                String str = this.slideToCancelString;
                TextPaint textPaint = this.grayPaint;
                int i3 = (int) this.slideToCancelWidth;
                Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                this.slideToLayout = new StaticLayout(str, textPaint, i3, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.cancelLayout = new StaticLayout(this.cancelString, this.bluePaint, (int) this.cancelWidth, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                setPressed(false);
            }
            if (this.cancelToProgress == BitmapDescriptorFactory.HUE_RED || !isEnabled()) {
                return false;
            }
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                boolean zContains = this.cancelRect.contains(x, y);
                this.pressed = zContains;
                if (zContains) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.selectableBackground.setHotspot(x, y);
                    }
                    setPressed(true);
                }
                return this.pressed;
            }
            boolean z = this.pressed;
            if (!z) {
                return z;
            }
            if (motionEvent.getAction() == 2 && !this.cancelRect.contains(x, y)) {
                setPressed(false);
                return false;
            }
            if (motionEvent.getAction() == 1 && this.cancelRect.contains(x, y)) {
                onCancelButtonPressed();
            }
            return true;
        }

        public void setCancelToProgress(float f) {
            this.cancelToProgress = f;
        }

        public void setSlideX(float f) {
            this.slideProgress = f;
        }

        public void updateColors() {
            this.grayPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            TextPaint textPaint = this.bluePaint;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_recordVoiceCancel;
            textPaint.setColor(chatActivityEnterView.getThemedColor(i));
            this.slideToAlpha = this.grayPaint.getAlpha();
            this.cancelAlpha = this.bluePaint.getAlpha();
            Drawable drawableCreateSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.dp(60.0f), 0, ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 26));
            this.selectableBackground = drawableCreateSimpleSelectorCircleDrawable;
            drawableCreateSimpleSelectorCircleDrawable.setCallback(this);
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.selectableBackground == drawable || super.verifyDrawable(drawable);
        }
    }

    private static class SlowModeBtn extends FrameLayout {
        private final RectF bgRect;
        private final Drawable closeDrawable;
        private final Paint gradientPaint;
        private boolean isPremiumMode;
        private final SimpleTextView textView;

        public SlowModeBtn(Context context) {
            super(context);
            this.bgRect = new RectF();
            this.gradientPaint = new Paint(1);
            this.isPremiumMode = false;
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            addView(simpleTextView, LayoutHelper.createFrame(-1, -1.0f));
            setWillNotDraw(false);
            Drawable drawable = ContextCompat.getDrawable(context, R.drawable.msg_mini_close_tooltip);
            this.closeDrawable = drawable;
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            setClipToPadding(false);
            setClipChildren(false);
            ScaleStateListAnimator.apply(this);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (!(view instanceof SimpleTextView) || !this.isPremiumMode) {
                return super.drawChild(canvas, view, j);
            }
            SimpleTextView simpleTextView = (SimpleTextView) view;
            canvas.save();
            canvas.scale(0.8f, 0.8f);
            canvas.translate(-AndroidUtilities.dp(16.0f), AndroidUtilities.dp(5.0f));
            int color = simpleTextView.getTextPaint().getColor();
            simpleTextView.getTextPaint().setColor(-1);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            simpleTextView.getTextPaint().setColor(color);
            canvas.restore();
            return zDrawChild;
        }

        public CharSequence getText() {
            return this.textView.getText();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.isPremiumMode) {
                canvas.save();
                int iDp = AndroidUtilities.dp(26.0f);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, ((getMeasuredHeight() - iDp) / 2.0f) - AndroidUtilities.dp(1.0f));
                float f = iDp;
                this.bgRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - getPaddingEnd(), f);
                float f2 = f / 2.0f;
                canvas.drawRoundRect(this.bgRect, f2, f2, this.gradientPaint);
                canvas.translate(((getMeasuredWidth() - getPaddingEnd()) - AndroidUtilities.dp(6.0f)) - this.closeDrawable.getIntrinsicWidth(), AndroidUtilities.dp(5.0f));
                this.closeDrawable.draw(canvas);
                canvas.restore();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.gradientPaint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED, new int[]{-9071617, -5999873}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
        }

        public void setGravity(int i) {
            this.textView.setGravity(i);
            invalidate();
        }

        public void setPremiumMode(boolean z) {
            this.isPremiumMode = z;
            invalidate();
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
            invalidate();
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
            invalidate();
        }

        public void setTextSize(int i) {
            this.textView.setTextSize(i);
            invalidate();
        }
    }

    public class TimerView extends View {
        StaticLayout inLayout;
        boolean isRunning;
        long lastSendTypingTime;
        float left;
        String oldString;
        StaticLayout outLayout;
        final float replaceDistance;
        SpannableStringBuilder replaceIn;
        SpannableStringBuilder replaceOut;
        SpannableStringBuilder replaceStable;
        float replaceTransition;
        long startTime;
        long stopTime;
        boolean stoppedInternal;
        TextPaint textPaint;

        public TimerView(Context context) {
            super(context);
            this.replaceIn = new SpannableStringBuilder();
            this.replaceOut = new SpannableStringBuilder();
            this.replaceStable = new SpannableStringBuilder();
            this.replaceDistance = AndroidUtilities.dp(15.0f);
        }

        public float getLeftProperty() {
            return this.left;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float lineWidth;
            String str;
            if (this.textPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.textPaint = textPaint;
                textPaint.setTextSize(AndroidUtilities.dp(15.0f));
                this.textPaint.setTypeface(AndroidUtilities.bold());
                this.textPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.isRunning ? jCurrentTimeMillis - this.startTime : this.stopTime - this.startTime;
            long j2 = j / 1000;
            int i = ((int) (j % 1000)) / 10;
            if (ChatActivityEnterView.this.isInVideoMode() && j >= 59500 && !this.stoppedInternal) {
                ChatActivityEnterView.this.startedDraggingX = -1.0f;
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = ChatActivityEnterView.this.delegate;
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                chatActivityEnterViewDelegate.needStartRecordVideo(3, true, 0, chatActivityEnterView.voiceOnce ? Integer.MAX_VALUE : 0, chatActivityEnterView.effectId, 0L);
                ChatActivityEnterView.this.sendButton.setEffect(ChatActivityEnterView.this.effectId = 0L);
                this.stoppedInternal = true;
            }
            if (this.isRunning && jCurrentTimeMillis > this.lastSendTypingTime + 5000) {
                this.lastSendTypingTime = jCurrentTimeMillis;
                MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).sendTyping(ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.getThreadMessageId(), ChatActivityEnterView.this.isInVideoMode() ? 7 : 1, 0);
            }
            String timerDurationFast = AndroidUtilities.formatTimerDurationFast((int) j2, i);
            if (timerDurationFast.length() < 3 || (str = this.oldString) == null || str.length() < 3 || timerDurationFast.length() != this.oldString.length() || timerDurationFast.charAt(timerDurationFast.length() - 3) == this.oldString.charAt(timerDurationFast.length() - 3)) {
                if (this.replaceStable == null) {
                    this.replaceStable = new SpannableStringBuilder(timerDurationFast);
                }
                if (this.replaceStable.length() == 0 || this.replaceStable.length() != timerDurationFast.length()) {
                    this.replaceStable.clear();
                    this.replaceStable.append((CharSequence) timerDurationFast);
                } else {
                    this.replaceStable.replace(r10.length() - 1, this.replaceStable.length(), (CharSequence) timerDurationFast, (timerDurationFast.length() - 1) - (timerDurationFast.length() - this.replaceStable.length()), timerDurationFast.length());
                }
            } else {
                int length = timerDurationFast.length();
                this.replaceIn.clear();
                this.replaceOut.clear();
                this.replaceStable.clear();
                this.replaceIn.append((CharSequence) timerDurationFast);
                this.replaceOut.append((CharSequence) this.oldString);
                this.replaceStable.append((CharSequence) timerDurationFast);
                int i2 = -1;
                int i3 = -1;
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < length - 1; i6++) {
                    if (this.oldString.charAt(i6) != timerDurationFast.charAt(i6)) {
                        if (i5 == 0) {
                            i3 = i6;
                        }
                        i5++;
                        if (i4 != 0) {
                            EmptyStubSpan emptyStubSpan = new EmptyStubSpan();
                            if (i6 == length - 2) {
                                i4++;
                            }
                            int i7 = i4 + i2;
                            this.replaceIn.setSpan(emptyStubSpan, i2, i7, 33);
                            this.replaceOut.setSpan(emptyStubSpan, i2, i7, 33);
                            i4 = 0;
                        }
                    } else {
                        if (i4 == 0) {
                            i2 = i6;
                        }
                        i4++;
                        if (i5 != 0) {
                            this.replaceStable.setSpan(new EmptyStubSpan(), i3, i5 + i3, 33);
                            i5 = 0;
                        }
                    }
                }
                if (i4 != 0) {
                    EmptyStubSpan emptyStubSpan2 = new EmptyStubSpan();
                    int i8 = i4 + i2 + 1;
                    this.replaceIn.setSpan(emptyStubSpan2, i2, i8, 33);
                    this.replaceOut.setSpan(emptyStubSpan2, i2, i8, 33);
                }
                if (i5 != 0) {
                    this.replaceStable.setSpan(new EmptyStubSpan(), i3, i5 + i3, 33);
                }
                SpannableStringBuilder spannableStringBuilder = this.replaceIn;
                TextPaint textPaint2 = this.textPaint;
                int measuredWidth = getMeasuredWidth();
                Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                this.inLayout = new StaticLayout(spannableStringBuilder, textPaint2, measuredWidth, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.outLayout = new StaticLayout(this.replaceOut, this.textPaint, getMeasuredWidth(), alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.replaceTransition = 1.0f;
            }
            float f = this.replaceTransition;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                float f2 = f - 0.15f;
                this.replaceTransition = f2;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    this.replaceTransition = BitmapDescriptorFactory.HUE_RED;
                }
            }
            float measuredHeight = getMeasuredHeight() / 2;
            if (this.replaceTransition == BitmapDescriptorFactory.HUE_RED) {
                this.replaceStable.clearSpans();
                StaticLayout staticLayout = new StaticLayout(this.replaceStable, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight - (staticLayout.getHeight() / 2.0f));
                staticLayout.draw(canvas);
                canvas.restore();
                lineWidth = staticLayout.getLineWidth(0) + BitmapDescriptorFactory.HUE_RED;
            } else {
                if (this.inLayout != null) {
                    canvas.save();
                    this.textPaint.setAlpha((int) ((1.0f - this.replaceTransition) * 255.0f));
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (measuredHeight - (this.inLayout.getHeight() / 2.0f)) - (this.replaceDistance * this.replaceTransition));
                    this.inLayout.draw(canvas);
                    canvas.restore();
                }
                if (this.outLayout != null) {
                    canvas.save();
                    this.textPaint.setAlpha((int) (this.replaceTransition * 255.0f));
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (measuredHeight - (this.outLayout.getHeight() / 2.0f)) + (this.replaceDistance * (1.0f - this.replaceTransition)));
                    this.outLayout.draw(canvas);
                    canvas.restore();
                }
                canvas.save();
                this.textPaint.setAlpha(255);
                StaticLayout staticLayout2 = new StaticLayout(this.replaceStable, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight - (staticLayout2.getHeight() / 2.0f));
                staticLayout2.draw(canvas);
                canvas.restore();
                lineWidth = staticLayout2.getLineWidth(0) + BitmapDescriptorFactory.HUE_RED;
            }
            this.left = lineWidth;
            this.oldString = timerDurationFast;
            if (this.isRunning || this.replaceTransition != BitmapDescriptorFactory.HUE_RED) {
                invalidate();
            }
        }

        public void reset() {
            this.isRunning = false;
            this.startTime = 0L;
            this.stopTime = 0L;
            this.stoppedInternal = false;
        }

        public void start(long j) {
            this.isRunning = true;
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            this.startTime = jCurrentTimeMillis;
            this.lastSendTypingTime = jCurrentTimeMillis;
            invalidate();
        }

        public void stop() {
            if (this.isRunning) {
                this.isRunning = false;
                if (this.startTime > 0) {
                    this.stopTime = System.currentTimeMillis();
                }
                invalidate();
            }
            this.lastSendTypingTime = 0L;
        }

        public void updateColors() {
            TextPaint textPaint = this.textPaint;
            if (textPaint != null) {
                textPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            }
        }
    }

    public ChatActivityEnterView(Activity activity, SizeNotifierFrameLayout sizeNotifierFrameLayout, ChatActivity chatActivity, boolean z) {
        this(activity, sizeNotifierFrameLayout, chatActivity, z, null);
    }

    public ChatActivityEnterView(final Activity activity, SizeNotifierFrameLayout sizeNotifierFrameLayout, final ChatActivity chatActivity, boolean z, Theme.ResourcesProvider resourcesProvider) {
        int i;
        String str;
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        super(activity, chatActivity == null ? null : chatActivity.contentView);
        this.emojiButtonScale = 1.0f;
        this.emojiButtonAlpha = 1.0f;
        this.emojiButtonPaddingScale = 1.0f;
        this.emojiButtonPaddingAlpha = 1.0f;
        this.attachLayoutAlpha = 1.0f;
        this.attachLayoutPaddingAlpha = 1.0f;
        this.horizontalPadding = BitmapDescriptorFactory.HUE_RED;
        this.sendButtonEnabled = true;
        int i2 = UserConfig.selectedAccount;
        this.currentAccount = i2;
        this.accountInstance = AccountInstance.getInstance(i2);
        this.lineCount = 1;
        this.currentLimit = -1;
        this.botMenuButtonType = BotMenuButtonType.NO_BUTTON;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        this.sendPlainEnabled = true;
        this.animationParamsX = new HashMap();
        this.mediaMessageButtonsDelegate = new View.AccessibilityDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.1
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName("android.widget.ImageButton");
                accessibilityNodeInfo.setClickable(true);
                accessibilityNodeInfo.setLongClickable(true);
            }
        };
        this.ctrlPressed = false;
        this.shiftPressed = false;
        this.currentPopupContentType = -1;
        this.isPaused = true;
        this.startedDraggingX = -1.0f;
        this.distCanMove = AndroidUtilities.dp(80.0f);
        this.location = new int[2];
        this.messageWebPageSearch = true;
        this.animatingContentType = -1;
        this.doneButtonEnabledProgress = 1.0f;
        this.doneButtonEnabled = true;
        this.openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.2
            @Override // java.lang.Runnable
            public void run() {
                if ((ChatActivityEnterView.this.hasBotWebView() && ChatActivityEnterView.this.botCommandsMenuIsShowing()) || BaseFragment.hasSheets(ChatActivityEnterView.this.parentFragment) || ChatActivityEnterView.this.destroyed) {
                    return;
                }
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (chatActivityEnterView.messageEditText == null || !chatActivityEnterView.waitingForKeyboardOpen || ChatActivityEnterView.this.keyboardVisible || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    return;
                }
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onKeyboardRequested();
                }
                ChatActivityEnterView.this.messageEditText.requestFocus();
                AndroidUtilities.showKeyboard(ChatActivityEnterView.this.messageEditText);
                AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.openKeyboardRunnable);
                AndroidUtilities.runOnUIThread(ChatActivityEnterView.this.openKeyboardRunnable, 100L);
            }
        };
        this.updateExpandabilityRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.3
            private int lastKnownPage = -1;

            @Override // java.lang.Runnable
            public void run() {
                int currentPage;
                if (ChatActivityEnterView.this.emojiView == null || (currentPage = ChatActivityEnterView.this.emojiView.getCurrentPage()) == this.lastKnownPage) {
                    return;
                }
                this.lastKnownPage = currentPage;
                boolean z2 = ChatActivityEnterView.this.stickersTabOpen;
                ChatActivityEnterView.this.stickersTabOpen = currentPage == 1 || currentPage == 2;
                boolean z3 = ChatActivityEnterView.this.emojiTabOpen;
                ChatActivityEnterView.this.emojiTabOpen = currentPage == 0;
                if (ChatActivityEnterView.this.stickersExpanded) {
                    if (ChatActivityEnterView.this.searchingType != 0) {
                        ChatActivityEnterView.this.setSearchingTypeInternal(currentPage != 0 ? 1 : 2, true);
                        ChatActivityEnterView.this.checkStickresExpandHeight();
                    } else if (!ChatActivityEnterView.this.stickersTabOpen) {
                        ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                    }
                }
                if (z2 == ChatActivityEnterView.this.stickersTabOpen && z3 == ChatActivityEnterView.this.emojiTabOpen) {
                    return;
                }
                ChatActivityEnterView.this.checkSendButton(true);
            }
        };
        this.roundedTranslationYProperty = new Property(Integer.class, "translationY") { // from class: org.telegram.ui.Components.ChatActivityEnterView.4
            @Override // android.util.Property
            public Integer get(View view) {
                return Integer.valueOf(Math.round(view.getTranslationY()));
            }

            @Override // android.util.Property
            public void set(View view, Integer num) {
                view.setTranslationY(num.intValue());
            }
        };
        Class<Float> cls = Float.class;
        this.recordCircleScale = new Property(cls, "scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.5
            @Override // android.util.Property
            public Float get(RecordCircle recordCircle) {
                return Float.valueOf(recordCircle.getScale());
            }

            @Override // android.util.Property
            public void set(RecordCircle recordCircle, Float f) {
                recordCircle.setScale(f.floatValue());
            }
        };
        this.recordControlsCircleScale = new Property(cls, "controlsScale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.6
            @Override // android.util.Property
            public Float get(RecordCircle recordCircle) {
                return Float.valueOf(recordCircle.getControlsScale());
            }

            @Override // android.util.Property
            public void set(RecordCircle recordCircle, Float f) {
                recordCircle.setControlsScale(f.floatValue());
            }
        };
        this.redDotPaint = new Paint(1);
        this.onFinishInitCameraRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.7
            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.needStartRecordVideo(0, true, 0, 0, 0L, 0L);
                }
            }
        };
        this.recordAudioVideoRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.8
            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.delegate == null || ChatActivityEnterView.this.parentActivity == null) {
                    return;
                }
                ChatActivityEnterView.this.delegate.onPreAudioVideoRecord();
                ChatActivityEnterView.this.calledRecordRunnable = true;
                ChatActivityEnterView.this.recordAudioVideoRunnableStarted = false;
                if (ChatActivityEnterView.this.slideText != null) {
                    ChatActivityEnterView.this.slideText.setAlpha(1.0f);
                    ChatActivityEnterView.this.slideText.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
                ChatActivityEnterView.this.audioToSendPath = null;
                ChatActivityEnterView.this.audioToSend = null;
                if (!ChatActivityEnterView.this.isInVideoMode()) {
                    if (Build.VERSION.SDK_INT >= 23 && ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
                        ChatActivityEnterView.this.parentActivity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 3);
                        return;
                    }
                    ChatActivityEnterView.this.delegate.needStartRecordAudio(1);
                    ChatActivityEnterView.this.startedDraggingX = -1.0f;
                    TL_stories$StoryItem replyToStory = ChatActivityEnterView.this.delegate != null ? ChatActivityEnterView.this.delegate.getReplyToStory() : null;
                    MediaController mediaController = MediaController.getInstance();
                    int i3 = ChatActivityEnterView.this.currentAccount;
                    long j = ChatActivityEnterView.this.dialog_id;
                    MessageObject messageObject = ChatActivityEnterView.this.replyingMessageObject;
                    MessageObject threadMessage = ChatActivityEnterView.this.getThreadMessage();
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    mediaController.startRecording(i3, j, messageObject, threadMessage, replyToStory, chatActivityEnterView.recordingGuid, true, chatActivityEnterView.parentFragment != null ? ChatActivityEnterView.this.parentFragment.quickReplyShortcut : null, ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getQuickReplyId() : 0, ChatActivityEnterView.this.getSendMonoForumPeerId(), ChatActivityEnterView.this.getSendMessageSuggestionParams());
                    ChatActivityEnterView.this.recordingAudioVideo = true;
                    ChatActivityEnterView.this.updateRecordInterface(0, true);
                    if (ChatActivityEnterView.this.recordTimerView != null) {
                        ChatActivityEnterView.this.recordTimerView.start(0L);
                    }
                    if (ChatActivityEnterView.this.recordDot != null) {
                        ChatActivityEnterView.this.recordDot.enterAnimation = false;
                    }
                    ChatActivityEnterView.this.audioVideoButtonContainer.getParent().requestDisallowInterceptTouchEvent(true);
                    if (ChatActivityEnterView.this.recordCircle != null) {
                        ChatActivityEnterView.this.recordCircle.showWaves(true, false);
                        return;
                    }
                    return;
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    boolean z2 = ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.RECORD_AUDIO") == 0;
                    boolean z3 = ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.CAMERA") == 0;
                    if (!z2 || !z3) {
                        String[] strArr = new String[(z2 || z3) ? 1 : 2];
                        if (!z2 && !z3) {
                            strArr[0] = "android.permission.RECORD_AUDIO";
                            strArr[1] = "android.permission.CAMERA";
                        } else if (z2) {
                            strArr[0] = "android.permission.CAMERA";
                        } else {
                            strArr[0] = "android.permission.RECORD_AUDIO";
                        }
                        ChatActivityEnterView.this.parentActivity.requestPermissions(strArr, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                        return;
                    }
                }
                if (CameraController.getInstance().isCameraInitied()) {
                    ChatActivityEnterView.this.onFinishInitCameraRunnable.run();
                } else {
                    CameraController.getInstance().initCamera(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                }
                if (ChatActivityEnterView.this.recordingAudioVideo) {
                    return;
                }
                ChatActivityEnterView.this.recordingAudioVideo = true;
                ChatActivityEnterView.this.updateRecordInterface(0, true);
                if (ChatActivityEnterView.this.recordCircle != null) {
                    ChatActivityEnterView.this.recordCircle.showWaves(false, false);
                }
                if (ChatActivityEnterView.this.recordTimerView != null) {
                    ChatActivityEnterView.this.recordTimerView.reset();
                }
            }
        };
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.paint = new Paint(1);
        this.pauseRect = new RectF();
        this.sendRect = new android.graphics.Rect();
        this.rect = new android.graphics.Rect();
        this.runEmojiPanelAnimation = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.9
            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.panelAnimation.isRunning()) {
                    return;
                }
                ChatActivityEnterView.this.panelAnimation.start();
            }
        };
        this.EMOJI_BUTTON_SCALE = new Property(cls, "emoji_button_scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.10
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.emojiButtonScale);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.emojiButtonScale = f.floatValue();
                ChatActivityEnterView.this.updateEmojiButtonParams();
            }
        };
        this.ATTACH_LAYOUT_ALPHA = new Property(cls, "attach_scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.11
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.attachLayoutAlpha);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.attachLayoutAlpha = f.floatValue();
                ChatActivityEnterView.this.updateAttachLayoutParams();
            }
        };
        this.EMOJI_BUTTON_ALPHA = new Property(cls, "emoji_button_alpha") { // from class: org.telegram.ui.Components.ChatActivityEnterView.12
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.emojiButtonAlpha);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.emojiButtonAlpha = f.floatValue();
                ChatActivityEnterView.this.updateEmojiButtonParams();
            }
        };
        this.ATTACH_LAYOUT_TRANSLATION_X = new Property(cls, "attach_layout_translation_x") { // from class: org.telegram.ui.Components.ChatActivityEnterView.13
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.attachLayoutTranslationX);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.attachLayoutTranslationX = f.floatValue();
                ChatActivityEnterView.this.updateAttachLayoutParams();
            }
        };
        this.MESSAGE_TEXT_TRANSLATION_X = new Property(cls, "message_text_translation_x") { // from class: org.telegram.ui.Components.ChatActivityEnterView.14
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.messageTextTranslationX);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.messageTextTranslationX = f.floatValue();
                ChatActivityEnterView.this.updateMessageTextParams();
            }
        };
        this.allowBlur = true;
        this.shouldDrawBackground = true;
        this.backgroundPaint = new Paint();
        this.composeShadowAlpha = 1.0f;
        this.blurBounds = new android.graphics.Rect();
        this.dismissSendPreview = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$28();
            }
        };
        this.messageEditTextEnabled = true;
        this.topViewUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$42(valueAnimator);
            }
        };
        this.spans = new ColoredImageSpan[1];
        this.premiumEmojiBulletin = true;
        this.botCommandLastPosition = -1;
        Paint paint = new Paint(1);
        this.gradientPaint = paint;
        LinearGradient linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 16.0f, new int[]{-1, 16777215}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
        this.clipGradient = linearGradient;
        this.clipMatrix = new Matrix();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.topGradientAlpha = new AnimatedFloat(this, 0L, 280L, cubicBezierInterpolator);
        this.bottomGradientAlpha = new AnimatedFloat(this, 0L, 280L, cubicBezierInterpolator);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setShader(linearGradient);
        this.resourcesProvider = resourcesProvider;
        this.backgroundColor = getThemedColor(Theme.key_chat_messagePanelBackground);
        this.drawBlur = false;
        this.isChat = z;
        this.smoothKeyboard = z && !AndroidUtilities.isInMultiwindow && (chatActivity == null || !chatActivity.isInBubbleMode());
        Paint paint2 = new Paint(1);
        this.dotPaint = paint2;
        paint2.setColor(getThemedColor(Theme.key_chat_emojiPanelNewTrending));
        setFocusable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setClipChildren(false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStarted);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordPaused);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordResumed);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStartError);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStopped);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioDidSent);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioRouteChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.featuredStickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messageReceivedByServer2);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.sendingMessagesChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioRecordTooShort);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateBotMenuButton);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdatePremiumGiftFieldIcon);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        this.parentActivity = activity;
        this.parentFragment = chatActivity;
        if (chatActivity != null) {
            this.recordingGuid = chatActivity.getClassGuid();
        }
        this.sizeNotifierLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setDelegate(this);
        this.sendByEnter = MessagesController.getGlobalMainSettings().getBoolean("send_by_enter", false);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.15
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return (ChatActivityEnterView.this.botWebViewButton == null || ChatActivityEnterView.this.botWebViewButton.getVisibility() != 0) ? super.dispatchTouchEvent(motionEvent) : ChatActivityEnterView.this.botWebViewButton.dispatchTouchEvent(motionEvent);
            }
        };
        this.textFieldContainer = frameLayout;
        frameLayout.setClipChildren(false);
        this.textFieldContainer.setClipToPadding(false);
        this.textFieldContainer.setPadding(0, AndroidUtilities.dp(1.0f), 0, 0);
        addView(this.textFieldContainer, LayoutHelper.createFrame(-1, -2.0f, 83, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        AnonymousClass16 anonymousClass16 = new AnonymousClass16(activity);
        this.messageEditTextContainer = anonymousClass16;
        anonymousClass16.setClipChildren(false);
        this.textFieldContainer.addView(anonymousClass16, LayoutHelper.createFrame(-1, -2.0f, 80, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 48.0f, BitmapDescriptorFactory.HUE_RED));
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = new ChatActivityEnterViewAnimatedIconView(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.17
            @Override // android.widget.ImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (getTag() == null || ChatActivityEnterView.this.attachLayout == null || ChatActivityEnterView.this.emojiViewVisible || MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).getUnreadStickerSets().isEmpty() || ChatActivityEnterView.this.dotPaint == null) {
                    return;
                }
                canvas.drawCircle((getWidth() / 2) + AndroidUtilities.dp(9.0f), (getHeight() / 2) - AndroidUtilities.dp(8.0f), AndroidUtilities.dp(5.0f), ChatActivityEnterView.this.dotPaint);
            }
        };
        this.emojiButton = chatActivityEnterViewAnimatedIconView;
        chatActivityEnterViewAnimatedIconView.setContentDescription(LocaleController.getString(R.string.AccDescrEmojiButton));
        this.emojiButton.setFocusable(true);
        int iDp = AndroidUtilities.dp(9.5f);
        this.emojiButton.setPadding(iDp, iDp, iDp, iDp);
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.emojiButton;
        int i3 = Theme.key_chat_messagePanelIcons;
        int themedColor = getThemedColor(i3);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        chatActivityEnterViewAnimatedIconView2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            this.emojiButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.emojiButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        this.messageEditTextContainer.addView(this.emojiButton, LayoutHelper.createFrame(48, 48.0f, 83, 3.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        setEmojiButtonImage(false, false);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(activity);
            this.attachLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.attachLayout.setEnabled(false);
            this.attachLayout.setPivotX(AndroidUtilities.dp(48.0f));
            this.attachLayout.setClipChildren(false);
            this.messageEditTextContainer.addView(this.attachLayout, LayoutHelper.createFrame(-2, 48, 85));
            this.notifyButton = new ImageView(activity);
            CrossOutDrawable crossOutDrawable = new CrossOutDrawable(activity, R.drawable.input_notify_on, i3);
            this.notifySilentDrawable = crossOutDrawable;
            this.notifyButton.setImageDrawable(crossOutDrawable);
            this.notifySilentDrawable.setCrossOut(this.silent, false);
            ImageView imageView = this.notifyButton;
            if (this.silent) {
                i = R.string.AccDescrChanSilentOn;
                str = "AccDescrChanSilentOn";
            } else {
                i = R.string.AccDescrChanSilentOff;
                str = "AccDescrChanSilentOff";
            }
            imageView.setContentDescription(LocaleController.getString(str, i));
            ImageView imageView2 = this.notifyButton;
            int themedColor2 = getThemedColor(i3);
            PorterDuff.Mode mode2 = PorterDuff.Mode.MULTIPLY;
            imageView2.setColorFilter(new PorterDuffColorFilter(themedColor2, mode2));
            ImageView imageView3 = this.notifyButton;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView3.setScaleType(scaleType);
            if (i4 >= 21) {
                this.notifyButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
            }
            this.notifyButton.setVisibility((!this.canWriteToChannel || ((chatActivityEnterViewDelegate = this.delegate) != null && chatActivityEnterViewDelegate.hasScheduledMessages())) ? 8 : 0);
            this.attachLayout.addView(this.notifyButton, LayoutHelper.createLinear(48, 48));
            this.notifyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int i5;
                    String str2;
                    ChatActivityEnterView.this.silent = !r9.silent;
                    if (ChatActivityEnterView.this.notifySilentDrawable == null) {
                        ChatActivityEnterView.this.notifySilentDrawable = new CrossOutDrawable(activity, R.drawable.input_notify_on, Theme.key_chat_messagePanelIcons);
                    }
                    ChatActivityEnterView.this.notifySilentDrawable.setCrossOut(ChatActivityEnterView.this.silent, true);
                    ChatActivityEnterView.this.notifyButton.setImageDrawable(ChatActivityEnterView.this.notifySilentDrawable);
                    MessagesController.getNotificationsSettings(ChatActivityEnterView.this.currentAccount).edit().putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.silent).commit();
                    NotificationsController notificationsController = NotificationsController.getInstance(ChatActivityEnterView.this.currentAccount);
                    long j = ChatActivityEnterView.this.dialog_id;
                    ChatActivity chatActivity2 = chatActivity;
                    notificationsController.updateServerNotificationsSettings(j, chatActivity2 == null ? 0L : chatActivity2.getTopicId());
                    UndoView undoView = chatActivity.getUndoView();
                    if (undoView != null) {
                        undoView.showWithAction(0L, !ChatActivityEnterView.this.silent ? 54 : 55, (Runnable) null);
                    }
                    ImageView imageView4 = ChatActivityEnterView.this.notifyButton;
                    if (ChatActivityEnterView.this.silent) {
                        i5 = R.string.AccDescrChanSilentOn;
                        str2 = "AccDescrChanSilentOn";
                    } else {
                        i5 = R.string.AccDescrChanSilentOff;
                        str2 = "AccDescrChanSilentOff";
                    }
                    imageView4.setContentDescription(LocaleController.getString(str2, i5));
                    ChatActivityEnterView.this.updateFieldHint(true);
                }
            });
            ImageView imageView4 = new ImageView(activity);
            this.attachButton = imageView4;
            imageView4.setScaleType(scaleType);
            this.attachButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), mode2));
            this.attachButton.setImageResource(R.drawable.msg_input_attach2);
            if (i4 >= 21) {
                this.attachButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
            }
            this.attachLayout.addView(this.attachButton, LayoutHelper.createLinear(48, 48));
            this.attachButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
            this.attachButton.setContentDescription(LocaleController.getString("AccDescrAttachButton", R.string.AccDescrAttachButton));
            updateFieldRight(1);
        }
        if (this.audioToSend != null) {
            createRecordAudioPanel();
        }
        FrameLayout frameLayout2 = new FrameLayout(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.19
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.sendButtonEnabled) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == ChatActivityEnterView.this.sendButton && ChatActivityEnterView.this.textTransitionIsRunning) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.sendButtonEnabled) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.sendButtonContainer = frameLayout2;
        frameLayout2.setClipChildren(false);
        this.sendButtonContainer.setClipToPadding(false);
        this.textFieldContainer.addView(this.sendButtonContainer, LayoutHelper.createFrame(100, 48, 85));
        AnonymousClass20 anonymousClass20 = new AnonymousClass20(activity, resourcesProvider);
        this.audioVideoButtonContainer = anonymousClass20;
        anonymousClass20.setSoundEffectsEnabled(false);
        this.sendButtonContainer.addView(this.audioVideoButtonContainer, LayoutHelper.createFrame(48, 48, 85));
        this.audioVideoButtonContainer.setFocusable(true);
        this.audioVideoButtonContainer.setImportantForAccessibility(1);
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView3 = new ChatActivityEnterViewAnimatedIconView(activity);
        this.audioVideoSendButton = chatActivityEnterViewAnimatedIconView3;
        chatActivityEnterViewAnimatedIconView3.setImportantForAccessibility(2);
        int iDp2 = AndroidUtilities.dp(9.5f);
        this.audioVideoSendButton.setPadding(iDp2, iDp2, iDp2, iDp2);
        this.audioVideoSendButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), mode));
        this.audioVideoButtonContainer.addView(this.audioVideoSendButton, LayoutHelper.createFrame(48, 48.0f));
        ImageView imageView5 = new ImageView(activity);
        this.cancelBotButton = imageView5;
        imageView5.setVisibility(4);
        this.cancelBotButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        ImageView imageView6 = this.cancelBotButton;
        CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2() { // from class: org.telegram.ui.Components.ChatActivityEnterView.21
            @Override // org.telegram.ui.Components.CloseProgressDrawable2
            protected int getCurrentColor() {
                return Theme.getColor(Theme.key_chat_messagePanelCancelInlineBot);
            }
        };
        this.progressDrawable = closeProgressDrawable2;
        imageView6.setImageDrawable(closeProgressDrawable2);
        this.cancelBotButton.setContentDescription(LocaleController.getString("Cancel", R.string.Cancel));
        this.cancelBotButton.setSoundEffectsEnabled(false);
        this.cancelBotButton.setScaleX(0.1f);
        this.cancelBotButton.setScaleY(0.1f);
        this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (i4 >= 21) {
            this.cancelBotButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.sendButtonContainer.addView(this.cancelBotButton, LayoutHelper.createFrame(48, 48, 85));
        this.cancelBotButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        SendButton sendButton = new SendButton(activity, isInScheduleMode() ? R.drawable.input_schedule : R.drawable.ic_send, resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.22
            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInScheduleMode() {
                return ChatActivityEnterView.this.isInScheduleMode();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInactive() {
                return !isInScheduleMode() && ChatActivityEnterView.this.slowModeTimer == Integer.MAX_VALUE;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isOpen() {
                MessageSendPreview messageSendPreview = ChatActivityEnterView.this.messageSendPreview;
                return (messageSendPreview != null && messageSendPreview.isShowing()) || super.isOpen();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean shouldDrawBackground() {
                return ChatActivityEnterView.this.shouldDrawBackground;
            }
        };
        this.sendButton = sendButton;
        sendButton.setVisibility(4);
        getThemedColor(Theme.key_chat_messagePanelSend);
        this.sendButton.setContentDescription(LocaleController.getString(R.string.Send));
        this.sendButton.setSoundEffectsEnabled(false);
        this.sendButton.setScaleX(0.1f);
        this.sendButton.setScaleY(0.1f);
        this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.sendButtonContainer.addView(this.sendButton, LayoutHelper.createFrame(100, 48, 85));
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        this.sendButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.onSendLongClick(view);
            }
        });
        SlowModeBtn slowModeBtn = new SlowModeBtn(activity);
        this.slowModeButton = slowModeBtn;
        slowModeBtn.setTextSize(18);
        this.slowModeButton.setVisibility(4);
        this.slowModeButton.setSoundEffectsEnabled(false);
        this.slowModeButton.setScaleX(0.1f);
        this.slowModeButton.setScaleY(0.1f);
        this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.slowModeButton.setPadding(0, 0, AndroidUtilities.dp(10.0f), 0);
        this.slowModeButton.setGravity(21);
        this.slowModeButton.setTextColor(getThemedColor(i3));
        this.sendButtonContainer.addView(this.slowModeButton, LayoutHelper.createFrame(74, 48, 85));
        this.slowModeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        this.slowModeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$6(view);
            }
        });
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        this.keyboardHeight = globalEmojiSettings.getInt("kbd_height", AndroidUtilities.dp(200.0f));
        this.keyboardHeightLand = globalEmojiSettings.getInt("kbd_height_land3", AndroidUtilities.dp(200.0f));
        setRecordVideoButtonVisible(false, false);
        checkSendButton(false);
        checkChannelRights();
        createMessageEditText();
    }

    static /* synthetic */ float access$4916(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.tooltipAlpha + f;
        chatActivityEnterView.tooltipAlpha = f2;
        return f2;
    }

    static /* synthetic */ float access$4924(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.tooltipAlpha - f;
        chatActivityEnterView.tooltipAlpha = f2;
        return f2;
    }

    static /* synthetic */ float access$5716(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.slideToCancelLockProgress + f;
        chatActivityEnterView.slideToCancelLockProgress = f2;
        return f2;
    }

    static /* synthetic */ float access$5724(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.slideToCancelLockProgress - f;
        chatActivityEnterView.slideToCancelLockProgress = f2;
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$9600(ChatActivityEnterView chatActivityEnterView) {
        chatActivityEnterView.checkBirthdayHint();
    }

    public static CharSequence applyMessageEntities(ArrayList arrayList, CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt) {
        TextStyleSpan textStyleSpan;
        int i;
        Object uRLSpanReplacement;
        int i2;
        MediaDataController.sortEntities(arrayList);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        Object[] spans = spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), Object.class);
        if (spans != null && spans.length > 0) {
            for (Object obj : spans) {
                spannableStringBuilder.removeSpan(obj);
            }
        }
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                try {
                    TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList.get(i3);
                    if (messageEntity.offset + messageEntity.length <= spannableStringBuilder.length()) {
                        if (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) {
                            if (messageEntity.offset + messageEntity.length < spannableStringBuilder.length() && spannableStringBuilder.charAt(messageEntity.offset + messageEntity.length) == ' ') {
                                messageEntity.length++;
                            }
                            uRLSpanReplacement = new URLSpanUserMention("" + ((TLRPC.TL_inputMessageEntityMentionName) messageEntity).user_id.user_id, 3);
                            i2 = messageEntity.offset;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityMentionName) {
                            if (messageEntity.offset + messageEntity.length < spannableStringBuilder.length() && spannableStringBuilder.charAt(messageEntity.offset + messageEntity.length) == ' ') {
                                messageEntity.length++;
                            }
                            uRLSpanReplacement = new URLSpanUserMention("" + ((TLRPC.TL_messageEntityMentionName) messageEntity).user_id, 3);
                            i2 = messageEntity.offset;
                        } else {
                            if (messageEntity instanceof TLRPC.TL_messageEntityCode) {
                                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                                textStyleRun.flags |= 4;
                                textStyleSpan = new TextStyleSpan(textStyleRun);
                                i = messageEntity.offset;
                            } else if (!(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                                if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                                    TextStyleSpan.TextStyleRun textStyleRun2 = new TextStyleSpan.TextStyleRun();
                                    textStyleRun2.flags |= 1;
                                    textStyleSpan = new TextStyleSpan(textStyleRun2);
                                    i = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                                    TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun();
                                    textStyleRun3.flags |= 2;
                                    textStyleSpan = new TextStyleSpan(textStyleRun3);
                                    i = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                                    TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun();
                                    textStyleRun4.flags |= 8;
                                    textStyleSpan = new TextStyleSpan(textStyleRun4);
                                    i = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                                    TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun();
                                    textStyleRun5.flags |= 16;
                                    textStyleSpan = new TextStyleSpan(textStyleRun5);
                                    i = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                                    uRLSpanReplacement = new URLSpanReplacement(messageEntity.url);
                                    i2 = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                                    TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun();
                                    textStyleRun6.flags |= 256;
                                    textStyleSpan = new TextStyleSpan(textStyleRun6);
                                    i = messageEntity.offset;
                                } else if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                                    TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = (TLRPC.TL_messageEntityCustomEmoji) messageEntity;
                                    AnimatedEmojiSpan animatedEmojiSpan = tL_messageEntityCustomEmoji.document != null ? new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document, fontMetricsInt) : new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document_id, fontMetricsInt);
                                    int i4 = messageEntity.offset;
                                    spannableStringBuilder.setSpan(animatedEmojiSpan, i4, messageEntity.length + i4, 33);
                                }
                            }
                            MediaDataController.addStyleToText(textStyleSpan, i, messageEntity.length + i, spannableStringBuilder, true);
                        }
                        spannableStringBuilder.setSpan(uRLSpanReplacement, i2, messageEntity.length + i2, 33);
                    }
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
        QuoteSpan.mergeQuotes(spannableStringBuilder, arrayList);
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji((CharSequence) new SpannableStringBuilder(spannableStringBuilder), fontMetricsInt, false, (int[]) null);
        if (arrayList != null) {
            try {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    TLRPC.MessageEntity messageEntity2 = (TLRPC.MessageEntity) arrayList.get(size);
                    if ((messageEntity2 instanceof TLRPC.TL_messageEntityPre) && messageEntity2.offset + messageEntity2.length <= charSequenceReplaceEmoji.length()) {
                        if (!(charSequenceReplaceEmoji instanceof Spannable)) {
                            charSequenceReplaceEmoji = new SpannableStringBuilder(charSequenceReplaceEmoji);
                        }
                        ((SpannableStringBuilder) charSequenceReplaceEmoji).insert(messageEntity2.offset + messageEntity2.length, (CharSequence) "```\n");
                        SpannableStringBuilder spannableStringBuilder2 = (SpannableStringBuilder) charSequenceReplaceEmoji;
                        int i5 = messageEntity2.offset;
                        StringBuilder sb = new StringBuilder();
                        sb.append("```");
                        String str = messageEntity2.language;
                        if (str == null) {
                            str = "";
                        }
                        sb.append(str);
                        sb.append("\n");
                        spannableStringBuilder2.insert(i5, (CharSequence) sb.toString());
                    }
                }
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
        return charSequenceReplaceEmoji;
    }

    private void applyStoryToSendMessageParams(SendMessagesHelper.SendMessageParams sendMessageParams) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            sendMessageParams.replyToStoryItem = chatActivityEnterViewDelegate.getReplyToStory();
            sendMessageParams.replyQuote = this.delegate.getReplyQuote();
        }
    }

    private void attachEmojiView() {
        if (this.emojiView.getParent() == null) {
            int childCount = this.sizeNotifierLayout.getChildCount() - 5;
            if (!this.shouldDrawBackground) {
                childCount = this.sizeNotifierLayout.getChildCount();
            }
            this.sizeNotifierLayout.addView(this.emojiView, childCount);
        }
    }

    private void beginDelayedTransition() {
        HashMap map = this.animationParamsX;
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.emojiButton;
        map.put(chatActivityEnterViewAnimatedIconView, Float.valueOf(chatActivityEnterViewAnimatedIconView.getX()));
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            this.animationParamsX.put(editTextCaption, Float.valueOf(editTextCaption.getX()));
        }
    }

    private BusinessLinkPresetMessage calculateBusinessLinkPresetMessage() {
        EditTextCaption editTextCaption = this.messageEditText;
        CharSequence[] charSequenceArr = {AndroidUtilities.getTrimmedString(editTextCaption == null ? "" : editTextCaption.getTextToUse())};
        ArrayList<TLRPC.MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true);
        CharSequence charSequence = charSequenceArr[0];
        int size = entities.size();
        for (int i = 0; i < size; i++) {
            TLRPC.MessageEntity messageEntity = entities.get(i);
            if (messageEntity.offset + messageEntity.length > charSequence.length()) {
                messageEntity.length = charSequence.length() - messageEntity.offset;
            }
        }
        BusinessLinkPresetMessage businessLinkPresetMessage = new BusinessLinkPresetMessage();
        businessLinkPresetMessage.text = charSequence.toString();
        businessLinkPresetMessage.entities = entities;
        return businessLinkPresetMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelRecordInterfaceInternal() {
        FrameLayout frameLayout = this.recordPanel;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setVisibility(8);
        }
        this.runningAnimationAudio = null;
        isRecordingStateChanged();
        if (this.attachLayout != null) {
            this.attachLayoutTranslationX = BitmapDescriptorFactory.HUE_RED;
            updateAttachLayoutParams();
        }
        SlideTextView slideTextView = this.slideText;
        if (slideTextView != null) {
            slideTextView.setCancelToProgress(BitmapDescriptorFactory.HUE_RED);
        }
        this.delegate.onAudioVideoInterfaceUpdated();
        updateSendAsButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBirthdayHint() {
        ImageView imageView;
        ChatActivity chatActivity;
        if (this.birthdayHint != null || (imageView = this.giftButton) == null || imageView.getRight() == 0 || (chatActivity = this.parentFragment) == null || !BirthdayController.isToday(chatActivity.getCurrentUserInfo())) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean(Calendar.getInstance().get(1) + "bdayhint_" + this.parentFragment.getDialogId(), true)) {
            MessagesController.getInstance(this.currentAccount).getMainSettings().edit().putBoolean(Calendar.getInstance().get(1) + "bdayhint_" + this.parentFragment.getDialogId(), false).apply();
            HintView2 hintView2 = new HintView2(getContext(), 3);
            this.birthdayHint = hintView2;
            hintView2.setRounding(13.0f);
            this.birthdayHint.setMultilineText(true);
            setBirthdayHintText();
            this.birthdayHint.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
            this.birthdayHint.setJointPx(1.0f, -((getWidth() - AndroidUtilities.dp(12.0f)) - (((this.messageEditTextContainer.getX() + this.attachLayout.getX()) + this.giftButton.getX()) + (this.giftButton.getMeasuredWidth() / 2.0f))));
            addView(this.birthdayHint, LayoutHelper.createFrame(-1, 200.0f, 48, BitmapDescriptorFactory.HUE_RED, -192.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            this.birthdayHint.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkBirthdayHint$65();
                }
            });
            this.birthdayHint.setDuration(8000L);
            this.birthdayHint.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBotMenu() {
        EditTextCaption editTextCaption = this.messageEditText;
        boolean z = ((editTextCaption != null && !TextUtils.isEmpty(editTextCaption.getText())) || this.keyboardVisible || this.waitingForKeyboardOpen || isPopupShowing()) ? false : true;
        if (z) {
            createBotCommandsMenuButton();
        }
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            boolean z2 = botCommandsMenuView.expanded;
            botCommandsMenuView.setExpanded(z, true);
            if (z2 != this.botCommandsMenuButton.expanded) {
                beginDelayedTransition();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0136 A[EDGE_INSN: B:129:0x0136->B:88:0x0136 BREAK  A[LOOP:3: B:44:0x00a9->B:86:0x0131], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean checkPremiumAnimatedEmoji(int i, long j, final BaseFragment baseFragment, FrameLayout frameLayout, CharSequence charSequence) {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int i2;
        TLRPC.ChatFull chatFull;
        TLRPC.TL_messages_stickerSet groupStickerSetById;
        Iterator it;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        if (charSequence != null && baseFragment != null && !UserConfig.getInstance(i).isPremium() && UserConfig.getInstance(i).getClientUserId() != j && (charSequence instanceof Spanned) && (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class)) != null) {
            int i3 = 0;
            while (i3 < animatedEmojiSpanArr.length) {
                AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i3];
                if (animatedEmojiSpan != null) {
                    TLRPC.Document documentFindDocument = animatedEmojiSpan.document;
                    if (documentFindDocument == null) {
                        documentFindDocument = AnimatedEmojiDrawable.findDocument(i, animatedEmojiSpan.getDocumentId());
                    }
                    long documentId = animatedEmojiSpanArr[i3].getDocumentId();
                    if (documentFindDocument == null) {
                        Iterator<TLRPC.TL_messages_stickerSet> it2 = MediaDataController.getInstance(i).getStickerSets(5).iterator();
                        while (it2.hasNext()) {
                            TLRPC.TL_messages_stickerSet next = it2.next();
                            if (next != null && (arrayList3 = next.documents) != null && !arrayList3.isEmpty()) {
                                Iterator it3 = next.documents.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        break;
                                    }
                                    TLRPC.Document document = (TLRPC.Document) it3.next();
                                    if (document.id == documentId) {
                                        documentFindDocument = document;
                                        break;
                                    }
                                }
                            }
                            if (documentFindDocument != null) {
                                break;
                            }
                        }
                    }
                    if (documentFindDocument != null) {
                        i2 = i3;
                        if (documentFindDocument != null) {
                            it = groupStickerSetById.documents.iterator();
                            while (it.hasNext()) {
                            }
                        }
                        if (documentFindDocument != null) {
                        }
                        BulletinFactory.of(baseFragment).createEmojiBulletin(documentFindDocument, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiHint", R.string.UnlockPremiumEmojiHint)), LocaleController.getString("PremiumMore", R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda82
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.lambda$checkPremiumAnimatedEmoji$51(baseFragment);
                            }
                        }).show();
                        return true;
                    }
                    Iterator<TLRPC.StickerSetCovered> it4 = MediaDataController.getInstance(i).getFeaturedEmojiSets().iterator();
                    while (it4.hasNext()) {
                        TLRPC.StickerSetCovered next2 = it4.next();
                        if (next2 == null || (arrayList2 = next2.covers) == null || arrayList2.isEmpty()) {
                            i2 = i3;
                            if (documentFindDocument != null) {
                                break;
                            }
                            if (next2 instanceof TLRPC.TL_stickerSetFullCovered) {
                                arrayList = ((TLRPC.TL_stickerSetFullCovered) next2).documents;
                            } else if (!(next2 instanceof TLRPC.TL_stickerSetNoCovered) || next2.set == null) {
                                arrayList = null;
                            } else {
                                TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
                                tL_inputStickerSetID.id = next2.set.id;
                                TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(i).getStickerSet(tL_inputStickerSetID, true);
                                if (stickerSet == null || (arrayList = stickerSet.documents) == null) {
                                }
                            }
                            if (arrayList != null && !arrayList.isEmpty()) {
                                Iterator it5 = arrayList.iterator();
                                while (true) {
                                    if (!it5.hasNext()) {
                                        break;
                                    }
                                    TLRPC.Document document2 = (TLRPC.Document) it5.next();
                                    if (document2.id == documentId) {
                                        documentFindDocument = document2;
                                        break;
                                    }
                                }
                            }
                            if (documentFindDocument != null) {
                                break;
                            }
                            i3 = i2;
                        } else {
                            Iterator it6 = next2.covers.iterator();
                            while (it6.hasNext()) {
                                TLRPC.Document document3 = (TLRPC.Document) it6.next();
                                i2 = i3;
                                if (document3.id == documentId) {
                                    documentFindDocument = document3;
                                    break;
                                }
                                i3 = i2;
                            }
                            i2 = i3;
                            if (documentFindDocument != null) {
                            }
                        }
                    }
                    i2 = i3;
                    if (documentFindDocument != null && (chatFull = MessagesController.getInstance(i).getChatFull(-j)) != null && chatFull.emojiset != null && (groupStickerSetById = MediaDataController.getInstance(i).getGroupStickerSetById(chatFull.emojiset)) != null) {
                        it = groupStickerSetById.documents.iterator();
                        while (it.hasNext()) {
                            if (((TLRPC.Document) it.next()).id == documentId) {
                                return false;
                            }
                        }
                    }
                    if (documentFindDocument != null || !MessageObject.isFreeEmoji(documentFindDocument)) {
                        BulletinFactory.of(baseFragment).createEmojiBulletin(documentFindDocument, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiHint", R.string.UnlockPremiumEmojiHint)), LocaleController.getString("PremiumMore", R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda82
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.lambda$checkPremiumAnimatedEmoji$51(baseFragment);
                            }
                        }).show();
                        return true;
                    }
                } else {
                    i2 = i3;
                }
                i3 = i2 + 1;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0c32  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0c67  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkSendButton(boolean z) {
        int i;
        ValueAnimator valueAnimatorOfFloat;
        AnimatorSet animatorSet;
        AnimatorListenerAdapter animatorListenerAdapter;
        ImageView imageView;
        ImageView imageView2;
        ObjectAnimator objectAnimatorOfFloat;
        ImageView imageView3;
        ObjectAnimator objectAnimatorOfFloat2;
        int i2;
        if (this.editingMessageObject != null || this.recordingAudioVideo) {
            return;
        }
        boolean z2 = this.isPaused ? false : z;
        updateSendButtonPaid();
        EditTextCaption editTextCaption = this.messageEditText;
        CharSequence trimmedString = editTextCaption == null ? "" : AndroidUtilities.getTrimmedString(editTextCaption.getTextToUse());
        int i3 = this.slowModeTimer;
        float f = 1.0f;
        if (i3 <= 0 || i3 == Integer.MAX_VALUE || isInScheduleMode()) {
            if (trimmedString.length() <= 0 && !this.forceShowSendButton && this.audioToSend == null && this.videoToSendMessageObject == null && (this.slowModeTimer != Integer.MAX_VALUE || isInScheduleMode())) {
                if (this.emojiView == null || !this.emojiViewVisible || (!(this.stickersTabOpen || (this.emojiTabOpen && this.searchingType == 2)) || AndroidUtilities.isInMultiwindow)) {
                    if (getSendButtonInternal().getVisibility() != 0 && this.cancelBotButton.getVisibility() != 0 && (((imageView3 = this.expandStickersButton) == null || imageView3.getVisibility() != 0) && this.slowModeButton.getVisibility() != 0)) {
                        return;
                    }
                    if (!z2) {
                        this.slowModeButton.setScaleX(0.1f);
                        this.slowModeButton.setScaleY(0.1f);
                        this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        setSlowModeButtonVisible(false);
                        getSendButtonInternal().setScaleX(0.1f);
                        getSendButtonInternal().setScaleY(0.1f);
                        getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                        getSendButtonInternal().setVisibility(8);
                        this.cancelBotButton.setScaleX(0.1f);
                        this.cancelBotButton.setScaleY(0.1f);
                        this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.cancelBotButton.setVisibility(8);
                        ImageView imageView4 = this.expandStickersButton;
                        if (imageView4 != null) {
                            imageView4.setScaleX(0.1f);
                            this.expandStickersButton.setScaleY(0.1f);
                            this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            this.expandStickersButton.setVisibility(8);
                        }
                        this.audioVideoButtonContainer.setScaleX(1.0f);
                        this.audioVideoButtonContainer.setScaleY(1.0f);
                        this.audioVideoButtonContainer.setAlpha(1.0f);
                        this.audioVideoButtonContainer.setVisibility(0);
                        if (this.attachLayout != null) {
                            if (getVisibility() == 0) {
                                this.delegate.onAttachButtonShow();
                            }
                            this.attachLayoutAlpha = 1.0f;
                            updateAttachLayoutParams();
                            this.attachLayout.setScaleX(1.0f);
                            this.attachLayout.setVisibility(0);
                            updateFieldRight(1);
                        }
                        this.scheduleButtonHidden = false;
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                        if (chatActivityEnterViewDelegate != null && chatActivityEnterViewDelegate.hasScheduledMessages()) {
                            createScheduledButton();
                        }
                        if (this.scheduledButton == null) {
                            return;
                        }
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
                        if (chatActivityEnterViewDelegate2 != null && chatActivityEnterViewDelegate2.hasScheduledMessages()) {
                            this.scheduledButton.setVisibility(0);
                            this.scheduledButton.setTag(1);
                        }
                    } else {
                        if (this.runningAnimationType == 2) {
                            return;
                        }
                        AnimatorSet animatorSet2 = this.runningAnimation;
                        if (animatorSet2 != null) {
                            animatorSet2.cancel();
                            this.runningAnimation = null;
                        }
                        AnimatorSet animatorSet3 = this.runningAnimation2;
                        if (animatorSet3 != null) {
                            animatorSet3.cancel();
                            this.runningAnimation2 = null;
                        }
                        LinearLayout linearLayout = this.attachLayout;
                        if (linearLayout != null) {
                            if (linearLayout.getVisibility() != 0) {
                                this.attachLayout.setVisibility(0);
                                this.attachLayoutAlpha = BitmapDescriptorFactory.HUE_RED;
                                updateAttachLayoutParams();
                                this.attachLayout.setScaleX(BitmapDescriptorFactory.HUE_RED);
                            }
                            this.runningAnimation2 = new AnimatorSet();
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                            LinearLayout linearLayout2 = this.attachLayout;
                            Property property = View.SCALE_X;
                            arrayList.add(ObjectAnimator.ofFloat(linearLayout2, (Property<LinearLayout, Float>) property, 1.0f));
                            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
                            boolean z3 = chatActivityEnterViewDelegate3 != null && chatActivityEnterViewDelegate3.hasScheduledMessages();
                            this.scheduleButtonHidden = false;
                            if (z3) {
                                createScheduledButton();
                            }
                            ImageView imageView5 = this.scheduledButton;
                            if (imageView5 != null) {
                                if (z3) {
                                    imageView5.setVisibility(0);
                                    this.scheduledButton.setTag(1);
                                    this.scheduledButton.setPivotX(AndroidUtilities.dp(48.0f));
                                    arrayList.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.ALPHA, 1.0f));
                                    arrayList.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property, 1.0f));
                                    ImageView imageView6 = this.scheduledButton;
                                    Property property2 = View.TRANSLATION_X;
                                    ImageView imageView7 = this.giftButton;
                                    arrayList.add(ObjectAnimator.ofFloat(imageView6, (Property<ImageView, Float>) property2, (imageView7 == null || imageView7.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(48.0f)));
                                    ImageView imageView8 = this.notifyButton;
                                    if (imageView8 != null && imageView8.getVisibility() == 0) {
                                        this.notifyButton.setVisibility(8);
                                    }
                                } else {
                                    imageView5.setAlpha(1.0f);
                                    this.scheduledButton.setScaleX(1.0f);
                                    this.scheduledButton.setScaleY(1.0f);
                                    this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                                }
                            }
                            this.runningAnimation2.playTogether(arrayList);
                            this.runningAnimation2.setDuration(100L);
                            this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.56
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                    if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                        ChatActivityEnterView.this.runningAnimation2 = null;
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                        ChatActivityEnterView.this.runningAnimation2 = null;
                                    }
                                }
                            });
                            this.runningAnimation2.start();
                            updateFieldRight(1);
                            if (getVisibility() == 0) {
                                this.delegate.onAttachButtonShow();
                            }
                        }
                        this.audioVideoButtonContainer.setVisibility(0);
                        this.runningAnimation = new AnimatorSet();
                        this.runningAnimationType = 2;
                        ArrayList arrayList2 = new ArrayList();
                        FrameLayout frameLayout = this.audioVideoButtonContainer;
                        Property property3 = View.SCALE_X;
                        arrayList2.add(ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property3, 1.0f));
                        FrameLayout frameLayout2 = this.audioVideoButtonContainer;
                        Property property4 = View.SCALE_Y;
                        arrayList2.add(ObjectAnimator.ofFloat(frameLayout2, (Property<FrameLayout, Float>) property4, 1.0f));
                        ChatActivity chatActivity = this.parentFragment;
                        TLRPC.Chat currentChat = chatActivity != null ? chatActivity.getCurrentChat() : null;
                        ChatActivity chatActivity2 = this.parentFragment;
                        TLRPC.UserFull currentUserInfo = chatActivity2 == null ? this.userInfo : chatActivity2.getCurrentUserInfo();
                        if (currentChat == null ? !(currentUserInfo == null || !currentUserInfo.voice_messages_forbidden) : !(ChatObject.canSendVoice(currentChat) || ChatObject.canSendRoundVideo(currentChat))) {
                            f = 0.5f;
                        }
                        FrameLayout frameLayout3 = this.audioVideoButtonContainer;
                        Property property5 = View.ALPHA;
                        arrayList2.add(ObjectAnimator.ofFloat(frameLayout3, (Property<FrameLayout, Float>) property5, f));
                        if (this.cancelBotButton.getVisibility() == 0) {
                            arrayList2.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property3, 0.1f));
                            arrayList2.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property4, 0.1f));
                            objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property5, BitmapDescriptorFactory.HUE_RED);
                        } else {
                            ImageView imageView9 = this.expandStickersButton;
                            if (imageView9 != null && imageView9.getVisibility() == 0) {
                                arrayList2.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) property3, 0.1f));
                                arrayList2.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) property4, 0.1f));
                                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) property5, BitmapDescriptorFactory.HUE_RED);
                            } else if (this.slowModeButton.getVisibility() == 0) {
                                arrayList2.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property3, 0.1f));
                                arrayList2.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property4, 0.1f));
                                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property5, BitmapDescriptorFactory.HUE_RED);
                            } else {
                                arrayList2.add(ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property3, 0.1f));
                                arrayList2.add(ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property4, 0.1f));
                                objectAnimatorOfFloat = ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property5, BitmapDescriptorFactory.HUE_RED);
                            }
                        }
                        arrayList2.add(objectAnimatorOfFloat);
                        this.runningAnimation.playTogether(arrayList2);
                        this.runningAnimation.setDuration(150L);
                        animatorSet = this.runningAnimation;
                        animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.57
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                    ChatActivityEnterView.this.runningAnimation = null;
                                }
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                    ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                                    ChatActivityEnterView.this.runningAnimation = null;
                                    ChatActivityEnterView.this.runningAnimationType = 0;
                                    if (ChatActivityEnterView.this.audioVideoButtonContainer != null) {
                                        ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(0);
                                    }
                                }
                            }
                        };
                    }
                } else if (!z2) {
                    this.slowModeButton.setScaleX(0.1f);
                    this.slowModeButton.setScaleY(0.1f);
                    this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    setSlowModeButtonVisible(false);
                    getSendButtonInternal().setScaleX(0.1f);
                    getSendButtonInternal().setScaleY(0.1f);
                    getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                    getSendButtonInternal().setVisibility(8);
                    this.cancelBotButton.setScaleX(0.1f);
                    this.cancelBotButton.setScaleY(0.1f);
                    this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.cancelBotButton.setVisibility(8);
                    this.audioVideoButtonContainer.setScaleX(0.1f);
                    this.audioVideoButtonContainer.setScaleY(0.1f);
                    this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.audioVideoButtonContainer.setVisibility(8);
                    createExpandStickersButton();
                    this.expandStickersButton.setScaleX(1.0f);
                    this.expandStickersButton.setScaleY(1.0f);
                    this.expandStickersButton.setAlpha(1.0f);
                    this.expandStickersButton.setVisibility(0);
                    if (this.attachLayout != null) {
                        if (getVisibility() == 0) {
                            this.delegate.onAttachButtonShow();
                        }
                        this.attachLayout.setVisibility(0);
                        updateFieldRight(1);
                    }
                    this.scheduleButtonHidden = false;
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate4 = this.delegate;
                    boolean z4 = chatActivityEnterViewDelegate4 != null && chatActivityEnterViewDelegate4.hasScheduledMessages();
                    if (z4) {
                        createScheduledButton();
                    }
                    ImageView imageView10 = this.scheduledButton;
                    if (imageView10 == null) {
                        return;
                    }
                    if (z4) {
                        imageView10.setVisibility(0);
                        this.scheduledButton.setTag(1);
                    }
                } else {
                    if (this.runningAnimationType == 4) {
                        return;
                    }
                    AnimatorSet animatorSet4 = this.runningAnimation;
                    if (animatorSet4 != null) {
                        animatorSet4.cancel();
                        this.runningAnimation = null;
                    }
                    AnimatorSet animatorSet5 = this.runningAnimation2;
                    if (animatorSet5 != null) {
                        animatorSet5.cancel();
                        this.runningAnimation2 = null;
                    }
                    LinearLayout linearLayout3 = this.attachLayout;
                    if (linearLayout3 != null && this.recordInterfaceState == 0) {
                        linearLayout3.setVisibility(0);
                        this.runningAnimation2 = new AnimatorSet();
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                        LinearLayout linearLayout4 = this.attachLayout;
                        Property property6 = View.SCALE_X;
                        arrayList3.add(ObjectAnimator.ofFloat(linearLayout4, (Property<LinearLayout, Float>) property6, 1.0f));
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate5 = this.delegate;
                        boolean z5 = chatActivityEnterViewDelegate5 != null && chatActivityEnterViewDelegate5.hasScheduledMessages();
                        this.scheduleButtonHidden = false;
                        if (z5) {
                            createScheduledButton();
                        }
                        ImageView imageView11 = this.scheduledButton;
                        if (imageView11 != null) {
                            imageView11.setScaleY(1.0f);
                            if (z5) {
                                this.scheduledButton.setVisibility(0);
                                this.scheduledButton.setTag(1);
                                this.scheduledButton.setPivotX(AndroidUtilities.dp(48.0f));
                                arrayList3.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.ALPHA, 1.0f));
                                arrayList3.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property6, 1.0f));
                                arrayList3.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                            } else {
                                this.scheduledButton.setAlpha(1.0f);
                                this.scheduledButton.setScaleX(1.0f);
                                this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                            }
                        }
                        this.runningAnimation2.playTogether(arrayList3);
                        this.runningAnimation2.setDuration(100L);
                        this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.54
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                    ChatActivityEnterView.this.runningAnimation2 = null;
                                }
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                    ChatActivityEnterView.this.runningAnimation2 = null;
                                }
                            }
                        });
                        this.runningAnimation2.start();
                        updateFieldRight(1);
                        if (getVisibility() == 0) {
                            this.delegate.onAttachButtonShow();
                        }
                    }
                    createExpandStickersButton();
                    this.expandStickersButton.setVisibility(0);
                    this.runningAnimation = new AnimatorSet();
                    this.runningAnimationType = 4;
                    ArrayList arrayList4 = new ArrayList();
                    ImageView imageView12 = this.expandStickersButton;
                    Property property7 = View.SCALE_X;
                    arrayList4.add(ObjectAnimator.ofFloat(imageView12, (Property<ImageView, Float>) property7, 1.0f));
                    ImageView imageView13 = this.expandStickersButton;
                    Property property8 = View.SCALE_Y;
                    arrayList4.add(ObjectAnimator.ofFloat(imageView13, (Property<ImageView, Float>) property8, 1.0f));
                    ImageView imageView14 = this.expandStickersButton;
                    Property property9 = View.ALPHA;
                    arrayList4.add(ObjectAnimator.ofFloat(imageView14, (Property<ImageView, Float>) property9, 1.0f));
                    if (this.cancelBotButton.getVisibility() == 0) {
                        arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property7, 0.1f));
                        arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property8, 0.1f));
                        objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) property9, BitmapDescriptorFactory.HUE_RED);
                    } else if (this.audioVideoButtonContainer.getVisibility() == 0) {
                        arrayList4.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property7, 0.1f));
                        arrayList4.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property8, 0.1f));
                        objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property9, BitmapDescriptorFactory.HUE_RED);
                    } else if (this.slowModeButton.getVisibility() == 0) {
                        arrayList4.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property7, 0.1f));
                        arrayList4.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property8, 0.1f));
                        objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) property9, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        arrayList4.add(ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property7, 0.1f));
                        arrayList4.add(ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property8, 0.1f));
                        objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(getSendButtonInternal(), (Property<View, Float>) property9, BitmapDescriptorFactory.HUE_RED);
                    }
                    arrayList4.add(objectAnimatorOfFloat2);
                    this.runningAnimation.playTogether(arrayList4);
                    this.runningAnimation.setDuration(250L);
                    animatorSet = this.runningAnimation;
                    animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.55
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                ChatActivityEnterView.this.runningAnimation = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                ChatActivityEnterView.this.getSendButtonInternal().setVisibility(8);
                                ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                                ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                                ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                                ChatActivityEnterView.this.expandStickersButton.setVisibility(0);
                                ChatActivityEnterView.this.runningAnimation = null;
                                ChatActivityEnterView.this.runningAnimationType = 0;
                            }
                        }
                    };
                }
                this.scheduledButton.setAlpha(1.0f);
                this.scheduledButton.setScaleX(1.0f);
                this.scheduledButton.setScaleY(1.0f);
                this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                return;
            }
            EditTextCaption editTextCaption2 = this.messageEditText;
            final String caption = editTextCaption2 == null ? null : editTextCaption2.getCaption();
            boolean z6 = caption != null && (getSendButtonInternal().getVisibility() == 0 || ((imageView2 = this.expandStickersButton) != null && imageView2.getVisibility() == 0));
            boolean z7 = caption == null && (this.cancelBotButton.getVisibility() == 0 || ((imageView = this.expandStickersButton) != null && imageView.getVisibility() == 0));
            int themedColor = getThemedColor((this.slowModeTimer != Integer.MAX_VALUE || isInScheduleMode()) ? Theme.key_chat_messagePanelSend : Theme.key_chat_messagePanelIcons);
            if (themedColor != this.sendButtonBackgroundColor) {
                this.sendButtonBackgroundColor = themedColor;
                Theme.setSelectorDrawableColor(this.sendButton.getBackground(), Color.argb(24, Color.red(themedColor), Color.green(themedColor), Color.blue(themedColor)), true);
            }
            if (this.audioVideoButtonContainer.getVisibility() != 0 && this.slowModeButton.getVisibility() != 0 && !z6 && !z7) {
                return;
            }
            if (!z2) {
                this.audioVideoButtonContainer.setScaleX(0.1f);
                this.audioVideoButtonContainer.setScaleY(0.1f);
                this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.audioVideoButtonContainer.setVisibility(8);
                if (this.slowModeButton.getVisibility() == 0) {
                    this.slowModeButton.setScaleX(0.1f);
                    this.slowModeButton.setScaleY(0.1f);
                    this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    setSlowModeButtonVisible(false);
                }
                if (caption != null) {
                    getSendButtonInternal().setScaleX(0.1f);
                    getSendButtonInternal().setScaleY(0.1f);
                    getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                    getSendButtonInternal().setVisibility(8);
                    this.cancelBotButton.setScaleX(1.0f);
                    this.cancelBotButton.setScaleY(1.0f);
                    this.cancelBotButton.setAlpha(1.0f);
                    this.cancelBotButton.setVisibility(0);
                } else {
                    this.cancelBotButton.setScaleX(0.1f);
                    this.cancelBotButton.setScaleY(0.1f);
                    this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    getSendButtonInternal().setVisibility(0);
                    getSendButtonInternal().setScaleX(1.0f);
                    getSendButtonInternal().setScaleY(1.0f);
                    getSendButtonInternal().setAlpha(1.0f);
                    this.cancelBotButton.setVisibility(8);
                }
                ImageView imageView15 = this.expandStickersButton;
                if (imageView15 == null || imageView15.getVisibility() != 0) {
                    i = 8;
                } else {
                    this.expandStickersButton.setScaleX(0.1f);
                    this.expandStickersButton.setScaleY(0.1f);
                    this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    i = 8;
                    this.expandStickersButton.setVisibility(8);
                }
                LinearLayout linearLayout5 = this.attachLayout;
                if (linearLayout5 != null) {
                    linearLayout5.setVisibility(i);
                    if (this.delegate != null && getVisibility() == 0) {
                        this.delegate.onAttachButtonHidden();
                    }
                    updateFieldRight(0);
                }
                this.scheduleButtonHidden = true;
                if (this.scheduledButton != null) {
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate6 = this.delegate;
                    if (chatActivityEnterViewDelegate6 != null && chatActivityEnterViewDelegate6.hasScheduledMessages()) {
                        this.scheduledButton.setVisibility(8);
                        this.scheduledButton.setTag(null);
                    }
                    this.scheduledButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.scheduledButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.scheduledButton.setScaleY(1.0f);
                    ImageView imageView16 = this.scheduledButton;
                    ImageView imageView17 = this.botButton;
                    int iDp = AndroidUtilities.dp((imageView17 == null || imageView17.getVisibility() != 0) ? 48.0f : 96.0f);
                    ImageView imageView18 = this.giftButton;
                    imageView16.setTranslationX(iDp - AndroidUtilities.dp((imageView18 == null || imageView18.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f));
                    return;
                }
                return;
            }
            int i4 = this.runningAnimationType;
            if (i4 == 1 && caption == null) {
                return;
            }
            if (i4 == 3 && caption != null) {
                return;
            }
            AnimatorSet animatorSet6 = this.runningAnimation;
            if (animatorSet6 != null) {
                animatorSet6.cancel();
                this.runningAnimation = null;
            }
            AnimatorSet animatorSet7 = this.runningAnimation2;
            if (animatorSet7 != null) {
                animatorSet7.cancel();
                this.runningAnimation2 = null;
            }
            if (this.attachLayout != null) {
                this.runningAnimation2 = new AnimatorSet();
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, BitmapDescriptorFactory.HUE_RED));
                LinearLayout linearLayout6 = this.attachLayout;
                Property property10 = View.SCALE_X;
                arrayList5.add(ObjectAnimator.ofFloat(linearLayout6, (Property<LinearLayout, Float>) property10, BitmapDescriptorFactory.HUE_RED));
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate7 = this.delegate;
                final boolean z8 = chatActivityEnterViewDelegate7 != null && chatActivityEnterViewDelegate7.hasScheduledMessages();
                this.scheduleButtonHidden = true;
                ImageView imageView19 = this.scheduledButton;
                if (imageView19 != null) {
                    imageView19.setScaleY(1.0f);
                    if (z8) {
                        this.scheduledButton.setTag(null);
                        arrayList5.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        arrayList5.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property10, BitmapDescriptorFactory.HUE_RED));
                        ImageView imageView20 = this.scheduledButton;
                        Property property11 = View.TRANSLATION_X;
                        ImageView imageView21 = this.botButton;
                        int iDp2 = AndroidUtilities.dp((imageView21 == null || imageView21.getVisibility() != 0) ? 48.0f : 96.0f);
                        ImageView imageView22 = this.giftButton;
                        arrayList5.add(ObjectAnimator.ofFloat(imageView20, (Property<ImageView, Float>) property11, iDp2 - AndroidUtilities.dp((imageView22 == null || imageView22.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f)));
                    } else {
                        this.scheduledButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.scheduledButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        ImageView imageView23 = this.scheduledButton;
                        ImageView imageView24 = this.botButton;
                        int iDp3 = AndroidUtilities.dp((imageView24 == null || imageView24.getVisibility() != 0) ? 48.0f : 96.0f);
                        ImageView imageView25 = this.giftButton;
                        imageView23.setTranslationX(iDp3 - AndroidUtilities.dp((imageView25 == null || imageView25.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f));
                    }
                }
                this.runningAnimation2.playTogether(arrayList5);
                this.runningAnimation2.setDuration(100L);
                this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.52
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                            ChatActivityEnterView.this.runningAnimation2 = null;
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                            ChatActivityEnterView.this.attachLayout.setVisibility(8);
                            if (z8 && ChatActivityEnterView.this.scheduledButton != null) {
                                ChatActivityEnterView.this.scheduledButton.setVisibility(8);
                            }
                            ChatActivityEnterView.this.runningAnimation2 = null;
                        }
                    }
                });
                this.runningAnimation2.start();
                updateFieldRight(0);
                if (this.delegate != null && getVisibility() == 0) {
                    this.delegate.onAttachButtonHidden();
                }
            }
            this.runningAnimation = new AnimatorSet();
            ArrayList arrayList6 = new ArrayList();
            if (this.audioVideoButtonContainer.getVisibility() == 0) {
                arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.SCALE_X, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.SCALE_Y, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            ImageView imageView26 = this.expandStickersButton;
            if (imageView26 != null && imageView26.getVisibility() == 0) {
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.SCALE_X, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.SCALE_Y, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            if (this.slowModeButton.getVisibility() == 0) {
                arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.SCALE_X, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.SCALE_Y, 0.1f));
                arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            if (z6) {
                valueAnimatorOfFloat = animateSendButton(false);
            } else {
                if (z7) {
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_X, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_Y, 0.1f));
                    valueAnimatorOfFloat = ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                }
                if (caption == null) {
                    this.runningAnimationType = 3;
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_X, 1.0f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_Y, 1.0f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.ALPHA, 1.0f));
                    this.cancelBotButton.setVisibility(0);
                } else {
                    this.runningAnimationType = 1;
                    arrayList6.add(animateSendButton(true));
                    getSendButtonInternal().setVisibility(0);
                }
                this.runningAnimation.playTogether(arrayList6);
                this.runningAnimation.setDuration(150L);
                animatorSet = this.runningAnimation;
                animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.53
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            ChatActivityEnterView.this.runningAnimation = null;
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            if (caption != null) {
                                ChatActivityEnterView.this.cancelBotButton.setVisibility(0);
                                ChatActivityEnterView.this.getSendButtonInternal().setVisibility(8);
                            } else {
                                ChatActivityEnterView.this.getSendButtonInternal().setVisibility(0);
                                ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                            }
                            ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                            if (ChatActivityEnterView.this.expandStickersButton != null) {
                                ChatActivityEnterView.this.expandStickersButton.setVisibility(8);
                            }
                            ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                            ChatActivityEnterView.this.runningAnimation = null;
                            ChatActivityEnterView.this.runningAnimationType = 0;
                        }
                    }
                };
            }
            arrayList6.add(valueAnimatorOfFloat);
            if (caption == null) {
            }
            this.runningAnimation.playTogether(arrayList6);
            this.runningAnimation.setDuration(150L);
            animatorSet = this.runningAnimation;
            animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.53
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                        ChatActivityEnterView.this.runningAnimation = null;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                        if (caption != null) {
                            ChatActivityEnterView.this.cancelBotButton.setVisibility(0);
                            ChatActivityEnterView.this.getSendButtonInternal().setVisibility(8);
                        } else {
                            ChatActivityEnterView.this.getSendButtonInternal().setVisibility(0);
                            ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                        }
                        ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                        if (ChatActivityEnterView.this.expandStickersButton != null) {
                            ChatActivityEnterView.this.expandStickersButton.setVisibility(8);
                        }
                        ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                        ChatActivityEnterView.this.runningAnimation = null;
                        ChatActivityEnterView.this.runningAnimationType = 0;
                    }
                }
            };
        } else {
            if (this.slowModeButton.getVisibility() == 0) {
                return;
            }
            if (!z2) {
                this.slowModeButton.setScaleX(1.0f);
                this.slowModeButton.setScaleY(1.0f);
                this.slowModeButton.setAlpha(1.0f);
                setSlowModeButtonVisible(true);
                this.audioVideoButtonContainer.setScaleX(0.1f);
                this.audioVideoButtonContainer.setScaleY(0.1f);
                this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.audioVideoButtonContainer.setVisibility(8);
                getSendButtonInternal().setScaleX(0.1f);
                getSendButtonInternal().setScaleY(0.1f);
                getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                getSendButtonInternal().setVisibility(8);
                this.cancelBotButton.setScaleX(0.1f);
                this.cancelBotButton.setScaleY(0.1f);
                this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.cancelBotButton.setVisibility(8);
                ImageView imageView27 = this.expandStickersButton;
                if (imageView27 == null || imageView27.getVisibility() != 0) {
                    i2 = 8;
                } else {
                    this.expandStickersButton.setScaleX(0.1f);
                    this.expandStickersButton.setScaleY(0.1f);
                    this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    i2 = 8;
                    this.expandStickersButton.setVisibility(8);
                }
                LinearLayout linearLayout7 = this.attachLayout;
                if (linearLayout7 != null) {
                    linearLayout7.setVisibility(i2);
                    if (this.delegate != null && getVisibility() == 0) {
                        this.delegate.onAttachButtonHidden();
                    }
                    updateFieldRight(0);
                }
                this.scheduleButtonHidden = false;
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate8 = this.delegate;
                boolean z9 = chatActivityEnterViewDelegate8 != null && chatActivityEnterViewDelegate8.hasScheduledMessages();
                if (z9) {
                    createScheduledButton();
                }
                ImageView imageView28 = this.scheduledButton;
                if (imageView28 != null) {
                    if (z9) {
                        imageView28.setVisibility(0);
                        this.scheduledButton.setTag(1);
                    }
                    ImageView imageView29 = this.scheduledButton;
                    ImageView imageView30 = this.botButton;
                    int iDp4 = AndroidUtilities.dp((imageView30 == null || imageView30.getVisibility() != 0) ? 48.0f : 96.0f);
                    ImageView imageView31 = this.giftButton;
                    imageView29.setTranslationX(iDp4 - AndroidUtilities.dp((imageView31 == null || imageView31.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f));
                    this.scheduledButton.setAlpha(1.0f);
                    this.scheduledButton.setScaleX(1.0f);
                    this.scheduledButton.setScaleY(1.0f);
                    return;
                }
                return;
            }
            if (this.runningAnimationType == 5) {
                return;
            }
            AnimatorSet animatorSet8 = this.runningAnimation;
            if (animatorSet8 != null) {
                animatorSet8.cancel();
                this.runningAnimation = null;
            }
            AnimatorSet animatorSet9 = this.runningAnimation2;
            if (animatorSet9 != null) {
                animatorSet9.cancel();
                this.runningAnimation2 = null;
            }
            if (this.attachLayout != null) {
                this.runningAnimation2 = new AnimatorSet();
                ArrayList arrayList7 = new ArrayList();
                arrayList7.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, BitmapDescriptorFactory.HUE_RED));
                LinearLayout linearLayout8 = this.attachLayout;
                Property property12 = View.SCALE_X;
                arrayList7.add(ObjectAnimator.ofFloat(linearLayout8, (Property<LinearLayout, Float>) property12, BitmapDescriptorFactory.HUE_RED));
                this.scheduleButtonHidden = false;
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate9 = this.delegate;
                boolean z10 = chatActivityEnterViewDelegate9 != null && chatActivityEnterViewDelegate9.hasScheduledMessages();
                if (z10) {
                    createScheduledButton();
                }
                ImageView imageView32 = this.scheduledButton;
                if (imageView32 != null) {
                    imageView32.setScaleY(1.0f);
                    if (z10) {
                        this.scheduledButton.setVisibility(0);
                        this.scheduledButton.setTag(1);
                        this.scheduledButton.setPivotX(AndroidUtilities.dp(48.0f));
                        ImageView imageView33 = this.scheduledButton;
                        Property property13 = View.TRANSLATION_X;
                        ImageView imageView34 = this.botButton;
                        int iDp5 = AndroidUtilities.dp((imageView34 == null || imageView34.getVisibility() != 0) ? 48.0f : 96.0f);
                        ImageView imageView35 = this.giftButton;
                        arrayList7.add(ObjectAnimator.ofFloat(imageView33, (Property<ImageView, Float>) property13, iDp5 - AndroidUtilities.dp((imageView35 == null || imageView35.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f)));
                        arrayList7.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.ALPHA, 1.0f));
                        arrayList7.add(ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property12, 1.0f));
                    } else {
                        ImageView imageView36 = this.scheduledButton;
                        ImageView imageView37 = this.botButton;
                        int iDp6 = AndroidUtilities.dp((imageView37 == null || imageView37.getVisibility() != 0) ? 48.0f : 96.0f);
                        ImageView imageView38 = this.giftButton;
                        imageView36.setTranslationX(iDp6 - AndroidUtilities.dp((imageView38 == null || imageView38.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f));
                        this.scheduledButton.setAlpha(1.0f);
                        this.scheduledButton.setScaleX(1.0f);
                    }
                }
                this.runningAnimation2.playTogether(arrayList7);
                this.runningAnimation2.setDuration(100L);
                this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.50
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                            ChatActivityEnterView.this.runningAnimation2 = null;
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                            ChatActivityEnterView.this.attachLayout.setVisibility(8);
                            ChatActivityEnterView.this.runningAnimation2 = null;
                        }
                    }
                });
                this.runningAnimation2.start();
                updateFieldRight(0);
                if (this.delegate != null && getVisibility() == 0) {
                    this.delegate.onAttachButtonHidden();
                }
            }
            this.runningAnimationType = 5;
            this.runningAnimation = new AnimatorSet();
            ArrayList arrayList8 = new ArrayList();
            if (this.audioVideoButtonContainer.getVisibility() == 0) {
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.SCALE_X, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.SCALE_Y, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            ImageView imageView39 = this.expandStickersButton;
            if (imageView39 != null && imageView39.getVisibility() == 0) {
                arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.SCALE_X, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.SCALE_Y, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, (Property<ImageView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            if (getSendButtonInternal().getVisibility() == 0) {
                arrayList8.add(animateSendButton(false));
            }
            if (this.cancelBotButton.getVisibility() == 0) {
                arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_X, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.SCALE_Y, 0.1f));
                arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, (Property<ImageView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.SCALE_X, 1.0f));
            arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.SCALE_Y, 1.0f));
            arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, (Property<SlowModeBtn, Float>) View.ALPHA, 1.0f));
            setSlowModeButtonVisible(true);
            this.runningAnimation.playTogether(arrayList8);
            this.runningAnimation.setDuration(150L);
            animatorSet = this.runningAnimation;
            animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.51
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                        ChatActivityEnterView.this.runningAnimation = null;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                        ChatActivityEnterView.this.getSendButtonInternal().setVisibility(8);
                        ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                        ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                        if (ChatActivityEnterView.this.expandStickersButton != null) {
                            ChatActivityEnterView.this.expandStickersButton.setVisibility(8);
                        }
                        ChatActivityEnterView.this.runningAnimation = null;
                        ChatActivityEnterView.this.runningAnimationType = 0;
                    }
                }
            };
        }
        animatorSet.addListener(animatorListenerAdapter);
        this.runningAnimation.start();
    }

    private void createBotButton() {
        if (this.botButton != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        this.botButton = imageView;
        ReplaceableIconDrawable replaceableIconDrawable = new ReplaceableIconDrawable(getContext());
        this.botButtonDrawable = replaceableIconDrawable;
        imageView.setImageDrawable(replaceableIconDrawable);
        this.botButtonDrawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        this.botButtonDrawable.setIcon(R.drawable.input_bot2, false);
        this.botButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.botButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.botButton.setVisibility(8);
        AndroidUtilities.updateViewVisibilityAnimated(this.botButton, false, 0.1f, false);
        this.attachLayout.addView(this.botButton, 0, LayoutHelper.createLinear(48, 48));
        this.botButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createBotButton$12(view);
            }
        });
    }

    private void createBotCommandsMenuButton() {
        if (this.botCommandsMenuButton != null) {
            return;
        }
        BotCommandsMenuView botCommandsMenuView = new BotCommandsMenuView(getContext());
        this.botCommandsMenuButton = botCommandsMenuView;
        botCommandsMenuView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createBotCommandsMenuButton$22(view);
            }
        });
        this.messageEditTextContainer.addView(this.botCommandsMenuButton, LayoutHelper.createFrame(-2, 32.0f, 83, 10.0f, 8.0f, 10.0f, 8.0f));
        AndroidUtilities.updateViewVisibilityAnimated(this.botCommandsMenuButton, false, 1.0f, false);
        this.botCommandsMenuButton.setExpanded(true, false);
    }

    private void createBotCommandsMenuContainer() {
        if (this.botCommandsMenuContainer != null) {
            return;
        }
        BotCommandsMenuContainer botCommandsMenuContainer = new BotCommandsMenuContainer(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.38
            boolean ignoreLayout = false;

            @Override // org.telegram.ui.bots.BotCommandsMenuContainer
            protected void onDismiss() {
                super.onDismiss();
                if (ChatActivityEnterView.this.botCommandsMenuButton != null) {
                    ChatActivityEnterView.this.botCommandsMenuButton.setOpened(false);
                }
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (this.ignoreLayout) {
                    return;
                }
                this.ignoreLayout = true;
                ChatActivityEnterView.this.updateBotCommandsMenuContainerTopPadding();
            }
        };
        this.botCommandsMenuContainer = botCommandsMenuContainer;
        botCommandsMenuContainer.listView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerListView recyclerListView = this.botCommandsMenuContainer.listView;
        BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter = new BotCommandsMenuView.BotCommandsAdapter();
        this.botCommandsAdapter = botCommandsAdapter;
        recyclerListView.setAdapter(botCommandsAdapter);
        this.botCommandsMenuContainer.listView.setOnItemClickListener(new AnonymousClass39());
        this.botCommandsMenuContainer.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.40
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public boolean onItemClick(View view, int i) {
                if (!(view instanceof BotCommandsMenuView.BotCommandView)) {
                    return false;
                }
                String command = ((BotCommandsMenuView.BotCommandView) view).getCommand();
                ChatActivityEnterView.this.setFieldText(command + " ");
                ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
                return true;
            }
        });
        this.botCommandsMenuContainer.setClipToPadding(false);
        this.sizeNotifierLayout.addView(this.botCommandsMenuContainer, 14, LayoutHelper.createFrame(-1, -1, 80));
        this.botCommandsMenuContainer.setVisibility(8);
        LongSparseArray longSparseArray = this.lastBotInfo;
        if (longSparseArray != null) {
            this.botCommandsAdapter.setBotInfo(longSparseArray);
        }
        updateBotCommandsMenuContainerTopPadding();
    }

    private void createBotWebViewButton() {
        if (this.botWebViewButton != null) {
            return;
        }
        ChatActivityBotWebViewButton chatActivityBotWebViewButton = new ChatActivityBotWebViewButton(getContext());
        this.botWebViewButton = chatActivityBotWebViewButton;
        chatActivityBotWebViewButton.setVisibility(8);
        createBotCommandsMenuButton();
        this.botWebViewButton.setBotMenuButton(this.botCommandsMenuButton);
        this.messageEditTextContainer.addView(this.botWebViewButton, LayoutHelper.createFrame(-1, -1, 80));
    }

    private void createBotWebViewMenuContainer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCaptionLimitView() {
        if (this.captionLimitView != null) {
            return;
        }
        NumberTextView numberTextView = new NumberTextView(getContext());
        this.captionLimitView = numberTextView;
        numberTextView.setVisibility(8);
        this.captionLimitView.setTextSize(15);
        this.captionLimitView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.captionLimitView.setTypeface(AndroidUtilities.bold());
        this.captionLimitView.setCenterAlign(true);
        addView(this.captionLimitView, 3, LayoutHelper.createFrame(48, 20.0f, 85, 3.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 48.0f));
    }

    private void createControlsView() {
        if (this.controlsView != null) {
            return;
        }
        ControlsView controlsView = new ControlsView(getContext());
        this.controlsView = controlsView;
        controlsView.setVisibility(8);
        this.sizeNotifierLayout.addView(this.controlsView, LayoutHelper.createFrame(-1, -2, 80));
    }

    private void createDoneButton(boolean z) {
        if (this.doneButton != null) {
            return;
        }
        SendButton sendButton = new SendButton(getContext(), R.drawable.input_done, this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.24
            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInactive() {
                return !ChatActivityEnterView.this.doneButtonEnabled;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isOpen() {
                return true;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean shouldDrawBackground() {
                return true;
            }
        };
        this.doneButton = sendButton;
        sendButton.center = true;
        if (z) {
            ScaleStateListAnimator.apply(sendButton);
        }
        this.textFieldContainer.addView(this.doneButton, LayoutHelper.createFrame(38, 38.0f, 85, 5.0f, 5.0f, 5.0f, 5.0f));
    }

    private void createEmojiView() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null && emojiView.currentAccount != UserConfig.selectedAccount) {
            this.sizeNotifierLayout.removeView(emojiView);
            this.emojiView = null;
        }
        if (this.emojiView != null) {
            return;
        }
        EmojiView emojiView2 = new EmojiView(this.parentFragment, this.allowAnimatedEmoji, true, true, getContext(), true, this.info, this.sizeNotifierLayout, this.shouldDrawBackground, this.resourcesProvider, this.emojiViewFrozen) { // from class: org.telegram.ui.Components.ChatActivityEnterView.70
            @Override // org.telegram.ui.Components.EmojiView, android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.animatingContentType != 0) {
                    return;
                }
                ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(f);
            }
        };
        this.emojiView = emojiView2;
        if (!this.shouldDrawBackground) {
            emojiView2.updateColors();
        }
        this.emojiView.setAllow(this.allowStickers, this.allowGifs, true);
        this.emojiView.setVisibility(8);
        this.emojiView.setShowing(false);
        this.emojiView.setDelegate(new AnonymousClass71());
        this.emojiView.setDragListener(new EmojiView.DragListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.72
            int initialOffset;
            boolean wasExpanded;

            private boolean allowDragging() {
                EditTextCaption editTextCaption;
                return ChatActivityEnterView.this.stickersTabOpen && (ChatActivityEnterView.this.stickersExpanded || (editTextCaption = ChatActivityEnterView.this.messageEditText) == null || editTextCaption.length() <= 0) && ChatActivityEnterView.this.emojiView.areThereAnyStickers() && !ChatActivityEnterView.this.waitingForKeyboardOpen;
            }

            @Override // org.telegram.ui.Components.EmojiView.DragListener
            public void onDrag(int i) {
                if (allowDragging()) {
                    android.graphics.Point point = AndroidUtilities.displaySize;
                    float fMax = Math.max(Math.min(i + this.initialOffset, 0), -(ChatActivityEnterView.this.stickersExpandedHeight - (point.x > point.y ? ChatActivityEnterView.this.keyboardHeightLand : ChatActivityEnterView.this.keyboardHeight)));
                    ChatActivityEnterView.this.emojiView.setTranslationY(fMax);
                    ChatActivityEnterView.this.setTranslationY(fMax);
                    ChatActivityEnterView.this.stickersExpansionProgress = fMax / (-(r1.stickersExpandedHeight - r0));
                    ChatActivityEnterView.this.sizeNotifierLayout.invalidate();
                }
            }

            @Override // org.telegram.ui.Components.EmojiView.DragListener
            public void onDragCancel() {
                if (ChatActivityEnterView.this.stickersTabOpen) {
                    ChatActivityEnterView.this.stickersDragging = false;
                    ChatActivityEnterView.this.setStickersExpanded(this.wasExpanded, true, false);
                }
            }

            @Override // org.telegram.ui.Components.EmojiView.DragListener
            public void onDragEnd(float f) {
                ChatActivityEnterView chatActivityEnterView;
                boolean z;
                if (allowDragging()) {
                    ChatActivityEnterView.this.stickersDragging = false;
                    if ((!this.wasExpanded || f < AndroidUtilities.dp(200.0f)) && ((this.wasExpanded || f > AndroidUtilities.dp(-200.0f)) && ((!this.wasExpanded || ChatActivityEnterView.this.stickersExpansionProgress > 0.6f) && (this.wasExpanded || ChatActivityEnterView.this.stickersExpansionProgress < 0.4f)))) {
                        chatActivityEnterView = ChatActivityEnterView.this;
                        z = this.wasExpanded;
                    } else {
                        chatActivityEnterView = ChatActivityEnterView.this;
                        z = !this.wasExpanded;
                    }
                    chatActivityEnterView.setStickersExpanded(z, true, true);
                }
            }

            @Override // org.telegram.ui.Components.EmojiView.DragListener
            public void onDragStart() {
                if (allowDragging()) {
                    if (ChatActivityEnterView.this.stickersExpansionAnim != null) {
                        ChatActivityEnterView.this.stickersExpansionAnim.cancel();
                    }
                    ChatActivityEnterView.this.stickersDragging = true;
                    this.wasExpanded = ChatActivityEnterView.this.stickersExpanded;
                    ChatActivityEnterView.this.stickersExpanded = true;
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 1);
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.stickersExpandedHeight = (((chatActivityEnterView.sizeNotifierLayout.getHeight() - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - ActionBar.getCurrentActionBarHeight()) - ChatActivityEnterView.this.getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                    if (ChatActivityEnterView.this.searchingType == 2) {
                        ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                        int i = chatActivityEnterView2.stickersExpandedHeight;
                        int iDp = AndroidUtilities.dp(120.0f);
                        android.graphics.Point point = AndroidUtilities.displaySize;
                        chatActivityEnterView2.stickersExpandedHeight = Math.min(i, iDp + (point.x > point.y ? ChatActivityEnterView.this.keyboardHeightLand : ChatActivityEnterView.this.keyboardHeight));
                    }
                    ChatActivityEnterView.this.emojiView.getLayoutParams().height = ChatActivityEnterView.this.stickersExpandedHeight;
                    ChatActivityEnterView.this.emojiView.setLayerType(2, null);
                    ChatActivityEnterView.this.sizeNotifierLayout.requestLayout();
                    ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                    if (chatActivityEnterView3.shouldDrawBackground) {
                        chatActivityEnterView3.sizeNotifierLayout.setForeground(ChatActivityEnterView.this.new ScrimDrawable());
                    }
                    this.initialOffset = (int) ChatActivityEnterView.this.getTranslationY();
                    if (ChatActivityEnterView.this.delegate != null) {
                        ChatActivityEnterView.this.delegate.onStickersExpandedChange();
                    }
                }
            }
        });
        EmojiView emojiView3 = this.emojiView;
        if (emojiView3 != null) {
            emojiView3.setStickersBanned(!this.sendPlainEnabled, !this.stickersEnabled, -this.dialog_id);
        }
        attachEmojiView();
        checkChannelRights();
    }

    private void createExpandStickersButton() {
        if (this.expandStickersButton != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.25
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.expandStickersButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView2 = this.expandStickersButton;
        AnimatedArrowDrawable animatedArrowDrawable = new AnimatedArrowDrawable(getThemedColor(Theme.key_chat_messagePanelIcons), false);
        this.stickersArrow = animatedArrowDrawable;
        imageView2.setImageDrawable(animatedArrowDrawable);
        this.expandStickersButton.setVisibility(8);
        this.expandStickersButton.setScaleX(0.1f);
        this.expandStickersButton.setScaleY(0.1f);
        this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (Build.VERSION.SDK_INT >= 21) {
            this.expandStickersButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.sendButtonContainer.addView(this.expandStickersButton, LayoutHelper.createFrame(48, 48, 85));
        this.expandStickersButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createExpandStickersButton$13(view);
            }
        });
        this.expandStickersButton.setContentDescription(LocaleController.getString("AccDescrExpandPanel", R.string.AccDescrExpandPanel));
    }

    private void createGiftButton() {
        if (this.giftButton != null || this.parentFragment == null) {
            return;
        }
        AnonymousClass23 anonymousClass23 = new AnonymousClass23(getContext());
        this.giftButton = anonymousClass23;
        anonymousClass23.setImageResource(R.drawable.msg_input_gift);
        this.giftButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        this.giftButton.setVisibility(8);
        this.giftButton.setContentDescription(LocaleController.getString(R.string.GiftPremium));
        this.giftButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.giftButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.attachLayout.addView(this.giftButton, 0, LayoutHelper.createFrame(48, 48, 21));
        this.giftButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createGiftButton$10(view);
            }
        });
    }

    private void createMessageEditText() {
        EditTextCaption editTextCaption;
        Window window;
        if (this.messageEditText != null) {
            return;
        }
        ChatActivityEditTextCaption chatActivityEditTextCaption = new ChatActivityEditTextCaption(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.41
            boolean clickMaybe;
            float touchX;
            float touchY;

            private void fixHandlesColor() {
                setHandlesColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_TextSelectionCursor));
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                setWindowView(((ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.getParentLayout() == null || !ChatActivityEnterView.this.parentFragment.getParentLayout().isSheet()) ? ChatActivityEnterView.this.parentActivity.getWindow() : ChatActivityEnterView.this.parentFragment.getParentLayout().getWindow()).getDecorView());
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption, org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                boolean z;
                if (!ChatActivityEnterView.this.botCommandsMenuIsShowing()) {
                    if (motionEvent.getAction() == 0 && ChatActivityEnterView.this.delegate != null) {
                        fixHandlesColor();
                        ChatActivityEnterView.this.delegate.onKeyboardRequested();
                    }
                    return super.onTouchEvent(motionEvent);
                }
                if (motionEvent.getAction() != 0) {
                    if (this.clickMaybe && motionEvent.getAction() == 2) {
                        z = Math.abs(motionEvent.getX() - this.touchX) <= AndroidUtilities.touchSlop && Math.abs(motionEvent.getY() - this.touchY) <= AndroidUtilities.touchSlop;
                    } else if (this.clickMaybe) {
                        if (ChatActivityEnterView.this.delegate != null) {
                            fixHandlesColor();
                            ChatActivityEnterView.this.delegate.onKeyboardRequested();
                        }
                        EditTextCaption editTextCaption2 = ChatActivityEnterView.this.messageEditText;
                        if (editTextCaption2 != null && !AndroidUtilities.showKeyboard(editTextCaption2)) {
                            ChatActivityEnterView.this.messageEditText.clearFocus();
                            ChatActivityEnterView.this.messageEditText.requestFocus();
                        }
                    }
                    return this.clickMaybe;
                }
                this.touchX = motionEvent.getX();
                this.touchY = motionEvent.getY();
                this.clickMaybe = z;
                return this.clickMaybe;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption, org.telegram.ui.Components.EditTextEffects
            public void setOffsetY(float f) {
                super.setOffsetY(f);
                ChatActivityEnterView.this.messageEditTextContainer.invalidate();
            }
        };
        this.messageEditText = chatActivityEditTextCaption;
        if (Build.VERSION.SDK_INT >= 28) {
            chatActivityEditTextCaption.setFallbackLineSpacing(false);
        }
        this.messageEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda41
            @Override // org.telegram.ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                this.f$0.lambda$createMessageEditText$41();
            }
        });
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.getParentLayout() == null || !this.parentFragment.getParentLayout().isSheet()) {
            editTextCaption = this.messageEditText;
            window = this.parentActivity.getWindow();
        } else {
            editTextCaption = this.messageEditText;
            window = this.parentFragment.getParentLayout().getWindow();
        }
        editTextCaption.setWindowView(window.getDecorView());
        ChatActivity chatActivity2 = this.parentFragment;
        TLRPC.EncryptedChat currentEncryptedChat = chatActivity2 != null ? chatActivity2.getCurrentEncryptedChat() : null;
        this.messageEditText.setAllowTextEntitiesIntersection(supportsSendingNewEntities());
        int i = (!isKeyboardSupportIncognitoMode() || currentEncryptedChat == null) ? 268435456 : 285212672;
        this.messageEditText.setIncludeFontPadding(false);
        this.messageEditText.setImeOptions(i);
        EditTextCaption editTextCaption2 = this.messageEditText;
        int inputType = editTextCaption2.getInputType() | 147456;
        this.commonInputType = inputType;
        editTextCaption2.setInputType(inputType);
        updateFieldHint(false);
        this.messageEditText.setSingleLine(false);
        this.messageEditText.setMaxLines(6);
        this.messageEditText.setTextSize(1, 18.0f);
        this.messageEditText.setGravity(80);
        this.messageEditText.setPadding(0, AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(12.0f));
        this.messageEditText.setBackgroundDrawable(null);
        this.messageEditText.setTextColor(getThemedColor(Theme.key_chat_messagePanelText));
        this.messageEditText.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkOut));
        this.messageEditText.setHighlightColor(getThemedColor(Theme.key_chat_inTextSelectionHighlight));
        EditTextCaption editTextCaption3 = this.messageEditText;
        int i2 = Theme.key_chat_messagePanelHint;
        editTextCaption3.setHintColor(getThemedColor(i2));
        this.messageEditText.setHintTextColor(getThemedColor(i2));
        this.messageEditText.setCursorColor(getThemedColor(Theme.key_chat_messagePanelCursor));
        this.messageEditText.setHandlesColor(getThemedColor(Theme.key_chat_TextSelectionCursor));
        this.messageEditTextContainer.addView(this.messageEditText, 1, LayoutHelper.createFrame(-1, -2.0f, 80, 52.0f, BitmapDescriptorFactory.HUE_RED, this.isChat ? 50.0f : 2.0f, 1.5f));
        this.messageEditText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.42
            /* JADX WARN: Code restructure failed: missing block: B:62:0x012b, code lost:
            
                if (r7.getAction() != 0) goto L67;
             */
            /* JADX WARN: Code restructure failed: missing block: B:64:0x0133, code lost:
            
                if (r4.this$0.editingMessageObject != null) goto L67;
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x0135, code lost:
            
                r0 = r4.this$0.sendMessage();
             */
            /* JADX WARN: Code restructure failed: missing block: B:66:0x013a, code lost:
            
                return true;
             */
            @Override // android.view.View.OnKeyListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (keyEvent != null) {
                    ChatActivityEnterView.this.shiftPressed = keyEvent.isShiftPressed();
                    ChatActivityEnterView.this.ctrlPressed = keyEvent.isCtrlPressed();
                }
                if (i3 != 4 || ChatActivityEnterView.this.keyboardVisible || !ChatActivityEnterView.this.isPopupShowing() || keyEvent.getAction() != 1) {
                    if (i3 == 66 && !keyEvent.isShiftPressed()) {
                        if (ChatActivityEnterView.this.sendByEnter) {
                        }
                    }
                    return false;
                }
                if (ContentPreviewViewer.hasInstance() && ContentPreviewViewer.getInstance().isVisible()) {
                    ContentPreviewViewer.getInstance().closeWithMenu();
                    return true;
                }
                if (ChatActivityEnterView.this.currentPopupContentType == 1 && ChatActivityEnterView.this.botButtonsMessageObject != null) {
                    return false;
                }
                if (keyEvent.getAction() == 1) {
                    if (ChatActivityEnterView.this.currentPopupContentType == 1 && ChatActivityEnterView.this.botButtonsMessageObject != null) {
                        MessagesController.getMainSettings(ChatActivityEnterView.this.currentAccount).edit().putInt("hidekeyboard_" + ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.botButtonsMessageObject.getId()).commit();
                    }
                    if (ChatActivityEnterView.this.searchingType != 0) {
                        ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                        if (ChatActivityEnterView.this.emojiView != null) {
                            ChatActivityEnterView.this.emojiView.closeSearch(true);
                        }
                        ChatActivityEnterView.this.messageEditText.requestFocus();
                    } else if (ChatActivityEnterView.this.stickersExpanded) {
                        ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                    } else if (ChatActivityEnterView.this.stickersExpansionAnim == null) {
                        if (ChatActivityEnterView.this.botButtonsMessageObject == null || ChatActivityEnterView.this.currentPopupContentType == 1 || !TextUtils.isEmpty(ChatActivityEnterView.this.messageEditText.getTextToUse())) {
                            ChatActivityEnterView.this.showPopup(0, 0);
                        } else {
                            ChatActivityEnterView.this.showPopup(1, 1);
                        }
                    }
                }
                return true;
            }
        });
        this.messageEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.43
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                if (i3 != 4) {
                    if (keyEvent == null || i3 != 0 || keyEvent.isShiftPressed()) {
                        return false;
                    }
                    if (ChatActivityEnterView.this.sendByEnter) {
                        if (keyEvent.isCtrlPressed()) {
                            return false;
                        }
                    } else if (!keyEvent.isCtrlPressed()) {
                        return false;
                    }
                    if (keyEvent.getAction() != 0 || ChatActivityEnterView.this.editingMessageObject != null) {
                        return false;
                    }
                }
                ChatActivityEnterView.this.sendMessage();
                return true;
            }
        });
        this.messageEditText.addTextChangedListener(new AnonymousClass44());
        this.messageEditText.addTextChangedListener(new EditTextSuggestionsFix());
        this.messageEditText.setEnabled(this.messageEditTextEnabled);
        ArrayList arrayList = this.messageEditTextWatchers;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.messageEditText.addTextChangedListener((TextWatcher) it.next());
            }
            this.messageEditTextWatchers.clear();
        }
        updateFieldHint(false);
        ChatActivity chatActivity3 = this.parentFragment;
        updateSendAsButton(chatActivity3 != null && chatActivity3.getFragmentBeginToShow());
        ChatActivity chatActivity4 = this.parentFragment;
        if (chatActivity4 != null) {
            chatActivity4.applyDraftMaybe(false);
        }
        updateFieldRight(this.lastAttachVisible);
    }

    private void createRecordAudioPanel() {
        if (this.recordedAudioPanel != null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.26
            @Override // android.view.View
            public void setVisibility(int i) {
                super.setVisibility(i);
                ChatActivityEnterView.this.updateSendAsButton();
            }
        };
        this.recordedAudioPanel = frameLayout;
        frameLayout.setVisibility(this.audioToSend == null ? 8 : 0);
        this.recordedAudioPanel.setFocusable(true);
        this.recordedAudioPanel.setFocusableInTouchMode(true);
        this.recordedAudioPanel.setClickable(true);
        this.messageEditTextContainer.addView(this.recordedAudioPanel, LayoutHelper.createFrame(-1, 48, 80));
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        this.recordDeleteImageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.recordDeleteImageView.setAnimation(R.raw.chat_audio_record_delete_2, 28, 28);
        this.recordDeleteImageView.getAnimatedDrawable().setInvalidateOnProgressSet(true);
        updateRecordedDeleteIconColors();
        this.recordDeleteImageView.setContentDescription(LocaleController.getString("Delete", R.string.Delete));
        if (Build.VERSION.SDK_INT >= 21) {
            this.recordDeleteImageView.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.recordedAudioPanel.addView(this.recordDeleteImageView, LayoutHelper.createFrame(48, 48.0f));
        this.recordDeleteImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createRecordAudioPanel$14(view);
            }
        });
        VideoTimelineView videoTimelineView = new VideoTimelineView(getContext());
        this.videoTimelineView = videoTimelineView;
        videoTimelineView.setVisibility(4);
        VideoTimelineView videoTimelineView2 = this.videoTimelineView;
        videoTimelineView2.useClip = !this.shouldDrawBackground;
        videoTimelineView2.setRoundFrames(true);
        this.videoTimelineView.setDelegate(new VideoTimelineView.VideoTimelineViewDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.27
            @Override // org.telegram.ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void didStartDragging() {
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(1, BitmapDescriptorFactory.HUE_RED);
            }

            @Override // org.telegram.ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void didStopDragging() {
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(0, BitmapDescriptorFactory.HUE_RED);
            }

            @Override // org.telegram.ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void onLeftProgressChanged(float f) {
                if (ChatActivityEnterView.this.videoToSendMessageObject == null) {
                    return;
                }
                ChatActivityEnterView.this.videoToSendMessageObject.startTime = (long) (ChatActivityEnterView.this.videoToSendMessageObject.estimatedDuration * f);
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(2, f);
            }

            @Override // org.telegram.ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void onRightProgressChanged(float f) {
                if (ChatActivityEnterView.this.videoToSendMessageObject == null) {
                    return;
                }
                ChatActivityEnterView.this.videoToSendMessageObject.endTime = (long) (ChatActivityEnterView.this.videoToSendMessageObject.estimatedDuration * f);
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(2, f);
            }
        });
        this.recordedAudioPanel.addView(this.videoTimelineView, LayoutHelper.createFrame(-1, -1.0f, 19, 56.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
        VideoTimelineView.TimeHintView timeHintView = new VideoTimelineView.TimeHintView(getContext());
        this.videoTimelineView.setTimeHintView(timeHintView);
        this.sizeNotifierLayout.addView(timeHintView, LayoutHelper.createFrame(-1, -2.0f, 80, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 52.0f));
        RecordedAudioPlayerView recordedAudioPlayerView = new RecordedAudioPlayerView(getContext(), this.resourcesProvider);
        this.audioTimelineView = recordedAudioPlayerView;
        this.recordedAudioPanel.addView(recordedAudioPlayerView, LayoutHelper.createFrame(-1, 32.0f, 19, 48.0f, BitmapDescriptorFactory.HUE_RED, 4.0f, BitmapDescriptorFactory.HUE_RED));
        updateFieldRight(this.lastAttachVisible);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createRecordCircle() {
        createControlsView();
        if (this.recordCircle != null) {
            return;
        }
        RecordCircle recordCircle = new RecordCircle(getContext());
        this.recordCircle = recordCircle;
        recordCircle.setVisibility(8);
        this.sizeNotifierLayout.addView(this.recordCircle, LayoutHelper.createFrame(-1, -2, 80));
    }

    private void createRecordPanel() {
        if (this.recordPanel != null || getContext() == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.64
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return super.onTouchEvent(motionEvent);
            }
        };
        this.recordPanel = frameLayout;
        frameLayout.setClipChildren(false);
        this.recordPanel.setVisibility(8);
        this.messageEditTextContainer.addView(this.recordPanel, LayoutHelper.createFrame(-1, 48.0f));
        this.recordPanel.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda25
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ChatActivityEnterView.lambda$createRecordPanel$56(view, motionEvent);
            }
        });
        FrameLayout frameLayout2 = this.recordPanel;
        SlideTextView slideTextView = new SlideTextView(getContext());
        this.slideText = slideTextView;
        frameLayout2.addView(slideTextView, LayoutHelper.createFrame(-1, -1.0f, 0, 45.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.recordTimeContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.recordTimeContainer.setPadding(AndroidUtilities.dp(13.0f), 0, 0, 0);
        this.recordTimeContainer.setFocusable(false);
        LinearLayout linearLayout2 = this.recordTimeContainer;
        RecordDot recordDot = new RecordDot(getContext());
        this.recordDot = recordDot;
        linearLayout2.addView(recordDot, LayoutHelper.createLinear(28, 28, 16, 0, 0, 0, 0));
        LinearLayout linearLayout3 = this.recordTimeContainer;
        TimerView timerView = new TimerView(getContext());
        this.recordTimerView = timerView;
        linearLayout3.addView(timerView, LayoutHelper.createLinear(-1, -1, 16, 6, 0, 0, 0));
        this.recordPanel.addView(this.recordTimeContainer, LayoutHelper.createFrame(-1, -1, 16));
    }

    private void createScheduledButton() {
        if (this.scheduledButton != null || this.parentFragment == null) {
            return;
        }
        Drawable drawableMutate = getContext().getResources().getDrawable(R.drawable.input_calendar1).mutate();
        Drawable drawableMutate2 = getContext().getResources().getDrawable(R.drawable.input_calendar2).mutate();
        int themedColor = getThemedColor(Theme.key_chat_messagePanelIcons);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_recordedVoiceDot), mode));
        CombinedDrawable combinedDrawable = new CombinedDrawable(drawableMutate, drawableMutate2);
        ImageView imageView = new ImageView(getContext());
        this.scheduledButton = imageView;
        imageView.setImageDrawable(combinedDrawable);
        this.scheduledButton.setVisibility(8);
        this.scheduledButton.setContentDescription(LocaleController.getString("ScheduledMessages", R.string.ScheduledMessages));
        this.scheduledButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.scheduledButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.messageEditTextContainer.addView(this.scheduledButton, 2, LayoutHelper.createFrame(48, 48, 85));
        this.scheduledButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createScheduledButton$7(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSenderSelectView() {
        if (this.senderSelectView != null) {
            return;
        }
        SenderSelectView senderSelectView = new SenderSelectView(getContext());
        this.senderSelectView = senderSelectView;
        senderSelectView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda58
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createSenderSelectView$21(view);
            }
        });
        this.senderSelectView.setVisibility(8);
        this.messageEditTextContainer.addView(this.senderSelectView, LayoutHelper.createFrame(32, 32.0f, 83, 10.0f, 8.0f, 10.0f, 8.0f));
    }

    private MessageObject editingMessageObjectPreview(MessageObject messageObject, boolean z) {
        MessageObject messageObject2 = new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true) { // from class: org.telegram.ui.Components.ChatActivityEnterView.65
            @Override // org.telegram.messenger.MessageObject
            public boolean isOutOwner() {
                return true;
            }

            @Override // org.telegram.messenger.MessageObject
            public boolean needDrawShareButton() {
                return false;
            }
        };
        if (z) {
            EditTextCaption editTextCaption = this.messageEditText;
            CharSequence[] charSequenceArr = {editTextCaption == null ? "" : editTextCaption.getTextToUse()};
            ArrayList<TLRPC.MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceArr[0].toString());
            MessageObject.addEntitiesToText(spannableStringBuilder, entities, true, true, false, true);
            messageObject2.caption = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder, Theme.chat_msgTextPaint.getFontMetricsInt(), false, (int[]) null), entities, Theme.chat_msgTextPaint.getFontMetricsInt());
        }
        return messageObject2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.getColor(i) : Theme.getColor(i);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessageObject getThreadMessage() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            return chatActivity.getThreadMessage();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThreadMessageId() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.getThreadMessage() == null) {
            return 0;
        }
        return this.parentFragment.getThreadMessage().getId();
    }

    private String getTopicKeyString() {
        StringBuilder sb;
        long topicId;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || !chatActivity.isTopic) {
            sb = new StringBuilder();
            sb.append("");
            topicId = this.dialog_id;
        } else {
            sb = new StringBuilder();
            sb.append(this.dialog_id);
            sb.append("_");
            topicId = this.parentFragment.getTopicId();
        }
        sb.append(topicId);
        return sb.toString();
    }

    private void hideRecordedAudioPanel(boolean z) {
        AnimatorSet animatorSet;
        AnimatorSet animatorSet2;
        AnimatorListenerAdapter animatorListenerAdapter;
        AnimatorSet animatorSet3 = this.recordPannelAnimation;
        if (animatorSet3 == null || !animatorSet3.isRunning()) {
            this.audioToSendPath = null;
            this.audioToSend = null;
            this.audioToSendMessageObject = null;
            this.videoToSendMessageObject = null;
            VideoTimelineView videoTimelineView = this.videoTimelineView;
            if (videoTimelineView != null) {
                videoTimelineView.destroy();
            }
            ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
            if (chatActivityEnterViewAnimatedIconView != null) {
                chatActivityEnterViewAnimatedIconView.setVisibility(0);
            }
            if (z) {
                ImageView imageView = this.attachButton;
                if (imageView != null) {
                    imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                }
                this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                updateEmojiButtonParams();
                this.recordPannelAnimation = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                arrayList.add(ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, this.emojiButtonRestricted ? 0.5f : 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f));
                RLottieImageView rLottieImageView = this.recordDeleteImageView;
                Property property = View.ALPHA;
                arrayList.add(ObjectAnimator.ofFloat(rLottieImageView, (Property<RLottieImageView, Float>) property, BitmapDescriptorFactory.HUE_RED));
                RLottieImageView rLottieImageView2 = this.recordDeleteImageView;
                Property property2 = View.SCALE_X;
                arrayList.add(ObjectAnimator.ofFloat(rLottieImageView2, (Property<RLottieImageView, Float>) property2, BitmapDescriptorFactory.HUE_RED));
                RLottieImageView rLottieImageView3 = this.recordDeleteImageView;
                Property property3 = View.SCALE_Y;
                arrayList.add(ObjectAnimator.ofFloat(rLottieImageView3, (Property<RLottieImageView, Float>) property3, BitmapDescriptorFactory.HUE_RED));
                arrayList.add(ObjectAnimator.ofFloat(this.recordedAudioPanel, (Property<FrameLayout, Float>) property, BitmapDescriptorFactory.HUE_RED));
                ImageView imageView2 = this.attachButton;
                if (imageView2 != null) {
                    arrayList.add(ObjectAnimator.ofFloat(imageView2, (Property<ImageView, Float>) property, 1.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) property2, 1.0f));
                    arrayList.add(ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) property3, 1.0f));
                }
                arrayList.add(ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                ControlsView controlsView = this.controlsView;
                if (controlsView != null) {
                    arrayList.add(ObjectAnimator.ofFloat(controlsView, (Property<ControlsView, Float>) property, BitmapDescriptorFactory.HUE_RED));
                    this.controlsView.hideHintView();
                }
                this.recordPannelAnimation.playTogether(arrayList);
                BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
                if (botCommandsMenuView != null) {
                    botCommandsMenuView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.recordPannelAnimation.playTogether(ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property2, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property3, 1.0f));
                }
                this.recordPannelAnimation.setDuration(150L);
                animatorSet2 = this.recordPannelAnimation;
                animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.47
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        FrameLayout frameLayout = ChatActivityEnterView.this.recordedAudioPanel;
                        if (frameLayout != null) {
                            frameLayout.setVisibility(8);
                        }
                        EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
                        if (editTextCaption != null) {
                            editTextCaption.requestFocus();
                        }
                        ChatActivityEnterView.this.isRecordingStateChanged();
                    }
                };
            } else {
                RLottieImageView rLottieImageView4 = this.recordDeleteImageView;
                if (rLottieImageView4 != null) {
                    rLottieImageView4.playAnimation();
                }
                AnimatorSet animatorSet4 = new AnimatorSet();
                ArrayList arrayList2 = new ArrayList();
                if (isInVideoMode()) {
                    VideoTimelineView videoTimelineView2 = this.videoTimelineView;
                    Property property4 = View.ALPHA;
                    arrayList2.add(ObjectAnimator.ofFloat(videoTimelineView2, (Property<VideoTimelineView, Float>) property4, BitmapDescriptorFactory.HUE_RED));
                    arrayList2.add(ObjectAnimator.ofFloat(this.videoTimelineView, (Property<VideoTimelineView, Float>) View.TRANSLATION_X, -AndroidUtilities.dp(20.0f)));
                    arrayList2.add(ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    ControlsView controlsView2 = this.controlsView;
                    if (controlsView2 != null) {
                        arrayList2.add(ObjectAnimator.ofFloat(controlsView2, (Property<ControlsView, Float>) property4, BitmapDescriptorFactory.HUE_RED));
                        this.controlsView.hideHintView();
                    }
                    animatorSet4.playTogether(arrayList2);
                    if (this.emojiButtonPaddingAlpha == 1.0f) {
                        animatorSet4.playTogether(ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property4, 1.0f));
                    } else {
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property4, 1.0f);
                        objectAnimatorOfFloat.setStartDelay(750L);
                        objectAnimatorOfFloat.setDuration(200L);
                        animatorSet4.playTogether(objectAnimatorOfFloat);
                    }
                } else {
                    EditTextCaption editTextCaption = this.messageEditText;
                    if (editTextCaption == null || this.emojiButtonPaddingAlpha != 1.0f) {
                        this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        updateMessageTextParams();
                        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) View.ALPHA, 1.0f);
                        objectAnimatorOfFloat2.setStartDelay(750L);
                        objectAnimatorOfFloat2.setDuration(200L);
                        animatorSet4.playTogether(objectAnimatorOfFloat2);
                    } else {
                        editTextCaption.setAlpha(1.0f);
                        this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        updateMessageTextParams();
                    }
                    RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
                    Property property5 = View.ALPHA;
                    arrayList2.add(ObjectAnimator.ofFloat(recordedAudioPlayerView, (Property<RecordedAudioPlayerView, Float>) property5, BitmapDescriptorFactory.HUE_RED));
                    arrayList2.add(ObjectAnimator.ofFloat(this.audioTimelineView, (Property<RecordedAudioPlayerView, Float>) View.TRANSLATION_X, -AndroidUtilities.dp(20.0f)));
                    ControlsView controlsView3 = this.controlsView;
                    if (controlsView3 != null) {
                        arrayList2.add(ObjectAnimator.ofFloat(controlsView3, (Property<ControlsView, Float>) property5, BitmapDescriptorFactory.HUE_RED));
                        this.controlsView.hideHintView();
                    }
                    animatorSet4.playTogether(arrayList2);
                }
                animatorSet4.setDuration(200L);
                ImageView imageView3 = this.attachButton;
                if (imageView3 != null) {
                    imageView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) View.SCALE_Y, 1.0f));
                    animatorSet.setDuration(150L);
                } else {
                    animatorSet = null;
                }
                this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                updateEmojiButtonParams();
                AnimatorSet animatorSet5 = new AnimatorSet();
                RLottieImageView rLottieImageView5 = this.recordDeleteImageView;
                Property property6 = View.ALPHA;
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(rLottieImageView5, (Property<RLottieImageView, Float>) property6, BitmapDescriptorFactory.HUE_RED);
                RLottieImageView rLottieImageView6 = this.recordDeleteImageView;
                Property property7 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(rLottieImageView6, (Property<RLottieImageView, Float>) property7, BitmapDescriptorFactory.HUE_RED);
                RLottieImageView rLottieImageView7 = this.recordDeleteImageView;
                Property property8 = View.SCALE_Y;
                animatorSet5.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4, ObjectAnimator.ofFloat(rLottieImageView7, (Property<RLottieImageView, Float>) property8, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property6, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, this.emojiButtonRestricted ? 0.5f : 1.0f), ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f));
                BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
                if (botCommandsMenuView2 != null) {
                    botCommandsMenuView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    animatorSet5.playTogether(ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property6, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property7, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property8, 1.0f));
                }
                animatorSet5.setDuration(150L);
                animatorSet5.setStartDelay(600L);
                AnimatorSet animatorSet6 = new AnimatorSet();
                this.recordPannelAnimation = animatorSet6;
                if (animatorSet != null) {
                    animatorSet6.playTogether(animatorSet4, animatorSet, animatorSet5);
                } else {
                    animatorSet6.playTogether(animatorSet4, animatorSet5);
                }
                animatorSet2 = this.recordPannelAnimation;
                animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.48
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        VideoTimelineView videoTimelineView3 = ChatActivityEnterView.this.videoTimelineView;
                        if (videoTimelineView3 != null) {
                            videoTimelineView3.setVisibility(8);
                        }
                        RecordedAudioPlayerView recordedAudioPlayerView2 = ChatActivityEnterView.this.audioTimelineView;
                        if (recordedAudioPlayerView2 != null) {
                            recordedAudioPlayerView2.setVisibility(8);
                        }
                        ChatActivityEnterView.this.transformToSeekbar = BitmapDescriptorFactory.HUE_RED;
                        ChatActivityEnterView.this.isRecordingStateChanged();
                        ChatActivityEnterView.this.hideRecordedAudioPanelInternal();
                        if (ChatActivityEnterView.this.recordCircle != null) {
                            ChatActivityEnterView.this.recordCircle.setSendButtonInvisible();
                        }
                    }
                };
            }
            animatorSet2.addListener(animatorListenerAdapter);
            AnimatorSet animatorSet7 = this.recordPannelAnimation;
            if (animatorSet7 != null) {
                animatorSet7.start();
            }
            ControlsView controlsView4 = this.controlsView;
            if (controlsView4 != null) {
                controlsView4.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideRecordedAudioPanelInternal() {
        this.audioToSendPath = null;
        this.audioToSend = null;
        this.audioToSendMessageObject = null;
        this.videoToSendMessageObject = null;
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.destroy();
        }
        RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
        if (recordedAudioPlayerView != null) {
            recordedAudioPlayerView.setAlpha(1.0f);
            this.audioTimelineView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        VideoTimelineView videoTimelineView2 = this.videoTimelineView;
        if (videoTimelineView2 != null) {
            videoTimelineView2.setAlpha(1.0f);
            this.videoTimelineView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setAlpha(1.0f);
            this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
            updateMessageTextParams();
            this.messageEditText.requestFocus();
        }
        FrameLayout frameLayout = this.recordedAudioPanel;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        isRecordingStateChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEditingBusinessLink() {
        return this.editingBusinessLink != null;
    }

    private boolean isKeyboardSupportIncognitoMode() {
        String string = Settings.Secure.getString(getContext().getContentResolver(), "default_input_method");
        return string == null || !string.startsWith("com.samsung");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSendButton$63(float f, float f2, float f3, float f4, float f5, float f6, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        getSendButtonInternal().setAlpha(AndroidUtilities.lerp(f, f2, fFloatValue));
        getSendButtonInternal().setScaleX(AndroidUtilities.lerp(f3, f4, fFloatValue));
        getSendButtonInternal().setScaleY(AndroidUtilities.lerp(f5, f6, fFloatValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkBirthdayHint$65() {
        removeView(this.birthdayHint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkPremiumAnimatedEmoji$51(BaseFragment baseFragment) {
        if (baseFragment != null) {
            new PremiumFeatureBottomSheet(baseFragment, 11, false).show();
        } else if (baseFragment.getContext() instanceof LaunchActivity) {
            ((LaunchActivity) baseFragment.getContext()).lambda$runLinkRequest$93(new PremiumPreviewFragment(null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickresExpandHeight$80() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.getLayoutParams().height = this.stickersExpandedHeight;
            this.emojiView.setLayerType(0, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickresExpandHeight$81(ValueAnimator valueAnimator) {
        this.sizeNotifierLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStickresExpandHeight$82(ValueAnimator valueAnimator) {
        this.sizeNotifierLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createBotButton$12(View view) {
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, false);
            this.emojiView.closeSearch(false);
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.requestFocus();
            }
        }
        if (this.botReplyMarkup != null) {
            if (!isPopupShowing() || this.currentPopupContentType != 1) {
                showPopup(1, 1);
            } else if (isPopupShowing() && this.currentPopupContentType == 1) {
                showPopup(0, 1);
            }
        } else if (this.hasBotCommands || this.hasQuickReplies) {
            setFieldText("/");
            EditTextCaption editTextCaption2 = this.messageEditText;
            if (editTextCaption2 != null) {
                editTextCaption2.requestFocus();
            }
            openKeyboard();
        }
        if (this.stickersExpanded) {
            setStickersExpanded(false, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createBotCommandsMenuButton$22(View view) {
        boolean z = !this.botCommandsMenuButton.isOpened();
        this.botCommandsMenuButton.setOpened(z);
        try {
            performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        if (hasBotWebView()) {
            if (z) {
                if (!this.emojiViewVisible && !this.botKeyboardViewVisible) {
                    openWebViewMenu();
                    return;
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda55
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.openWebViewMenu();
                        }
                    }, 275L);
                    hidePopup(false);
                    return;
                }
            }
            return;
        }
        if (z) {
            createBotCommandsMenuContainer();
            this.botCommandsMenuContainer.show();
        } else {
            BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
            if (botCommandsMenuContainer != null) {
                botCommandsMenuContainer.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createExpandStickersButton$13(View view) {
        EmojiView emojiView;
        EditTextCaption editTextCaption;
        if (this.expandStickersButton.getVisibility() == 0 && this.expandStickersButton.getAlpha() == 1.0f && !this.waitingForKeyboardOpen) {
            if (this.keyboardVisible && (editTextCaption = this.messageEditText) != null && editTextCaption.isFocused()) {
                return;
            }
            if (this.stickersExpanded) {
                if (this.searchingType != 0) {
                    setSearchingTypeInternal(0, true);
                    this.emojiView.closeSearch(true);
                    this.emojiView.hideSearchKeyboard();
                    if (this.emojiTabOpen) {
                        checkSendButton(true);
                    }
                } else if (!this.stickersDragging && (emojiView = this.emojiView) != null) {
                    emojiView.showSearchField(false);
                }
            } else if (!this.stickersDragging) {
                this.emojiView.showSearchField(true);
            }
            if (this.stickersDragging) {
                return;
            }
            setStickersExpanded(!this.stickersExpanded, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGiftButton$10(View view) {
        StringBuilder sb;
        SharedPreferences.Editor editorEdit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        if (BirthdayController.isToday(this.parentFragment.getCurrentUserInfo())) {
            sb = new StringBuilder();
            sb.append(Calendar.getInstance().get(1));
        } else {
            sb = new StringBuilder();
        }
        sb.append("show_gift_for_");
        sb.append(this.parentFragment.getDialogId());
        editorEdit.putBoolean(sb.toString(), false);
        if (MessagesController.getInstance(this.currentAccount).giftAttachMenuIcon && MessagesController.getInstance(this.currentAccount).giftTextFieldIcon) {
            editorEdit.putBoolean("show_gift_for_" + this.parentFragment.getDialogId(), false);
        }
        editorEdit.apply();
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(UserConfig.getInstance(this.currentAccount).getClientUserId());
        if ((getParentFragment().getCurrentUserInfo() == null || !getParentFragment().getCurrentUserInfo().display_gifts_button) && (userFull == null || !userFull.display_gifts_button)) {
            AndroidUtilities.updateViewVisibilityAnimated(this.giftButton, false);
        }
        final TLRPC.User currentUser = getParentFragment().getCurrentUser();
        if (currentUser == null) {
            return;
        }
        final boolean z = getParentFragment().getCurrentUserInfo() != null && BirthdayController.isToday(getParentFragment().getCurrentUserInfo().birthday);
        final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
        alertDialog.showDelayed(200L);
        final int iLoadGiftOptions = BoostRepository.loadGiftOptions(this.currentAccount, null, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda39
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createGiftButton$8(alertDialog, currentUser, z, (List) obj);
            }
        });
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda40
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$createGiftButton$9(iLoadGiftOptions, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGiftButton$8(AlertDialog alertDialog, TLRPC.User user, boolean z, List list) {
        alertDialog.dismiss();
        new GiftSheet(getContext(), this.currentAccount, user.id, BoostRepository.filterGiftOptionsByBilling(BoostRepository.filterGiftOptions(list, 1)), null).setBirthday(z).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGiftButton$9(int i, DialogInterface dialogInterface) {
        this.parentFragment.getConnectionsManager().cancelRequest(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMessageEditText$41() {
        this.messageEditText.invalidateEffects();
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onTextSpansChanged(this.messageEditText.getTextToUse());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRecordAudioPanel$14(View view) {
        AnimatorSet animatorSet = this.runningAnimationAudio;
        if (animatorSet == null || !animatorSet.isRunning()) {
            resetRecordedState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createRecordPanel$56(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createScheduledButton$7(View view) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.openScheduledMessages();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$15() {
        this.senderSelectView.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$16() {
        this.senderSelectView.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$17(final Dialog dialog, SimpleAvatarView simpleAvatarView, float f, float f2, DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
        if (dialog.isShowing()) {
            simpleAvatarView.setTranslationX(f);
            simpleAvatarView.setTranslationY(f2);
            this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.senderSelectView.setScaleX(1.0f);
            this.senderSelectView.setScaleY(1.0f);
            this.senderSelectView.setAlpha(1.0f);
            this.senderSelectView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.30
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ChatActivityEnterView.this.senderSelectView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SenderSelectView senderSelectView = ChatActivityEnterView.this.senderSelectView;
                    Dialog dialog2 = dialog;
                    Objects.requireNonNull(dialog2);
                    senderSelectView.postDelayed(new ChatActivityEnterView$30$$ExternalSyntheticLambda0(dialog2), 100L);
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$18(final Dialog dialog, SimpleAvatarView simpleAvatarView, float f, float f2, DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
        if (dialog.isShowing()) {
            simpleAvatarView.setTranslationX(f);
            simpleAvatarView.setTranslationY(f2);
            this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.senderSelectView.setScaleX(1.0f);
            this.senderSelectView.setScaleY(1.0f);
            this.senderSelectView.setAlpha(1.0f);
            this.senderSelectView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.32
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ChatActivityEnterView.this.senderSelectView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SenderSelectView senderSelectView = ChatActivityEnterView.this.senderSelectView;
                    Dialog dialog2 = dialog;
                    Objects.requireNonNull(dialog2);
                    senderSelectView.postDelayed(new ChatActivityEnterView$30$$ExternalSyntheticLambda0(dialog2), 100L);
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$19(final SimpleAvatarView simpleAvatarView, int[] iArr, SenderSelectPopup.SenderView senderView) {
        if (this.senderSelectPopupWindow == null) {
            return;
        }
        final Dialog dialog = new Dialog(getContext(), R.style.TransparentDialogNoAnimation);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(simpleAvatarView, LayoutHelper.createFrame(40, 40, 3));
        dialog.setContentView(frameLayout);
        dialog.getWindow().setLayout(-1, -1);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            dialog.getWindow().clearFlags(1024);
            dialog.getWindow().clearFlags(ConnectionsManager.FileTypeFile);
            dialog.getWindow().clearFlags(134217728);
            dialog.getWindow().addFlags(Integer.MIN_VALUE);
            dialog.getWindow().addFlags(LiteMode.FLAG_CALLS_ANIMATIONS);
            dialog.getWindow().addFlags(131072);
            dialog.getWindow().getAttributes().windowAnimations = 0;
            dialog.getWindow().getDecorView().setSystemUiVisibility(1792);
            dialog.getWindow().setStatusBarColor(0);
            dialog.getWindow().setNavigationBarColor(0);
            AndroidUtilities.setLightStatusBar(dialog.getWindow(), Theme.getColor(Theme.key_actionBarDefault, null, true) == -1);
            if (i >= 26) {
                AndroidUtilities.setLightNavigationBar(dialog.getWindow(), AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundGray, null, true)) >= 0.721f);
            }
        }
        if (i >= 23) {
            this.popupX += getRootWindowInsets().getSystemWindowInsetLeft();
        }
        this.senderSelectView.getLocationInWindow(this.location);
        int[] iArr2 = this.location;
        final float f = iArr2[0];
        final float f2 = iArr2[1];
        float fDp = AndroidUtilities.dp(5.0f);
        float fDp2 = iArr[0] + this.popupX + fDp + AndroidUtilities.dp(4.0f) + BitmapDescriptorFactory.HUE_RED;
        float f3 = iArr[1] + this.popupY + fDp + BitmapDescriptorFactory.HUE_RED;
        simpleAvatarView.setTranslationX(fDp2);
        simpleAvatarView.setTranslationY(f3);
        float fDp3 = this.senderSelectView.getLayoutParams().width / AndroidUtilities.dp(40.0f);
        simpleAvatarView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        simpleAvatarView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        simpleAvatarView.setScaleX(0.75f);
        simpleAvatarView.setScaleY(0.75f);
        simpleAvatarView.getViewTreeObserver().addOnDrawListener(new AnonymousClass29(simpleAvatarView, senderView));
        dialog.show();
        this.senderSelectView.setScaleX(1.0f);
        this.senderSelectView.setScaleY(1.0f);
        this.senderSelectView.setAlpha(1.0f);
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        SenderSelectView senderSelectView = this.senderSelectView;
        DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.SCALE_X;
        SpringAnimation spring = new SpringAnimation(senderSelectView, viewProperty).setSpring(new SpringForce(0.5f).setStiffness(750.0f).setDampingRatio(1.0f));
        SenderSelectView senderSelectView2 = this.senderSelectView;
        DynamicAnimation.ViewProperty viewProperty2 = DynamicAnimation.SCALE_Y;
        senderSelectPopup.startDismissAnimation(spring, new SpringAnimation(senderSelectView2, viewProperty2).setSpring(new SpringForce(0.5f).setStiffness(750.0f).setDampingRatio(1.0f)), (SpringAnimation) new SpringAnimation(this.senderSelectView, DynamicAnimation.ALPHA).setSpring(new SpringForce(BitmapDescriptorFactory.HUE_RED).setStiffness(750.0f).setDampingRatio(1.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda90
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f4, float f5) {
                this.f$0.lambda$createSenderSelectView$17(dialog, simpleAvatarView, f, f2, dynamicAnimation, z, f4, f5);
            }
        }), (SpringAnimation) ((SpringAnimation) new SpringAnimation(simpleAvatarView, DynamicAnimation.TRANSLATION_X).setStartValue(MathUtils.clamp(fDp2, f - AndroidUtilities.dp(6.0f), fDp2))).setSpring(new SpringForce(f).setStiffness(700.0f).setDampingRatio(0.75f)).setMinValue(f - AndroidUtilities.dp(6.0f)), (SpringAnimation) ((SpringAnimation) ((SpringAnimation) ((SpringAnimation) new SpringAnimation(simpleAvatarView, DynamicAnimation.TRANSLATION_Y).setStartValue(MathUtils.clamp(f3, f3, AndroidUtilities.dp(6.0f) + f2))).setSpring(new SpringForce(f2).setStiffness(700.0f).setDampingRatio(0.75f)).setMaxValue(AndroidUtilities.dp(6.0f) + f2)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.31
            boolean performedHapticFeedback = false;

            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5) {
                if (this.performedHapticFeedback || f4 < f2) {
                    return;
                }
                this.performedHapticFeedback = true;
                try {
                    simpleAvatarView.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
        })).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda91
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f4, float f5) {
                this.f$0.lambda$createSenderSelectView$18(dialog, simpleAvatarView, f, f2, dynamicAnimation, z, f4, f5);
            }
        }), new SpringAnimation(simpleAvatarView, viewProperty).setSpring(new SpringForce(fDp3).setStiffness(1000.0f).setDampingRatio(1.0f)), new SpringAnimation(simpleAvatarView, viewProperty2).setSpring(new SpringForce(fDp3).setStiffness(1000.0f).setDampingRatio(1.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[PHI: r10
      0x0061: PHI (r10v2 org.telegram.tgnet.TLObject) = (r10v1 org.telegram.tgnet.TLObject), (r10v5 org.telegram.tgnet.TLObject) binds: [B:19:0x005f, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createSenderSelectView$20(TLRPC.ChatFull chatFull, MessagesController messagesController, RecyclerView recyclerView, final SenderSelectPopup.SenderView senderView, TLRPC.Peer peer) {
        if (this.senderSelectPopupWindow == null) {
            return;
        }
        if (chatFull != null) {
            chatFull.default_send_as = peer;
            updateSendAsButton();
        }
        MessagesController messagesController2 = this.parentFragment.getMessagesController();
        long j = this.dialog_id;
        long j2 = peer.user_id;
        if (j2 == 0) {
            j2 = -peer.channel_id;
        }
        messagesController2.setDefaultSendAs(j, j2);
        final int[] iArr = new int[2];
        boolean zIsSelected = senderView.avatar.isSelected();
        senderView.avatar.getLocationInWindow(iArr);
        senderView.avatar.setSelected(true, true);
        final SimpleAvatarView simpleAvatarView = new SimpleAvatarView(getContext());
        long j3 = peer.channel_id;
        if (j3 != 0) {
            TLObject user = messagesController.getChat(Long.valueOf(j3));
            if (user != null) {
                simpleAvatarView.setAvatar(user);
            }
        } else {
            long j4 = peer.user_id;
            if (j4 != 0 && (user = messagesController.getUser(Long.valueOf(j4))) != null) {
            }
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            if ((childAt instanceof SenderSelectPopup.SenderView) && childAt != senderView) {
                ((SenderSelectPopup.SenderView) childAt).avatar.setSelected(false, true);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createSenderSelectView$19(simpleAvatarView, iArr, senderView);
            }
        }, zIsSelected ? 0L : 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSenderSelectView$21(View view) {
        int i;
        int iDp;
        if (getTranslationY() != BitmapDescriptorFactory.HUE_RED) {
            this.onEmojiSearchClosed = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createSenderSelectView$15();
                }
            };
            hidePopup(true, true);
            return;
        }
        if (this.delegate.measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
            int contentViewHeight = this.delegate.getContentViewHeight();
            int iMeasureKeyboardHeight = this.delegate.measureKeyboardHeight();
            if (iMeasureKeyboardHeight <= AndroidUtilities.dp(20.0f)) {
                contentViewHeight += iMeasureKeyboardHeight;
            }
            if (this.emojiViewVisible) {
                contentViewHeight -= getEmojiPadding();
            }
            if (contentViewHeight < AndroidUtilities.dp(200.0f)) {
                this.onKeyboardClosed = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda68
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createSenderSelectView$16();
                    }
                };
                closeKeyboard();
                return;
            }
        }
        if (this.delegate.getSendAsPeers() != null) {
            try {
                view.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
            if (senderSelectPopup != null) {
                senderSelectPopup.setPauseNotifications(false);
                this.senderSelectPopupWindow.startDismissAnimation(new SpringAnimation[0]);
                return;
            }
            final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            final TLRPC.ChatFull chatFull = messagesController.getChatFull(-this.dialog_id);
            if (chatFull == null) {
                return;
            }
            final FrameLayout overlayContainerView = this.parentFragment.getParentLayout().getOverlayContainerView();
            SenderSelectPopup senderSelectPopup2 = new SenderSelectPopup(getContext(), this.parentFragment, messagesController, chatFull, this.delegate.getSendAsPeers(), new SenderSelectPopup.OnSelectCallback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda69
                @Override // org.telegram.ui.Components.SenderSelectPopup.OnSelectCallback
                public final void onPeerSelected(RecyclerView recyclerView, SenderSelectPopup.SenderView senderView, TLRPC.Peer peer) {
                    this.f$0.lambda$createSenderSelectView$20(chatFull, messagesController, recyclerView, senderView, peer);
                }
            }) { // from class: org.telegram.ui.Components.ChatActivityEnterView.28
                @Override // org.telegram.ui.Components.SenderSelectPopup, org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                public void dismiss() {
                    if (ChatActivityEnterView.this.senderSelectPopupWindow != this) {
                        overlayContainerView.removeView(this.dimView);
                        super.dismiss();
                        return;
                    }
                    ChatActivityEnterView.this.senderSelectPopupWindow = null;
                    if (!this.runningCustomSprings) {
                        startDismissAnimation(new SpringAnimation[0]);
                        ChatActivityEnterView.this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, true, true);
                        return;
                    }
                    Iterator it = this.springAnimations.iterator();
                    while (it.hasNext()) {
                        ((SpringAnimation) it.next()).cancel();
                    }
                    this.springAnimations.clear();
                    super.dismiss();
                }
            };
            this.senderSelectPopupWindow = senderSelectPopup2;
            senderSelectPopup2.setPauseNotifications(true);
            this.senderSelectPopupWindow.setDismissAnimationDuration(NotificationCenter.channelStarsUpdated);
            this.senderSelectPopupWindow.setOutsideTouchable(true);
            this.senderSelectPopupWindow.setClippingEnabled(true);
            this.senderSelectPopupWindow.setFocusable(true);
            this.senderSelectPopupWindow.getContentView().measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
            this.senderSelectPopupWindow.setInputMethodMode(2);
            this.senderSelectPopupWindow.setSoftInputMode(0);
            this.senderSelectPopupWindow.getContentView().setFocusableInTouchMode(true);
            this.senderSelectPopupWindow.setAnimationEnabled(false);
            int i2 = -AndroidUtilities.dp(4.0f);
            int[] iArr = new int[2];
            if (AndroidUtilities.isTablet()) {
                this.parentFragment.getFragmentView().getLocationInWindow(iArr);
                i = iArr[0] + i2;
            } else {
                i = i2;
            }
            int contentViewHeight2 = this.delegate.getContentViewHeight();
            int measuredHeight = this.senderSelectPopupWindow.getContentView().getMeasuredHeight();
            int iMeasureKeyboardHeight2 = this.delegate.measureKeyboardHeight();
            if (iMeasureKeyboardHeight2 <= AndroidUtilities.dp(20.0f)) {
                contentViewHeight2 += iMeasureKeyboardHeight2;
            }
            if (this.emojiViewVisible) {
                contentViewHeight2 -= getEmojiPadding();
            }
            int iDp2 = AndroidUtilities.dp(1.0f);
            if (measuredHeight < (((i2 * 2) + contentViewHeight2) - (this.parentFragment.isInBubbleMode() ? 0 : AndroidUtilities.statusBarHeight)) - this.senderSelectPopupWindow.headerText.getMeasuredHeight()) {
                getLocationInWindow(iArr);
                iDp = ((iArr[1] - measuredHeight) - i2) - AndroidUtilities.dp(2.0f);
                overlayContainerView.addView(this.senderSelectPopupWindow.dimView, new FrameLayout.LayoutParams(-1, i2 + iDp + measuredHeight + iDp2 + AndroidUtilities.dp(2.0f)));
            } else {
                int i3 = this.parentFragment.isInBubbleMode() ? 0 : AndroidUtilities.statusBarHeight;
                int iDp3 = AndroidUtilities.dp(14.0f);
                this.senderSelectPopupWindow.recyclerContainer.getLayoutParams().height = ((contentViewHeight2 - i3) - iDp3) - getHeightWithTopView();
                overlayContainerView.addView(this.senderSelectPopupWindow.dimView, new FrameLayout.LayoutParams(-1, iDp3 + i3 + this.senderSelectPopupWindow.recyclerContainer.getLayoutParams().height + iDp2));
                iDp = i3;
            }
            this.senderSelectPopupWindow.startShowAnimation();
            SenderSelectPopup senderSelectPopup3 = this.senderSelectPopupWindow;
            this.popupX = i;
            this.popupY = iDp;
            senderSelectPopup3.showAtLocation(view, 51, i, iDp);
            this.senderSelectView.setProgress(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSuggestionButton$11(View view) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if ((adjustPanLayoutHelper == null || !adjustPanLayoutHelper.animationInProgress()) && this.attachLayoutPaddingAlpha != BitmapDescriptorFactory.HUE_RED) {
            this.delegate.didPressSuggestionButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressedBotButton$69(Runnable runnable, long j) {
        runnable.run();
        SharedPrefsHelper.setWebViewConfirmShown(this.currentAccount, j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressedBotButton$70(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, AlertDialog alertDialog, int i) {
        if (Build.VERSION.SDK_INT < 23 || this.parentActivity.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
            SendMessagesHelper.getInstance(this.currentAccount).sendCurrentLocation(messageObject, keyboardButton);
            return;
        }
        this.parentActivity.requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 2);
        this.pendingMessageObject = messageObject;
        this.pendingLocationButton = keyboardButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$didPressedBotButton$71(MessageObject messageObject, TLRPC.KeyboardButton keyboardButton, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, TopicsFragment topicsFragment) {
        TLRPC.Message message = messageObject.messageOwner;
        long j = message.from_id.user_id;
        long j2 = message.via_bot_id;
        if (j2 != 0) {
            j = j2;
        }
        TLRPC.User user = this.accountInstance.getMessagesController().getUser(Long.valueOf(j));
        if (user == null) {
            dialogsActivity.lambda$onBackPressed$354();
            return true;
        }
        long j3 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        MediaDataController.getInstance(this.currentAccount).saveDraft(j3, 0, "@" + UserObject.getPublicUsername(user) + " " + keyboardButton.query, null, null, true, 0L);
        if (j3 != this.dialog_id && !DialogObject.isEncryptedDialog(j3)) {
            Bundle bundle = new Bundle();
            if (DialogObject.isUserDialog(j3)) {
                bundle.putLong("user_id", j3);
            } else {
                bundle.putLong("chat_id", -j3);
            }
            if (!this.accountInstance.getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                return true;
            }
            if (this.parentFragment.presentFragment(new ChatActivity(bundle), true)) {
                if (!AndroidUtilities.isTablet()) {
                    this.parentFragment.removeSelfFromStack();
                }
            }
            return true;
        }
        dialogsActivity.lambda$onBackPressed$354();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressedBotButton$72(MessageObject messageObject, TLRPC.TL_keyboardButtonRequestPeer tL_keyboardButtonRequestPeer, List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        TLRPC.TL_messages_sendBotRequestedPeer tL_messages_sendBotRequestedPeer = new TLRPC.TL_messages_sendBotRequestedPeer();
        tL_messages_sendBotRequestedPeer.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageObject.messageOwner.peer_id);
        tL_messages_sendBotRequestedPeer.msg_id = messageObject.getId();
        tL_messages_sendBotRequestedPeer.button_id = tL_keyboardButtonRequestPeer.button_id;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            tL_messages_sendBotRequestedPeer.requested_peers.add(MessagesController.getInstance(this.currentAccount).getInputPeer(((Long) it.next()).longValue()));
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_sendBotRequestedPeer, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$didPressedBotButton$73(MessageObject messageObject, TLRPC.TL_keyboardButtonRequestPeer tL_keyboardButtonRequestPeer, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, TopicsFragment topicsFragment) {
        if (arrayList != null && !arrayList.isEmpty()) {
            TLRPC.TL_messages_sendBotRequestedPeer tL_messages_sendBotRequestedPeer = new TLRPC.TL_messages_sendBotRequestedPeer();
            tL_messages_sendBotRequestedPeer.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageObject.messageOwner.peer_id);
            tL_messages_sendBotRequestedPeer.msg_id = messageObject.getId();
            tL_messages_sendBotRequestedPeer.button_id = tL_keyboardButtonRequestPeer.button_id;
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(Long.valueOf(((MessagesStorage.TopicKey) it.next()).dialogId));
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                tL_messages_sendBotRequestedPeer.requested_peers.add(MessagesController.getInstance(this.currentAccount).getInputPeer(((Long) it2.next()).longValue()));
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_sendBotRequestedPeer, null);
        }
        dialogsActivity.lambda$onBackPressed$354();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doneEditingMessage$54() {
        this.waitingForKeyboardOpenAfterAnimation = false;
        openKeyboardInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.waitingForKeyboardOpenAfterAnimation = false;
        openKeyboardInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if (adjustPanLayoutHelper == null || !adjustPanLayoutHelper.animationInProgress()) {
            if (this.emojiButtonRestricted) {
                showRestrictedHint();
                return;
            }
            if (!isPopupShowing() || this.currentPopupContentType != 0) {
                showPopup(1, 0);
                EmojiView emojiView = this.emojiView;
                EditTextCaption editTextCaption = this.messageEditText;
                boolean z = editTextCaption != null && editTextCaption.length() > 0;
                ChatActivity chatActivity = this.parentFragment;
                emojiView.onOpen(z, chatActivity != null && chatActivity.groupEmojiPackHintWasVisible());
                return;
            }
            if (this.searchingType != 0) {
                setSearchingTypeInternal(0, true);
                EmojiView emojiView2 = this.emojiView;
                if (emojiView2 != null) {
                    emojiView2.closeSearch(false);
                }
                EditTextCaption editTextCaption2 = this.messageEditText;
                if (editTextCaption2 != null) {
                    editTextCaption2.requestFocus();
                }
            }
            if (!this.stickersExpanded) {
                openKeyboardInternal();
                return;
            }
            setStickersExpanded(false, true, false);
            this.waitingForKeyboardOpenAfterAnimation = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if ((adjustPanLayoutHelper == null || !adjustPanLayoutHelper.animationInProgress()) && this.attachLayoutPaddingAlpha != BitmapDescriptorFactory.HUE_RED) {
            this.delegate.didPressAttachButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$28() {
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(this.dismissSendPreviewSent);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        EditTextCaption editTextCaption = this.messageEditText;
        String string = editTextCaption != null ? editTextCaption.getText().toString() : "";
        int iIndexOf = string.indexOf(32);
        if (iIndexOf == -1 || iIndexOf == string.length() - 1) {
            setFieldText("");
        } else {
            setFieldText(string.substring(0, iIndexOf + 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview == null || !messageSendPreview.isShowing()) {
            AnimatorSet animatorSet = this.runningAnimationAudio;
            if ((animatorSet == null || !animatorSet.isRunning()) && this.moveToSendStateRunnable == null) {
                sendMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$42(ValueAnimator valueAnimator) {
        MentionsContainerView mentionsContainerView;
        if (this.topView != null) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.topViewEnterProgress = fFloatValue;
            float f = 1.0f - fFloatValue;
            this.topView.setTranslationY(this.animatedTop + (r0.getLayoutParams().height * f));
            this.topLineView.setAlpha(fFloatValue);
            this.topLineView.setTranslationY(this.animatedTop);
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity == null || (mentionsContainerView = chatActivity.mentionContainer) == null) {
                return;
            }
            mentionsContainerView.setTranslationY(f * this.topView.getLayoutParams().height);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate == null || chatActivityEnterViewDelegate.checkCanRemoveRestrictionsByBoosts()) {
            return;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
        SlowModeBtn slowModeBtn = this.slowModeButton;
        chatActivityEnterViewDelegate2.onUpdateSlowModeButton(slowModeBtn, true, slowModeBtn.getText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$6(View view) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || editTextCaption.length() <= 0) {
            return false;
        }
        return onSendLongClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPause$44() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.isLastFragment()) {
            closeKeyboard();
        }
        this.hideKeyboardRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$29(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$30(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.34
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i) {
                ChatActivityEnterView.this.sendMessageInternal(z, i, 0L, true);
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$31(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendMessageInternal(true, 2147483646, 0L, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$32(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendMessageInternal(false, 0, 0L, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$33(DialogInterface dialogInterface) {
        this.messageSendPreview = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$34(Canvas canvas) {
        drawBackground(canvas, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$35(boolean z, View view) {
        MessageSendPreview messageSendPreview;
        this.sentFromPreview = System.currentTimeMillis();
        boolean zSendMessage = sendMessage();
        if (!z && (messageSendPreview = this.messageSendPreview) != null) {
            messageSendPreview.dismiss(!zSendMessage);
            this.messageSendPreview = null;
        } else {
            this.dismissSendPreviewSent = !zSendMessage;
            AndroidUtilities.cancelRunOnUIThread(this.dismissSendPreview);
            AndroidUtilities.runOnUIThread(this.dismissSendPreview, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$36() {
        AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.37
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i) {
                ChatActivityEnterView.this.sendMessageInternal(z, i, 0L, true);
                MessageSendPreview messageSendPreview = ChatActivityEnterView.this.messageSendPreview;
                if (messageSendPreview != null) {
                    messageSendPreview.dismiss(true);
                    ChatActivityEnterView.this.messageSendPreview = null;
                }
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$37() {
        sendMessageInternal(true, 2147483646, 0L, true);
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(true);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$38() {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.didPressSuggestionButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$39() {
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(false);
            this.messageSendPreview = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSendLongClick$38();
            }
        }, 600L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$40(boolean z) {
        MessageSendPreview messageSendPreview;
        this.sentFromPreview = System.currentTimeMillis();
        boolean zSendMessageInternal = sendMessageInternal(false, 0, 0L, true);
        if (!z && (messageSendPreview = this.messageSendPreview) != null) {
            messageSendPreview.dismiss(!zSendMessageInternal);
            this.messageSendPreview = null;
        } else {
            this.dismissSendPreviewSent = !zSendMessageInternal;
            AndroidUtilities.cancelRunOnUIThread(this.dismissSendPreview);
            AndroidUtilities.runOnUIThread(this.dismissSendPreview, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStickerSelected$75(TLRPC.Document document, String str, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, Object obj, Long l, boolean z2) {
        if (this.slowModeTimer > 0 && !isInScheduleMode()) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                SlowModeBtn slowModeBtn = this.slowModeButton;
                chatActivityEnterViewDelegate.onUpdateSlowModeButton(slowModeBtn, true, slowModeBtn.getText());
                return;
            }
            return;
        }
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, true);
            this.emojiView.closeSearch(true);
            this.emojiView.hideSearchKeyboard();
        }
        setStickersExpanded(false, true, false);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
        TL_stories$StoryItem replyToStory = chatActivityEnterViewDelegate2 != null ? chatActivityEnterViewDelegate2.getReplyToStory() : null;
        SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(this.currentAccount);
        long j = this.dialog_id;
        MessageObject messageObject = this.replyingMessageObject;
        MessageObject threadMessage = getThreadMessage();
        ChatActivity.ReplyQuote replyQuote = this.replyingQuote;
        boolean z3 = obj instanceof TLRPC.TL_messages_stickerSet;
        ChatActivity chatActivity = this.parentFragment;
        sendMessagesHelper.sendSticker(document, str, j, messageObject, threadMessage, replyToStory, replyQuote, sendAnimationData, z, i, z3, obj, chatActivity != null ? chatActivity.quickReplyShortcut : null, chatActivity != null ? chatActivity.getQuickReplyId() : 0, l.longValue(), getSendMonoForumPeerId(), getSendMessageSuggestionParams());
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
        if (chatActivityEnterViewDelegate3 != null) {
            chatActivityEnterViewDelegate3.onMessageSend(null, true, i, 0L);
        }
        if (z2) {
            setFieldText("");
        }
        MediaDataController.getInstance(this.currentAccount).addRecentSticker(0, obj, document, (int) (System.currentTimeMillis() / 1000), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStickerSelected$76(final TLRPC.Document document, final String str, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final int i, final Object obj, final boolean z2, final Long l) {
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStickerSelected$75(document, str, sendAnimationData, z, i, obj, l, z2);
            }
        };
        if (showConfirmAlert(runnable)) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebViewMenu$23() {
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setOpened(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebViewMenu$24() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openWebViewMenu$23();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebViewMenu$25() {
        AndroidUtilities.hideKeyboard(this);
        int i = this.currentAccount;
        long j = this.dialog_id;
        String str = this.botMenuWebViewTitle;
        String str2 = this.botMenuWebViewUrl;
        ChatActivity chatActivity = this.parentFragment;
        WebViewRequestProps webViewRequestPropsOf = WebViewRequestProps.of(i, j, j, str, str2, 2, 0, chatActivity == null ? 0L : chatActivity.getSendMonoForumPeerId(), false, null, false, null, null, 0, false, false);
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null && launchActivity.getBottomSheetTabs() != null && LaunchActivity.instance.getBottomSheetTabs().tryReopenTab(webViewRequestPropsOf) != null) {
            BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
            if (botCommandsMenuView != null) {
                botCommandsMenuView.setOpened(false);
                return;
            }
            return;
        }
        if (AndroidUtilities.isWebAppLink(this.botMenuWebViewUrl)) {
            Browser.Progress progress = new Browser.Progress();
            progress.onEnd(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWebViewMenu$24();
                }
            });
            Browser.openAsInternalIntent(getContext(), this.botMenuWebViewUrl, false, false, progress);
            return;
        }
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialog_id));
        String restrictionReason = MessagesController.getInstance(this.currentAccount).getRestrictionReason(user == null ? null : user.restriction_reason);
        if (!TextUtils.isEmpty(restrictionReason)) {
            MessagesController.getInstance(this.currentAccount);
            MessagesController.showCantOpenAlert(this.parentFragment, restrictionReason);
            return;
        }
        BotWebViewSheet botWebViewSheet = new BotWebViewSheet(getContext(), this.resourcesProvider);
        botWebViewSheet.setDefaultFullsize(false);
        botWebViewSheet.setNeedsContext(true);
        botWebViewSheet.setParentActivity(this.parentActivity);
        botWebViewSheet.requestWebView(this.parentFragment, webViewRequestPropsOf);
        botWebViewSheet.show();
        BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
        if (botCommandsMenuView2 != null) {
            botCommandsMenuView2.setOpened(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebViewMenu$26(Runnable runnable) {
        runnable.run();
        SharedPrefsHelper.setWebViewConfirmShown(this.currentAccount, this.dialog_id, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebViewMenu$27() {
        if (this.botCommandsMenuButton == null || SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, this.dialog_id)) {
            return;
        }
        this.botCommandsMenuButton.setOpened(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveBusinessLink$53() {
        BulletinFactory.of(this.parentFragment).createSuccessBulletin(LocaleController.getString(R.string.BusinessLinkSaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$45(boolean z, int i, long j) {
        sendMessageInternal(z, i, j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$46() {
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setSendButtonInvisible();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$47() {
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setSendButtonInvisible();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$48(CharSequence charSequence, boolean z, int i, long j) {
        this.moveToSendStateRunnable = null;
        hideTopView(true);
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setText("");
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onMessageSend(charSequence, z, i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$49(final boolean z, boolean z2, final int i, final long j) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        TLRPC.Chat currentChat;
        EmojiView emojiView;
        if (this.slowModeTimer == Integer.MAX_VALUE && !isInScheduleMode()) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
            if (chatActivityEnterViewDelegate2 != null) {
                chatActivityEnterViewDelegate2.scrollToSendingMessage();
                return;
            }
            return;
        }
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            TLRPC.Chat currentChat2 = chatActivity.getCurrentChat();
            if (this.parentFragment.getCurrentUser() != null || ((ChatObject.isChannel(currentChat2) && currentChat2.megagroup) || !ChatObject.isChannel(currentChat2))) {
                MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + this.dialog_id, !z).commit();
            }
        }
        if (this.stickersExpanded) {
            setStickersExpanded(false, true, false);
            if (this.searchingType != 0 && (emojiView = this.emojiView) != null) {
                emojiView.closeSearch(false);
                this.emojiView.hideSearchKeyboard();
            }
        }
        if (z2 && showConfirmAlert(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessageInternal$45(z, i, j);
            }
        })) {
            return;
        }
        this.dismissSendPreviewSent = true;
        if (this.videoToSendMessageObject != null) {
            this.delegate.needStartRecordVideo(4, z, i, this.voiceOnce ? Integer.MAX_VALUE : 0, this.effectId, j);
            SendButton sendButton = this.sendButton;
            this.effectId = 0L;
            sendButton.setEffect(0L);
            hideRecordedAudioPanel(true);
            checkSendButton(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendMessageInternal$46();
                }
            }, 100L);
            this.millisecondsRecorded = 0L;
            return;
        }
        if (this.audioToSend == null) {
            EditTextCaption editTextCaption = this.messageEditText;
            CharSequence textToUse = editTextCaption == null ? "" : editTextCaption.getTextToUse();
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 != null && (currentChat = chatActivity2.getCurrentChat()) != null && currentChat.slowmode_enabled && !ChatObject.hasAdminRights(currentChat)) {
                if (textToUse.length() > this.accountInstance.getMessagesController().maxMessageLength) {
                    AlertsCreator.showSimpleAlert(this.parentFragment, LocaleController.getString("Slowmode", R.string.Slowmode), LocaleController.getString("SlowmodeSendErrorTooLong", R.string.SlowmodeSendErrorTooLong), this.resourcesProvider);
                    return;
                } else if (this.forceShowSendButton && textToUse.length() > 0) {
                    AlertsCreator.showSimpleAlert(this.parentFragment, LocaleController.getString("Slowmode", R.string.Slowmode), LocaleController.getString("SlowmodeSendError", R.string.SlowmodeSendError), this.resourcesProvider);
                    return;
                }
            }
            if (checkPremiumAnimatedEmoji(this.currentAccount, this.dialog_id, this.parentFragment, null, textToUse)) {
                return;
            }
            if (processSendingText(textToUse, z, i, j)) {
                if (this.delegate.hasForwardingMessages() || (!(i == 0 || isInScheduleMode()) || isInScheduleMode())) {
                    EditTextCaption editTextCaption2 = this.messageEditText;
                    if (editTextCaption2 != null) {
                        editTextCaption2.setText("");
                    }
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
                    if (chatActivityEnterViewDelegate3 != null) {
                        chatActivityEnterViewDelegate3.onMessageSend(textToUse, z, i, j);
                    }
                } else {
                    this.messageTransitionIsRunning = false;
                    final CharSequence charSequence = textToUse;
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda80
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendMessageInternal$48(charSequence, z, i, j);
                        }
                    };
                    this.moveToSendStateRunnable = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 200L);
                }
                this.lastTypingTimeSend = 0L;
            } else if (this.forceShowSendButton && (chatActivityEnterViewDelegate = this.delegate) != null) {
                chatActivityEnterViewDelegate.onMessageSend(null, z, i, j);
            }
            updateSendButtonPaid();
            return;
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null && playingMessageObject == this.audioToSendMessageObject) {
            MediaController.getInstance().cleanupPlayer(true, true);
        }
        MediaController.getInstance().cleanRecording(false);
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        long j2 = this.dialog_id;
        ChatActivity chatActivity3 = this.parentFragment;
        mediaDataController.pushDraftVoiceMessage(j2, (chatActivity3 == null || !chatActivity3.isTopic) ? 0L : chatActivity3.getTopicId(), null);
        RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
        if (recordedAudioPlayerView != null && recordedAudioPlayerView.needsCut()) {
            this.audioTimelineView.setPlaying(false);
            String str = this.audioToSendPath + ".ogg";
            if (MediaController.cropOpusFile(this.audioToSendPath, str, this.audioTimelineView.getAudioLeftMs(), this.audioTimelineView.getAudioRightMs())) {
                try {
                    new File(this.audioToSendPath).delete();
                } catch (Exception e) {
                    FileLog.e(e);
                }
                try {
                    new File(str).renameTo(new File(this.audioToSendPath));
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= this.audioToSend.attributes.size()) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = this.audioToSend.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                        documentAttribute.waveform = MediaController.getWaveform(this.audioToSendPath);
                        documentAttribute.duration = this.audioTimelineView.getNewDuration();
                        break;
                    }
                    i2++;
                }
            }
        }
        SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(this.audioToSend, null, this.audioToSendPath, this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, null, null, null, z, i, this.voiceOnce ? Integer.MAX_VALUE : 0, null, null, false);
        ChatActivity chatActivity4 = this.parentFragment;
        sendMessageParamsOf.quick_reply_shortcut = chatActivity4 != null ? chatActivity4.quickReplyShortcut : null;
        sendMessageParamsOf.quick_reply_shortcut_id = chatActivity4 != null ? chatActivity4.getQuickReplyId() : 0;
        sendMessageParamsOf.effect_id = this.effectId;
        sendMessageParamsOf.payStars = j;
        sendMessageParamsOf.monoForumPeer = getSendMonoForumPeerId();
        sendMessageParamsOf.suggestionParams = getSendMessageSuggestionParams();
        SendButton sendButton2 = this.sendButton;
        this.effectId = 0L;
        sendButton2.setEffect(0L);
        if (!this.delegate.hasForwardingMessages()) {
            MessageObject.SendAnimationData sendAnimationData = new MessageObject.SendAnimationData();
            sendAnimationData.fromPreview = System.currentTimeMillis() - this.sentFromPreview < 200;
            sendMessageParamsOf.sendAnimationData = sendAnimationData;
        }
        applyStoryToSendMessageParams(sendMessageParamsOf);
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate4 = this.delegate;
        if (chatActivityEnterViewDelegate4 != null) {
            chatActivityEnterViewDelegate4.onMessageSend(null, z, i, j);
        }
        hideRecordedAudioPanel(true);
        checkSendButton(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessageInternal$47();
            }
        }, 100L);
        this.millisecondsRecorded = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessageInternal$50(boolean z, int i, Long l) {
        sendMessageInternal(z, i, l.longValue(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setButtons$68(TLRPC.KeyboardButton keyboardButton) {
        ChatActivity chatActivity;
        boolean z = this.replyingMessageObject != null && (chatActivity = this.parentFragment) != null && chatActivity.isTopic && chatActivity.getTopicId() == ((long) this.replyingMessageObject.getId());
        MessageObject messageObject = this.replyingMessageObject;
        if (messageObject == null || z) {
            messageObject = DialogObject.isChatDialog(this.dialog_id) ? this.botButtonsMessageObject : null;
        }
        MessageObject messageObject2 = this.replyingMessageObject;
        if (messageObject2 == null || z) {
            messageObject2 = this.botButtonsMessageObject;
        }
        boolean zDidPressedBotButton = didPressedBotButton(keyboardButton, messageObject, messageObject2);
        if (this.replyingMessageObject == null || z) {
            MessageObject messageObject3 = this.botButtonsMessageObject;
            if (messageObject3 != null && messageObject3.messageOwner.reply_markup.single_use) {
                if (zDidPressedBotButton) {
                    openKeyboardInternal();
                } else {
                    showPopup(0, 0);
                }
                MessagesController.getMainSettings(this.currentAccount).edit().putInt("answered_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).commit();
            }
        } else {
            openKeyboardInternal();
            setButtons(this.botMessageObject, false);
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onMessageSend(null, true, 0, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEditingBusinessLink$57(View view) {
        saveBusinessLink();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEditingMessageObject$58(View view) {
        doneEditingMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEditingMessageObject$59(ArrayList arrayList, MessagePreviewView.ToggleButton toggleButton, MessageSendPreview messageSendPreview, View view) {
        this.captionAbove = !this.captionAbove;
        for (int i = 0; i < arrayList.size(); i++) {
            ((MessageObject) arrayList.get(i)).messageOwner.invert_media = this.captionAbove;
        }
        toggleButton.setState(!this.captionAbove, true);
        if (!arrayList.isEmpty()) {
            messageSendPreview.changeMessage((MessageObject) arrayList.get(0));
        }
        messageSendPreview.scrollTo(!this.captionAbove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEditingMessageObject$60(MessageObject.GroupedMessages groupedMessages, MessageObject messageObject, MessageSendPreview messageSendPreview, View view) {
        if (groupedMessages != null) {
            Iterator<MessageObject> it = groupedMessages.messages.iterator();
            while (it.hasNext()) {
                it.next().messageOwner.invert_media = this.captionAbove;
            }
            groupedMessages.calculate();
        } else {
            messageObject.messageOwner.invert_media = this.captionAbove;
        }
        doneEditingMessage();
        messageSendPreview.dismiss(true);
        this.captionAbove = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setEditingMessageObject$61(final MessageObject messageObject, final MessageObject.GroupedMessages groupedMessages, View view) {
        EditTextCaption editTextCaption;
        if (messageObject.isMediaEmpty() || (editTextCaption = this.messageEditText) == null || TextUtils.isEmpty(editTextCaption.getTextToUse())) {
            return false;
        }
        if (groupedMessages != null && (!groupedMessages.hasCaption || groupedMessages.isDocuments)) {
            return false;
        }
        int i = messageObject.type;
        if (i != 1 && i != 3 && i != 8) {
            return false;
        }
        final MessageSendPreview messageSendPreview = new MessageSendPreview(getContext(), this.resourcesProvider);
        messageSendPreview.allowRelayout = true;
        final ArrayList arrayList = new ArrayList();
        if (groupedMessages != null) {
            int i2 = 0;
            while (i2 < groupedMessages.messages.size()) {
                arrayList.add(editingMessageObjectPreview(groupedMessages.messages.get(i2), i2 == 0));
                i2++;
            }
        } else {
            arrayList.add(editingMessageObjectPreview(messageObject, true));
        }
        messageSendPreview.setMessageObjects(arrayList);
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.sizeNotifierLayout, this.resourcesProvider, this.doneButton);
        final MessagePreviewView.ToggleButton toggleButton = new MessagePreviewView.ToggleButton(getContext(), R.raw.position_below, LocaleController.getString(R.string.CaptionAbove), R.raw.position_above, LocaleController.getString(R.string.CaptionBelow), this.resourcesProvider);
        toggleButton.setState(!this.captionAbove, false);
        toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$setEditingMessageObject$59(arrayList, toggleButton, messageSendPreview, view2);
            }
        });
        itemOptionsMakeOptions.addView(toggleButton);
        itemOptionsMakeOptions.setupSelectors();
        messageSendPreview.setItemOptions(itemOptionsMakeOptions);
        messageSendPreview.setSendButton(this.doneButton, false, new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda87
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$setEditingMessageObject$60(groupedMessages, messageObject, messageSendPreview, view2);
            }
        });
        messageSendPreview.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEditingMessageObject$62(CharSequence charSequence) {
        setFieldText(charSequence);
        this.setTextFieldRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$setFieldFocused$64() {
        boolean z;
        EditTextCaption editTextCaption;
        ViewGroup view = null;
        this.focusRunnable = null;
        if (AndroidUtilities.isTablet()) {
            Activity activity = this.parentActivity;
            if (activity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) activity;
                if (launchActivity != null && launchActivity.getLayersActionBarLayout() != null) {
                    view = launchActivity.getLayersActionBarLayout().getView();
                }
                if (view != null && view.getVisibility() == 0) {
                    z = false;
                }
            } else {
                z = true;
            }
        }
        if (this.isPaused || !z || (editTextCaption = this.messageEditText) == null) {
            return;
        }
        try {
            editTextCaption.requestFocus();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSearchingTypeInternal$79(ValueAnimator valueAnimator) {
        this.searchToOpenProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.searchProgressChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStickersExpanded$83(int i, ValueAnimator valueAnimator) {
        this.stickersExpansionProgress = Math.abs(getTranslationY() / (-(this.stickersExpandedHeight - i)));
        this.sizeNotifierLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStickersExpanded$84(int i, ValueAnimator valueAnimator) {
        this.stickersExpansionProgress = getTranslationY() / (-(this.stickersExpandedHeight - i));
        this.sizeNotifierLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCaptionLimitBulletin$52() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            chatActivity.presentFragment(new PremiumPreviewFragment("caption_limit"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$77() {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$78(int i) {
        if (i == 0) {
            this.emojiPadding = 0;
        }
        this.panelAnimation = null;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.emojiView.setVisibility(8);
            this.sizeNotifierLayout.removeView(this.emojiView);
            if (this.removeEmojiViewAfterAnimation) {
                this.removeEmojiViewAfterAnimation = false;
                this.emojiView = null;
            }
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSendSuggestionHint$66() {
        AndroidUtilities.removeFromParent(this.sendSuggestHintView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTopView$43() {
        showTopView(true, false, true);
        this.showTopViewRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRecordInterface$55(ValueAnimator valueAnimator) {
        this.recordCircle.setTransformToSeekbar(((Float) valueAnimator.getAnimatedValue()).floatValue());
        if (!isInVideoMode()) {
            this.audioTimelineView.setAlpha(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.audioTimelineView.invalidate();
        }
        isRecordingStateChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSendAsButton$67(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f5 = f + ((f2 - f) * fFloatValue);
        SenderSelectView senderSelectView = this.senderSelectView;
        if (senderSelectView != null) {
            senderSelectView.setAlpha(f3 + ((f4 - f3) * fFloatValue));
            this.senderSelectView.setTranslationX(f5);
        }
        this.emojiButton.setTranslationX(f5);
        this.messageTextTranslationX = f5;
        updateMessageTextParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(27:26|(1:28)|29|(1:37)(1:36)|38|(3:40|(1:44)|45)(1:(9:48|(1:50)(1:51)|52|(3:56|(1:58)|59)|60|(3:62|(1:68)|69)|70|(1:74)|75)(21:76|(1:83)(1:82)|84|(1:88)|89|(1:94)|95|(1:100)(1:99)|101|(1:106)(1:105)|(1:113)|(4:115|(1:117)(1:118)|119|(1:123))|124|(1:130)|(1:132)|133|(3:135|(1:138)|(1:153)(2:142|(0)(1:152)))|154|241|155|156))|46|83|84|(2:86|88)|89|(2:92|94)(2:92|94)|95|(2:97|100)(0)|101|(2:103|106)(0)|(3:108|110|113)(0)|(0)|124|(3:126|128|130)|(0)|133|(0)|154|241|155|156) */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x04e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onSendLongClick(View view) {
        ChatActivity chatActivity;
        int measuredHeight;
        EditTextCaption editTextCaption;
        ChatActivity chatActivity2;
        MessagePreviewParams messagePreviewParams;
        MessagePreviewParams.Messages messages;
        ArrayList<MessageObject> arrayList;
        InstantCameraView instantCameraView;
        boolean z;
        MessageObject messageObject;
        MessagePreviewParams messagePreviewParams2;
        ItemOptions itemOptionsMakeOptions;
        boolean z2;
        boolean z3;
        ChatActivity chatActivity3;
        EditTextCaption editTextCaption2;
        boolean z4 = true;
        if (isInScheduleMode() || ((chatActivity = this.parentFragment) != null && chatActivity.getChatMode() == 5)) {
            return false;
        }
        if (this.isStories || !(((editTextCaption = this.messageEditText) != null && !TextUtils.isEmpty(editTextCaption.getText())) || (chatActivity2 = this.parentFragment) == null || (messagePreviewParams = chatActivity2.messagePreviewParams) == null || (messages = messagePreviewParams.forwardMessages) == null || (arrayList = messages.messages) == null || arrayList.isEmpty())) {
            ChatActivity chatActivity4 = this.parentFragment;
            boolean z5 = chatActivity4 != null && UserObject.isUserSelf(chatActivity4.getCurrentUser());
            if (this.sendPopupLayout == null) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.parentActivity, this.resourcesProvider);
                this.sendPopupLayout = actionBarPopupWindowLayout;
                actionBarPopupWindowLayout.setAnimationEnabled(false);
                this.sendPopupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.33
                    private android.graphics.Rect popupRect = new android.graphics.Rect();

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        if (motionEvent.getActionMasked() != 0 || ChatActivityEnterView.this.sendPopupWindow == null || !ChatActivityEnterView.this.sendPopupWindow.isShowing()) {
                            return false;
                        }
                        view2.getHitRect(this.popupRect);
                        if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                            return false;
                        }
                        ChatActivityEnterView.this.sendPopupWindow.dismiss();
                        return false;
                    }
                });
                this.sendPopupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda53
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                    public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                        this.f$0.lambda$onSendLongClick$29(keyEvent);
                    }
                });
                this.sendPopupLayout.setShownFromBottom(false);
                ChatActivity chatActivity5 = this.parentFragment;
                boolean z6 = chatActivity5 != null && chatActivity5.canScheduleMessage();
                boolean z7 = !z5 && (this.slowModeTimer <= 0 || isInScheduleMode());
                if (z6) {
                    boolean z8 = !z7;
                    ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, z8, this.resourcesProvider);
                    this.actionScheduleButton = actionBarMenuSubItem;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(z5 ? R.string.SetReminder : R.string.ScheduleMessage), R.drawable.msg_calendar2);
                    this.actionScheduleButton.setMinimumWidth(AndroidUtilities.dp(196.0f));
                    this.actionScheduleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda54
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$onSendLongClick$30(view2);
                        }
                    });
                    this.sendPopupLayout.addView((View) this.actionScheduleButton, LayoutHelper.createLinear(-1, 48));
                    SharedConfig.removeScheduledHint();
                    if (!z5 && this.dialog_id > 0) {
                        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), true, z8, this.resourcesProvider);
                        this.sendWhenOnlineButton = actionBarMenuSubItem2;
                        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(R.string.SendWhenOnline), R.drawable.msg_online);
                        this.sendWhenOnlineButton.setMinimumWidth(AndroidUtilities.dp(196.0f));
                        this.sendWhenOnlineButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda44
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                this.f$0.lambda$onSendLongClick$31(view2);
                            }
                        });
                        this.sendPopupLayout.addView((View) this.sendWhenOnlineButton, LayoutHelper.createLinear(-1, 48));
                    }
                }
                if (z7) {
                    ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getContext(), !z6, true, this.resourcesProvider);
                    actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(R.string.SendWithoutSound), R.drawable.input_notify_off);
                    actionBarMenuSubItem3.setMinimumWidth(AndroidUtilities.dp(196.0f));
                    actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda45
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$onSendLongClick$32(view2);
                        }
                    });
                    this.sendPopupLayout.addView((View) actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
                }
                this.sendPopupLayout.setupRadialSelectors(getThemedColor(Theme.key_dialogButtonSelector));
                int i = -2;
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.sendPopupLayout, i, i) { // from class: org.telegram.ui.Components.ChatActivityEnterView.35
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                    public void dismiss() {
                        super.dismiss();
                        ChatActivityEnterView.this.sendButton.invalidate();
                    }
                };
                this.sendPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setAnimationEnabled(false);
                this.sendPopupWindow.setAnimationStyle(R.style.PopupContextAnimation2);
                this.sendPopupWindow.setOutsideTouchable(true);
                this.sendPopupWindow.setClippingEnabled(true);
                this.sendPopupWindow.setInputMethodMode(2);
                this.sendPopupWindow.setSoftInputMode(0);
                this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
                SharedConfig.removeScheduledOrNoSoundHint();
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                if (chatActivityEnterViewDelegate != null) {
                    chatActivityEnterViewDelegate.onSendLongClick();
                }
            }
            ActionBarMenuSubItem actionBarMenuSubItem4 = this.actionScheduleButton;
            if (actionBarMenuSubItem4 != null) {
                actionBarMenuSubItem4.setVisibility(this.voiceOnce ? 8 : 0);
            }
            if (this.sendWhenOnlineButton != null) {
                ChatActivity chatActivity6 = this.parentFragment;
                TLRPC.User currentUser = chatActivity6 == null ? null : chatActivity6.getCurrentUser();
                if (currentUser == null || currentUser.bot) {
                    this.sendWhenOnlineButton.setVisibility(8);
                } else {
                    TLRPC.UserStatus userStatus = currentUser.status;
                    if (!(userStatus instanceof TLRPC.TL_userStatusEmpty) && !(userStatus instanceof TLRPC.TL_userStatusOnline) && !(userStatus instanceof TLRPC.TL_userStatusRecently) && !(userStatus instanceof TLRPC.TL_userStatusLastMonth) && !(userStatus instanceof TLRPC.TL_userStatusLastWeek)) {
                        this.sendWhenOnlineButton.setVisibility(0);
                    }
                }
            }
            this.sendPopupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
            this.sendPopupWindow.setFocusable(true);
            view.getLocationInWindow(this.location);
            if (this.keyboardVisible) {
                int measuredHeight2 = getMeasuredHeight();
                View view2 = this.topView;
                measuredHeight = measuredHeight2 > AndroidUtilities.dp((view2 == null || view2.getVisibility() != 0) ? 58.0f : 106.0f) ? this.location[1] + view.getMeasuredHeight() : (this.location[1] - this.sendPopupLayout.getMeasuredHeight()) - AndroidUtilities.dp(2.0f);
            }
            this.sendPopupWindow.showAtLocation(view, 51, ((this.location[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.dp(8.0f), measuredHeight);
            this.sendPopupWindow.dimBehind();
            this.sendButton.invalidate();
            try {
                view.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            return true;
        }
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(false);
        }
        AndroidUtilities.cancelRunOnUIThread(this.dismissSendPreview);
        MessageSendPreview messageSendPreview2 = new MessageSendPreview(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.36
            @Override // org.telegram.ui.MessageSendPreview
            protected void onEffectChange(long j) {
                ChatActivityEnterView.this.setEffectId(j);
            }
        };
        this.messageSendPreview = messageSendPreview2;
        messageSendPreview2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda43
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$onSendLongClick$33(dialogInterface);
            }
        });
        final boolean z9 = (this.audioToSendMessageObject == null && ((editTextCaption2 = this.messageEditText) == null || TextUtils.isEmpty(editTextCaption2.getText()))) ? false : true;
        ArrayList arrayList2 = new ArrayList();
        if (this.audioToSend != null) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.id = 0;
            tL_message.out = true;
            tL_message.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(this.dialog_id);
            tL_message.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
            tL_message.media = tL_messageMediaDocument;
            tL_messageMediaDocument.voice = true;
            tL_messageMediaDocument.document = this.audioToSend;
            tL_message.send_state = 1;
            tL_message.attachPath = this.audioToSendPath;
            messageObject = new MessageObject(this.currentAccount, tL_message, false, true);
            MessageObject messageObject2 = this.replyingMessageObject;
            if (messageObject2 != null && !messageObject2.isTopicMainMessage) {
                messageObject.replyMessageObject = messageObject2;
            }
            messageObject.isOutOwnerCached = Boolean.TRUE;
            messageObject.generateLayout(null);
            messageObject.notime = true;
            messageObject.sendPreview = true;
        } else {
            if (!z9) {
                ChatActivity chatActivity7 = this.parentFragment;
                if (chatActivity7 == null || (instantCameraView = chatActivity7.instantCameraView) == null || instantCameraView.getTextureView() == null) {
                    z = false;
                } else {
                    this.messageSendPreview.setCameraTexture(this.parentFragment.instantCameraView.getTextureView());
                    z = true;
                }
                this.messageSendPreview.setMessageObjects(arrayList2);
                if (z9 && this.audioToSend == null) {
                    this.messageSendPreview.setEditText(this.messageEditText, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda46
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            this.f$0.drawMessageEditText((Canvas) obj, (Utilities.Callback0Return) obj2);
                        }
                    }, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda47
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onSendLongClick$34((Canvas) obj);
                        }
                    });
                }
                this.messageSendPreview.setSendButton(this.sendButton, true, new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda48
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f$0.lambda$onSendLongClick$35(z9, view3);
                    }
                });
                if ((z9 || z) && this.dialog_id >= 0) {
                    this.messageSendPreview.allowEffectSelector(this.parentFragment);
                    this.messageSendPreview.setEffectId(this.effectId);
                }
                itemOptionsMakeOptions = ItemOptions.makeOptions(this, this.resourcesProvider, this.sendButton);
                ChatActivity chatActivity8 = this.parentFragment;
                z2 = chatActivity8 == null && UserObject.isUserSelf(chatActivity8.getCurrentUser());
                ChatActivity chatActivity9 = this.parentFragment;
                z3 = chatActivity9 == null && chatActivity9.canScheduleMessage();
                if (!z2 || (this.slowModeTimer > 0 && !isInScheduleMode())) {
                    z4 = false;
                }
                if (z3) {
                    itemOptionsMakeOptions.add(R.drawable.msg_calendar2, LocaleController.getString(z2 ? R.string.SetReminder : R.string.ScheduleMessage), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda49
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onSendLongClick$36();
                        }
                    });
                    if (!z2 && this.dialog_id > 0) {
                        itemOptionsMakeOptions.add(R.drawable.msg_online, LocaleController.getString(R.string.SendWhenOnline), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda50
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onSendLongClick$37();
                            }
                        });
                        this.sendWhenOnlineButton = itemOptionsMakeOptions.getLast();
                    }
                }
                chatActivity3 = this.parentFragment;
                if (chatActivity3 != null && this.delegate != null && ChatObject.isMonoForum(chatActivity3.getCurrentChat())) {
                    itemOptionsMakeOptions.add(R.drawable.input_suggest_paid_24, LocaleController.getString(R.string.PostSuggestionsSendWithOffer), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda51
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onSendLongClick$39();
                        }
                    });
                }
                if (z4) {
                    itemOptionsMakeOptions.add(R.drawable.input_notify_off, LocaleController.getString(R.string.SendWithoutSound), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda52
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onSendLongClick$40(z9);
                        }
                    });
                }
                itemOptionsMakeOptions.setupSelectors();
                if (this.sendWhenOnlineButton != null) {
                    ChatActivity chatActivity10 = this.parentFragment;
                    TLRPC.User currentUser2 = chatActivity10 != null ? chatActivity10.getCurrentUser() : null;
                    if (currentUser2 == null || currentUser2.bot) {
                        this.sendWhenOnlineButton.setVisibility(8);
                    } else {
                        TLRPC.UserStatus userStatus2 = currentUser2.status;
                        if (!(userStatus2 instanceof TLRPC.TL_userStatusEmpty) && !(userStatus2 instanceof TLRPC.TL_userStatusOnline) && !(userStatus2 instanceof TLRPC.TL_userStatusRecently) && !(userStatus2 instanceof TLRPC.TL_userStatusLastMonth) && !(userStatus2 instanceof TLRPC.TL_userStatusLastWeek)) {
                            this.sendWhenOnlineButton.setVisibility(0);
                        }
                    }
                }
                this.messageSendPreview.setItemOptions(itemOptionsMakeOptions);
                this.messageSendPreview.show();
                view.performHapticFeedback(3, 2);
                return false;
            }
            TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
            tL_message2.id = 0;
            tL_message2.out = true;
            tL_message2.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(this.dialog_id);
            tL_message2.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
            EditTextCaption editTextCaption3 = this.messageEditText;
            CharSequence[] charSequenceArr = {new SpannableStringBuilder(editTextCaption3 == null ? "" : editTextCaption3.getTextToUse())};
            MessageObject.addLinks(true, charSequenceArr[0]);
            tL_message2.entities.addAll(MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true));
            tL_message2.message = charSequenceArr[0].toString();
            MessageObject messageObject3 = this.replyingMessageObject;
            if (messageObject3 != null && !messageObject3.isTopicMainMessage) {
                TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
                MessageObject messageObject4 = this.replyingTopMessage;
                if (messageObject4 != null) {
                    tL_messageReplyHeader.flags |= 2;
                    tL_messageReplyHeader.reply_to_top_id = messageObject4.getId();
                }
                tL_messageReplyHeader.flags |= 16;
                tL_messageReplyHeader.reply_to_msg_id = this.replyingMessageObject.getId();
                tL_message2.reply_to = tL_messageReplyHeader;
            }
            if (this.messageWebPage != null) {
                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                tL_messageMediaWebPage.webpage = this.messageWebPage;
                ChatActivity chatActivity11 = this.parentFragment;
                if (chatActivity11 != null && (messagePreviewParams2 = chatActivity11.messagePreviewParams) != null && messagePreviewParams2.hasMedia) {
                    boolean z10 = messagePreviewParams2.webpageSmall;
                    tL_messageMediaWebPage.force_small_media = z10;
                    tL_messageMediaWebPage.force_large_media = !z10;
                    tL_message2.invert_media = messagePreviewParams2.webpageTop;
                }
                tL_message2.media = tL_messageMediaWebPage;
            }
            messageObject = new MessageObject(this.currentAccount, tL_message2, false, false);
            MessageObject messageObject5 = this.replyingMessageObject;
            if (messageObject5 != null && !messageObject5.isTopicMainMessage) {
                messageObject.replyMessageObject = messageObject5;
            }
            messageObject.sendPreview = true;
            messageObject.isOutOwnerCached = Boolean.TRUE;
            messageObject.type = 0;
            messageObject.generateLayout(null);
            messageObject.notime = true;
        }
        arrayList2.add(messageObject);
        z = false;
        this.messageSendPreview.setMessageObjects(arrayList2);
        if (z9) {
            this.messageSendPreview.setEditText(this.messageEditText, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda46
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.drawMessageEditText((Canvas) obj, (Utilities.Callback0Return) obj2);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda47
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onSendLongClick$34((Canvas) obj);
                }
            });
        }
        this.messageSendPreview.setSendButton(this.sendButton, true, new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$onSendLongClick$35(z9, view3);
            }
        });
        if (z9) {
            this.messageSendPreview.allowEffectSelector(this.parentFragment);
            this.messageSendPreview.setEffectId(this.effectId);
        } else {
            this.messageSendPreview.allowEffectSelector(this.parentFragment);
            this.messageSendPreview.setEffectId(this.effectId);
        }
        itemOptionsMakeOptions = ItemOptions.makeOptions(this, this.resourcesProvider, this.sendButton);
        ChatActivity chatActivity82 = this.parentFragment;
        if (chatActivity82 == null) {
        }
        ChatActivity chatActivity92 = this.parentFragment;
        if (chatActivity92 == null) {
        }
        if (!z2) {
            z4 = false;
        }
        if (z3) {
        }
        chatActivity3 = this.parentFragment;
        if (chatActivity3 != null) {
            itemOptionsMakeOptions.add(R.drawable.input_suggest_paid_24, LocaleController.getString(R.string.PostSuggestionsSendWithOffer), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSendLongClick$39();
                }
            });
        }
        if (z4) {
        }
        itemOptionsMakeOptions.setupSelectors();
        if (this.sendWhenOnlineButton != null) {
        }
        this.messageSendPreview.setItemOptions(itemOptionsMakeOptions);
        this.messageSendPreview.show();
        view.performHapticFeedback(3, 2);
        return false;
    }

    private void onWindowSizeChanged() {
        int height = this.sizeNotifierLayout.getHeight();
        if (!this.keyboardVisible) {
            height -= this.emojiPadding;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onWindowSizeChanged(height);
        }
        if (this.topView != null) {
            if (height >= AndroidUtilities.dp(72.0f) + ActionBar.getCurrentActionBarHeight()) {
                if (this.allowShowTopView) {
                    return;
                }
                this.allowShowTopView = true;
                if (this.needShowTopView) {
                    this.topView.setVisibility(0);
                    this.topLineView.setVisibility(0);
                    this.topLineView.setAlpha(1.0f);
                    resizeForTopView(true);
                    this.topViewEnterProgress = 1.0f;
                    this.topView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
                return;
            }
            if (this.allowShowTopView) {
                this.allowShowTopView = false;
                if (this.needShowTopView) {
                    this.topView.setVisibility(8);
                    this.topLineView.setVisibility(8);
                    this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    resizeForTopView(false);
                    this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
                    this.topView.setTranslationY(r0.getLayoutParams().height);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebViewMenu() {
        createBotWebViewMenuContainer();
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openWebViewMenu$25();
            }
        };
        if (SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, this.dialog_id)) {
            runnable.run();
        } else {
            AlertsCreator.createBotLaunchAlert(this.parentFragment, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialog_id)), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWebViewMenu$26(runnable);
                }
            }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWebViewMenu$27();
                }
            });
        }
    }

    private void resetRecordedState() {
        RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
        if (recordedAudioPlayerView != null) {
            recordedAudioPlayerView.setPlaying(false);
        }
        if (this.videoToSendMessageObject != null) {
            CameraController.getInstance().cancelOnInitRunnable(this.onFinishInitCameraRunnable);
            this.delegate.needStartRecordVideo(2, true, 0, this.voiceOnce ? Integer.MAX_VALUE : 0, this.effectId, 0L);
            SendButton sendButton = this.sendButton;
            this.effectId = 0L;
            sendButton.setEffect(0L);
        } else {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject != null && playingMessageObject == this.audioToSendMessageObject) {
                MediaController.getInstance().cleanupPlayer(true, true);
            }
        }
        if (this.audioToSendPath != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("delete file " + this.audioToSendPath);
            }
            new File(this.audioToSendPath).delete();
        }
        MediaController.getInstance().cleanRecording(true);
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        long j = this.dialog_id;
        ChatActivity chatActivity = this.parentFragment;
        mediaDataController.pushDraftVoiceMessage(j, (chatActivity == null || !chatActivity.isTopic) ? 0L : chatActivity.getTopicId(), null);
        MediaController.getInstance().stopRecording(0, false, 0, false, 0L);
        this.millisecondsRecorded = 0L;
        hideRecordedAudioPanel(false);
        checkSendButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resizeForTopView(boolean z) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textFieldContainer.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.dp(2.0f) + (z ? this.topView.getLayoutParams().height : 0);
        this.textFieldContainer.setLayoutParams(layoutParams);
        setMinimumHeight(AndroidUtilities.dp(51.0f) + (z ? this.topView.getLayoutParams().height : 0));
        if (this.stickersExpanded) {
            if (this.searchingType == 0) {
                setStickersExpanded(false, true, false);
            } else {
                checkStickresExpandHeight();
            }
        }
    }

    private void saveBusinessLink() {
        if (isEditingBusinessLink()) {
            if (this.currentLimit - this.codePointCount >= 0) {
                BusinessLinkPresetMessage businessLinkPresetMessageCalculateBusinessLinkPresetMessage = calculateBusinessLinkPresetMessage();
                this.lastSavedBusinessLinkMessage = businessLinkPresetMessageCalculateBusinessLinkPresetMessage;
                BusinessLinksController.getInstance(this.currentAccount).editLinkMessage(this.editingBusinessLink.link, businessLinkPresetMessageCalculateBusinessLinkPresetMessage.text, businessLinkPresetMessageCalculateBusinessLinkPresetMessage.entities, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveBusinessLink$53();
                    }
                });
            } else {
                NumberTextView numberTextView = this.captionLimitView;
                if (numberTextView != null) {
                    AndroidUtilities.shakeViewSpring(numberTextView, 3.5f);
                    try {
                        this.captionLimitView.performHapticFeedback(3, 2);
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendMessage() {
        if (!isInScheduleMode()) {
            return sendMessageInternal(true, 0, 0L, true);
        }
        AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.49
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i) {
                boolean zSendMessageInternal = ChatActivityEnterView.this.sendMessageInternal(z, i, 0L, true);
                MessageSendPreview messageSendPreview = ChatActivityEnterView.this.messageSendPreview;
                if (messageSendPreview != null) {
                    messageSendPreview.dismiss(!zSendMessageInternal);
                    ChatActivityEnterView.this.messageSendPreview = null;
                }
            }
        }, this.resourcesProvider);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBirthdayHintText() {
        HintView2 hintView2 = this.birthdayHint;
        if (hintView2 == null) {
            return;
        }
        hintView2.setText(Emoji.replaceWithRestrictedEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.UserBirthdayHint, UserObject.getFirstName(this.parentFragment.getCurrentUser()))), this.birthdayHint.getTextPaint().getFontMetricsInt(), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setBirthdayHintText();
            }
        }));
        HintView2 hintView22 = this.birthdayHint;
        hintView22.setMaxWidthPx(HintView2.cutInFancyHalf(hintView22.getText(), this.birthdayHint.getTextPaint()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEmojiButtonImage(boolean z, boolean z2) {
        ChatActivityEnterViewAnimatedIconView.State state;
        EditTextCaption editTextCaption;
        ChatActivityEnterViewAnimatedIconView.State state2;
        FrameLayout frameLayout;
        if (this.emojiButton == null) {
            return;
        }
        if (this.recordInterfaceState == 1 || ((frameLayout = this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0)) {
            this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
            this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
            updateEmojiButtonParams();
            z2 = false;
        }
        if (!z || this.currentPopupContentType != 0) {
            EmojiView emojiView = this.emojiView;
            int i = emojiView == null ? MessagesController.getGlobalEmojiSettings().getInt("selected_page", 0) : emojiView.getCurrentPage();
            state = (i == 0 || !((this.allowStickers || this.allowGifs) && ((editTextCaption = this.messageEditText) == null || TextUtils.isEmpty(editTextCaption.getText())))) ? ChatActivityEnterViewAnimatedIconView.State.SMILE : i == 1 ? ChatActivityEnterViewAnimatedIconView.State.STICKER : ChatActivityEnterViewAnimatedIconView.State.GIF;
        } else if (!this.sendPlainEnabled) {
            return;
        } else {
            state = ChatActivityEnterViewAnimatedIconView.State.KEYBOARD;
        }
        if (!this.sendPlainEnabled && state == ChatActivityEnterViewAnimatedIconView.State.SMILE) {
            state = ChatActivityEnterViewAnimatedIconView.State.GIF;
        } else if (!this.stickersEnabled && state != (state2 = ChatActivityEnterViewAnimatedIconView.State.SMILE)) {
            state = state2;
        }
        this.emojiButton.setState(state, z2);
        onEmojiIconChanged(state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecordVideoButtonVisible(boolean z, boolean z2) {
        if (this.audioVideoSendButton == null) {
            return;
        }
        this.isInVideoMode = z;
        if (z2) {
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z3 = false;
            if (DialogObject.isChatDialog(this.dialog_id)) {
                TLRPC.Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                if (ChatObject.isChannel(chat) && !chat.megagroup) {
                    z3 = true;
                }
            }
            globalMainSettings.edit().putBoolean(z3 ? "currentModeVideoChannel" : "currentModeVideo", z).apply();
        }
        this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, z2);
        this.audioVideoSendButton.setContentDescription(LocaleController.getString(isInVideoMode() ? R.string.AccDescrVideoMessage : R.string.AccDescrVoiceMessage));
        this.audioVideoButtonContainer.setContentDescription(LocaleController.getString(isInVideoMode() ? R.string.AccDescrVideoMessage : R.string.AccDescrVoiceMessage));
        this.audioVideoSendButton.sendAccessibilityEvent(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSearchingTypeInternal(int i, boolean z) {
        final boolean z2 = i != 0;
        if (z2 != (this.searchingType != 0)) {
            ValueAnimator valueAnimator = this.searchAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.searchAnimator.cancel();
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z) {
                float f2 = this.searchToOpenProgress;
                if (z2) {
                    f = 1.0f;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
                this.searchAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda17
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setSearchingTypeInternal$79(valueAnimator2);
                    }
                });
                this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.76
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.searchToOpenProgress = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        if (ChatActivityEnterView.this.emojiView != null) {
                            ChatActivityEnterView.this.emojiView.searchProgressChanged();
                        }
                    }
                });
                this.searchAnimator.setDuration(220L);
                this.searchAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.searchAnimator.start();
            } else {
                if (z2) {
                    f = 1.0f;
                }
                this.searchToOpenProgress = f;
                EmojiView emojiView = this.emojiView;
                if (emojiView != null) {
                    emojiView.searchProgressChanged();
                }
            }
        }
        this.searchingType = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSlowModeButtonVisible(boolean z) {
        int iDp;
        this.slowModeButton.setVisibility(z ? 0 : 8);
        if (z) {
            iDp = AndroidUtilities.dp(this.slowModeButton.isPremiumMode ? 26.0f : 16.0f);
        } else {
            iDp = 0;
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || editTextCaption.getPaddingRight() == iDp) {
            return;
        }
        this.messageEditText.setPadding(0, AndroidUtilities.dp(11.0f), iDp, AndroidUtilities.dp(12.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCaptionLimitBulletin() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || !ChatObject.isChannelAndNotMegaGroup(chatActivity.getCurrentChat())) {
            return;
        }
        BulletinFactory.of(this.parentFragment).createCaptionLimitBulletin(MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showCaptionLimitBulletin$52();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopup(int i, int i2) {
        showPopup(i, i2, true);
    }

    private void showPopup(final int i, int i2, boolean z) {
        int measuredHeight;
        int measuredHeight2;
        if (i == 2) {
            return;
        }
        View view = null;
        if (i == 1) {
            if (i2 == 0) {
                if (this.parentActivity == null && this.emojiView == null) {
                    return;
                } else {
                    createEmojiView();
                }
            }
            if (i2 == 0) {
                attachEmojiView();
                if (this.emojiViewVisible) {
                    this.emojiView.getVisibility();
                }
                this.emojiView.setVisibility(0);
                this.emojiViewVisible = true;
                BotKeyboardView botKeyboardView = this.botKeyboardView;
                if (botKeyboardView == null || botKeyboardView.getVisibility() == 8) {
                    measuredHeight = 0;
                } else {
                    this.botKeyboardView.setVisibility(8);
                    this.botKeyboardViewVisible = false;
                    measuredHeight = this.botKeyboardView.getMeasuredHeight();
                }
                this.emojiView.setShowing(true);
                view = this.emojiView;
                this.animatingContentType = 0;
            } else if (i2 == 1) {
                if (this.botKeyboardViewVisible) {
                    this.botKeyboardView.getVisibility();
                }
                this.botKeyboardViewVisible = true;
                EmojiView emojiView = this.emojiView;
                if (emojiView == null || emojiView.getVisibility() == 8) {
                    measuredHeight2 = 0;
                } else {
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView.setVisibility(8);
                    this.emojiView.setShowing(false);
                    this.emojiViewVisible = false;
                    measuredHeight2 = this.emojiView.getMeasuredHeight();
                }
                this.botKeyboardView.setVisibility(0);
                View view2 = this.botKeyboardView;
                this.animatingContentType = 1;
                MessagesController.getMainSettings(this.currentAccount).edit().remove("closed_botkeyboard_" + getTopicKeyString()).apply();
                measuredHeight = measuredHeight2;
                view = view2;
            } else {
                measuredHeight = 0;
            }
            this.currentPopupContentType = i2;
            if (this.keyboardHeight <= 0) {
                this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.dp(200.0f));
            }
            if (this.keyboardHeightLand <= 0) {
                this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.dp(200.0f));
            }
            android.graphics.Point point = AndroidUtilities.displaySize;
            int iMin = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && chatActivity.getParentLayout() != null) {
                iMin -= this.parentFragment.getParentLayout().getBottomTabsHeight(false);
            }
            if (i2 == 1) {
                iMin = Math.min(this.botKeyboardView.getKeyboardHeight(), iMin);
            }
            BotKeyboardView botKeyboardView2 = this.botKeyboardView;
            if (botKeyboardView2 != null) {
                botKeyboardView2.setPanelHeight(iMin);
            }
            if (view != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                layoutParams.height = iMin;
                view.setLayoutParams(layoutParams);
            }
            if (!AndroidUtilities.isInMultiwindow) {
                AndroidUtilities.hideKeyboard(this.messageEditText);
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
            if (sizeNotifierFrameLayout != null) {
                this.emojiPadding = iMin;
                sizeNotifierFrameLayout.requestLayout();
                setEmojiButtonImage(true, true);
                updateBotButton(true);
                onWindowSizeChanged();
                if (this.smoothKeyboard && !this.keyboardVisible && iMin != measuredHeight && z) {
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda20
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$showPopup$77();
                        }
                    };
                    if (this.overrideKeyboardAnimation) {
                        this.animationEndRunnable = runnable;
                    } else {
                        this.panelAnimation = new AnimatorSet();
                        float f = iMin - measuredHeight;
                        view.setTranslationY(f);
                        this.panelAnimation.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, f, BitmapDescriptorFactory.HUE_RED));
                        this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        this.panelAnimation.setDuration(250L);
                        this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.73
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ChatActivityEnterView.this.panelAnimation = null;
                                ChatActivityEnterView.this.notificationsLocker.unlock();
                                runnable.run();
                            }
                        });
                        AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                        this.notificationsLocker.lock();
                    }
                    requestLayout();
                }
            }
        } else {
            if (this.emojiButton != null) {
                setEmojiButtonImage(false, true);
            }
            this.currentPopupContentType = -1;
            EmojiView emojiView2 = this.emojiView;
            if (emojiView2 != null) {
                if (i == 2 && !AndroidUtilities.usingHardwareInput && !AndroidUtilities.isInMultiwindow) {
                    this.removeEmojiViewAfterAnimation = false;
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                    if (chatActivityEnterViewDelegate != null) {
                        chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                    }
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView = null;
                } else if (!this.smoothKeyboard || this.keyboardVisible || this.stickersExpanded) {
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
                    if (chatActivityEnterViewDelegate2 != null) {
                        chatActivityEnterViewDelegate2.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                    }
                    this.emojiPadding = 0;
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView.setVisibility(8);
                    this.emojiView.setShowing(false);
                } else {
                    this.emojiViewVisible = true;
                    this.animatingContentType = 0;
                    emojiView2.setShowing(false);
                    final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda21
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$showPopup$78(i);
                        }
                    };
                    if (this.overrideKeyboardAnimation) {
                        this.animationEndRunnable = runnable2;
                    } else {
                        AnimatorSet animatorSet = new AnimatorSet();
                        this.panelAnimation = animatorSet;
                        animatorSet.playTogether(ObjectAnimator.ofFloat(this.emojiView, (Property<EmojiView, Float>) View.TRANSLATION_Y, r9.getMeasuredHeight()));
                        this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        this.panelAnimation.setDuration(250L);
                        this.notificationsLocker.lock();
                        this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.74
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                runnable2.run();
                                ChatActivityEnterView.this.notificationsLocker.unlock();
                            }
                        });
                    }
                    AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                    requestLayout();
                }
                this.emojiViewVisible = false;
            }
            BotKeyboardView botKeyboardView3 = this.botKeyboardView;
            if (botKeyboardView3 != null && botKeyboardView3.getVisibility() == 0) {
                if (i != 2 || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    if (this.smoothKeyboard && !this.keyboardVisible) {
                        if (this.botKeyboardViewVisible) {
                            this.animatingContentType = 1;
                        }
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        this.panelAnimation = animatorSet2;
                        animatorSet2.playTogether(ObjectAnimator.ofFloat(this.botKeyboardView, (Property<BotKeyboardView, Float>) View.TRANSLATION_Y, r7.getMeasuredHeight()));
                        this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        this.panelAnimation.setDuration(250L);
                        this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.75
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (i == 0) {
                                    ChatActivityEnterView.this.emojiPadding = 0;
                                }
                                ChatActivityEnterView.this.panelAnimation = null;
                                ChatActivityEnterView.this.botKeyboardView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                ChatActivityEnterView.this.botKeyboardView.setVisibility(8);
                                ChatActivityEnterView.this.notificationsLocker.unlock();
                                if (ChatActivityEnterView.this.delegate != null) {
                                    ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                                }
                                ChatActivityEnterView.this.requestLayout();
                            }
                        });
                        this.notificationsLocker.lock();
                        AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                        requestLayout();
                    } else if (!this.waitingForKeyboardOpen) {
                        this.botKeyboardView.setVisibility(8);
                    }
                }
                this.botKeyboardViewVisible = false;
            }
            if (i2 == 1 && this.botButtonsMessageObject != null) {
                MessagesController.getMainSettings(this.currentAccount).edit().putInt("closed_botkeyboard_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).apply();
            }
            updateBotButton(true);
        }
        if (this.stickersTabOpen || this.emojiTabOpen) {
            checkSendButton(true);
        }
        if (this.stickersExpanded && i != 1) {
            setStickersExpanded(false, false, false);
        }
        updateFieldHint(false);
        checkBotMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRestrictedHint() {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if ((chatActivityEnterViewDelegate == null || !chatActivityEnterViewDelegate.checkCanRemoveRestrictionsByBoosts()) && DialogObject.isChatDialog(this.dialog_id)) {
            BulletinFactory.of(this.parentFragment).createSimpleBulletin(R.raw.passcode_lock_close, LocaleController.formatString("SendPlainTextRestrictionHint", R.string.SendPlainTextRestrictionHint, ChatObject.getAllowedSendString(this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id)))), 3).show();
        }
    }

    private void showTopView(boolean z, boolean z2, boolean z3) {
        if (this.topView == null || this.topViewShowed || getVisibility() != 0) {
            FrameLayout frameLayout = this.recordedAudioPanel;
            if (frameLayout == null || frameLayout.getVisibility() != 0) {
                if ((!this.forceShowSendButton && this.replyingQuote == null && this.replyingMessageObject == null) || z2) {
                    openKeyboard();
                    return;
                }
                return;
            }
            return;
        }
        FrameLayout frameLayout2 = this.recordedAudioPanel;
        boolean z4 = (frameLayout2 == null || frameLayout2.getVisibility() != 0) && ((!this.forceShowSendButton && this.replyingQuote == null) || z2) && (this.botReplyMarkup == null || this.editingMessageObject != null);
        if (!z3 && z && z4 && !this.keyboardVisible && !isPopupShowing()) {
            openKeyboard();
            Runnable runnable = this.showTopViewRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showTopView$43();
                }
            };
            this.showTopViewRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 200L);
            return;
        }
        this.needShowTopView = true;
        this.topViewShowed = true;
        if (this.allowShowTopView) {
            this.topView.setVisibility(0);
            this.topLineView.setVisibility(0);
            ValueAnimator valueAnimator = this.currentTopViewAnimation;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.currentTopViewAnimation = null;
            }
            resizeForTopView(true);
            if (z) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.topViewEnterProgress, 1.0f);
                this.currentTopViewAnimation = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(this.topViewUpdateListener);
                this.currentTopViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.45
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 != null && valueAnimator2.equals(animator)) {
                            ChatActivityEnterView.this.currentTopViewAnimation = null;
                        }
                        ChatActivityEnterView.this.notificationsLocker.unlock();
                        if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.mentionContainer == null) {
                            return;
                        }
                        ChatActivityEnterView.this.parentFragment.mentionContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                });
                this.currentTopViewAnimation.setDuration(270L);
                this.currentTopViewAnimation.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                this.currentTopViewAnimation.start();
                this.notificationsLocker.lock();
            } else {
                this.topViewEnterProgress = 1.0f;
                this.topView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.topLineView.setAlpha(1.0f);
            }
            if (z4) {
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    editTextCaption.requestFocus();
                }
                openKeyboard();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLockTransition() {
        AnimatorSet animatorSet = new AnimatorSet();
        try {
            performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "lockAnimatedTranslation", this.startTranslation);
        objectAnimatorOfFloat.setStartDelay(100L);
        objectAnimatorOfFloat.setDuration(350L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "snapAnimationProgress", 1.0f);
        objectAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        objectAnimatorOfFloat2.setDuration(250L);
        SharedConfig.removeLockRecordAudioVideoHint();
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat, ObjectAnimator.ofFloat(this, "slideToCancelProgress", 1.0f).setDuration(200L), ObjectAnimator.ofFloat(this.slideText, "cancelToProgress", 1.0f));
        animatorSet.start();
    }

    private boolean supportsSendingNewEntities() {
        ChatActivity chatActivity = this.parentFragment;
        TLRPC.EncryptedChat currentEncryptedChat = chatActivity != null ? chatActivity.getCurrentEncryptedChat() : null;
        return currentEncryptedChat == null || AndroidUtilities.getPeerLayerVersion(currentEncryptedChat.layer) >= 101;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAttachLayoutParams() {
        LinearLayout linearLayout = this.attachLayout;
        if (linearLayout != null) {
            linearLayout.setTranslationX(this.attachLayoutPaddingTranslationX + this.attachLayoutTranslationX);
            this.attachLayout.setAlpha(this.attachLayoutAlpha * this.attachLayoutPaddingAlpha);
            LinearLayout linearLayout2 = this.attachLayout;
            linearLayout2.setVisibility(linearLayout2.getAlpha() > BitmapDescriptorFactory.HUE_RED ? 0 : 8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0068 A[PHI: r0
      0x0068: PHI (r0v20 android.widget.ImageView) = (r0v4 android.widget.ImageView), (r0v19 android.widget.ImageView), (r0v48 android.widget.ImageView) binds: [B:55:0x00b2, B:46:0x0066, B:32:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateBotButton(boolean z) {
        ImageView imageView;
        int i;
        ImageView imageView2;
        ImageView imageView3;
        if (this.isChat) {
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && !chatActivity.openAnimationEnded) {
                z = false;
            }
            boolean zHasBotWebView = hasBotWebView();
            boolean z2 = this.botMenuButtonType != BotMenuButtonType.NO_BUTTON && this.dialog_id > 0;
            ImageView imageView4 = this.botButton;
            boolean z3 = imageView4 != null && imageView4.getVisibility() == 0;
            if (!zHasBotWebView && !this.hasBotCommands && !this.hasQuickReplies && this.botReplyMarkup == null) {
                imageView = this.botButton;
                if (imageView != null) {
                }
            } else if (this.botReplyMarkup != null) {
                if (isPopupShowing() && this.currentPopupContentType == 1 && this.botReplyMarkup.is_persistent) {
                    ImageView imageView5 = this.botButton;
                    if (imageView5 != null && imageView5.getVisibility() != 8) {
                        imageView = this.botButton;
                        imageView.setVisibility(8);
                    }
                } else {
                    createBotButton();
                    if (this.botButton.getVisibility() != 0) {
                        this.botButton.setVisibility(0);
                    }
                    this.botButtonDrawable.setIcon(R.drawable.input_bot2, true);
                    this.botButton.setContentDescription(LocaleController.getString("AccDescrBotKeyboard", R.string.AccDescrBotKeyboard));
                }
            } else if (z2) {
                imageView = this.botButton;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            } else {
                createBotButton();
                this.botButtonDrawable.setIcon(R.drawable.input_bot1, true);
                this.botButton.setContentDescription(LocaleController.getString("AccDescrBotCommands", R.string.AccDescrBotCommands));
                this.botButton.setVisibility(0);
            }
            if (z2) {
                createBotCommandsMenuButton();
            }
            ImageView imageView6 = this.botButton;
            boolean z4 = (imageView6 != null && imageView6.getVisibility() == 0) != z3;
            BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
            if (botCommandsMenuView != null) {
                boolean z5 = botCommandsMenuView.isWebView;
                botCommandsMenuView.setWebView(this.botMenuButtonType == BotMenuButtonType.WEB_VIEW);
                boolean menuText = this.botCommandsMenuButton.setMenuText(this.botMenuButtonType == BotMenuButtonType.COMMANDS ? LocaleController.getString(R.string.BotsMenuTitle) : this.botMenuWebViewTitle);
                AndroidUtilities.updateViewVisibilityAnimated(this.botCommandsMenuButton, z2, 0.5f, z);
                z4 = z4 || menuText || z5 != this.botCommandsMenuButton.isWebView;
            }
            if (z4 && z) {
                beginDelayedTransition();
                ImageView imageView7 = this.botButton;
                boolean z6 = imageView7 != null && imageView7.getVisibility() == 0;
                if (z6 != z3 && (imageView3 = this.botButton) != null) {
                    imageView3.setVisibility(0);
                    if (z6) {
                        this.botButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.botButton.setScaleX(0.1f);
                        this.botButton.setScaleY(0.1f);
                    } else if (!z6) {
                        this.botButton.setAlpha(1.0f);
                        this.botButton.setScaleX(1.0f);
                        this.botButton.setScaleY(1.0f);
                    }
                    AndroidUtilities.updateViewVisibilityAnimated(this.botButton, z6, 0.1f, true);
                }
            }
            ImageView imageView8 = this.botButton;
            if (imageView8 == null || imageView8.getVisibility() != 0) {
                i = this.lastAttachVisible;
            } else {
                EditTextCaption editTextCaption = this.messageEditText;
                if (TextUtils.isEmpty(editTextCaption == null ? "" : AndroidUtilities.getTrimmedString(editTextCaption.getTextToUse()))) {
                    i = 2;
                }
            }
            updateFieldRight(i);
            LinearLayout linearLayout = this.attachLayout;
            ImageView imageView9 = this.botButton;
            linearLayout.setPivotX(AndroidUtilities.dp(((imageView9 == null || imageView9.getVisibility() == 8) && ((imageView2 = this.notifyButton) == null || imageView2.getVisibility() == 8)) ? 48.0f : 96.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBotCommandsMenuContainerTopPadding() {
        int measuredHeight;
        float fMax;
        int iMax;
        LinearLayoutManager linearLayoutManager;
        int iFindFirstVisibleItemPosition;
        View viewFindViewByPosition;
        BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
        if (botCommandsMenuContainer == null) {
            return;
        }
        int childCount = botCommandsMenuContainer.listView.getChildCount();
        int measuredHeight2 = 0;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.botCommandsMenuContainer.listView.getChildAt(i);
            if (i < 4) {
                measuredHeight2 += childAt.getMeasuredHeight();
            }
        }
        if (measuredHeight2 > 0) {
            iMax = Math.max(0, ((this.sizeNotifierLayout.getMeasuredHeight() - measuredHeight2) - AndroidUtilities.dp(8.0f)) - AndroidUtilities.dp(childCount > 4 ? 12.0f : BitmapDescriptorFactory.HUE_RED));
        } else {
            if (this.botCommandsAdapter.getItemCount() > 4) {
                measuredHeight = this.sizeNotifierLayout.getMeasuredHeight();
                fMax = 162.8f;
            } else {
                measuredHeight = this.sizeNotifierLayout.getMeasuredHeight();
                fMax = (Math.max(1, Math.min(4, this.botCommandsAdapter.getItemCount())) * 36) + 8;
            }
            iMax = Math.max(0, measuredHeight - AndroidUtilities.dp(fMax));
        }
        if (this.botCommandsMenuContainer.listView.getPaddingTop() != iMax) {
            this.botCommandsMenuContainer.listView.setTopGlowOffset(iMax);
            if (this.botCommandLastPosition == -1 && this.botCommandsMenuContainer.getVisibility() == 0 && this.botCommandsMenuContainer.listView.getLayoutManager() != null && (iFindFirstVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) this.botCommandsMenuContainer.listView.getLayoutManager()).findFirstVisibleItemPosition()) >= 0 && (viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition)) != null) {
                this.botCommandLastPosition = iFindFirstVisibleItemPosition;
                this.botCommandLastTop = viewFindViewByPosition.getTop() - this.botCommandsMenuContainer.listView.getPaddingTop();
            }
            this.botCommandsMenuContainer.listView.setPadding(0, iMax, 0, AndroidUtilities.dp(8.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmojiButtonParams() {
        this.emojiButton.setScaleX(this.emojiButtonPaddingScale * this.emojiButtonScale);
        this.emojiButton.setScaleY(this.emojiButtonPaddingScale * this.emojiButtonScale);
        this.emojiButton.setAlpha(this.emojiButtonPaddingAlpha * this.emojiButtonAlpha);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateFieldRight(int i) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        LinearLayout linearLayout;
        float f;
        this.lastAttachVisible = i;
        if (this.messageEditText != null) {
            MessageObject messageObject = this.editingMessageObject;
            if (messageObject == null || messageObject.needResendWhenEdit()) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.messageEditText.getLayoutParams();
                int i2 = layoutParams.rightMargin;
                if (i == 1 || i == 2) {
                    ImageView imageView4 = this.botButton;
                    if (imageView4 == null || imageView4.getVisibility() != 0 || (imageView3 = this.scheduledButton) == null || imageView3.getVisibility() != 0 || (linearLayout = this.attachLayout) == null || linearLayout.getVisibility() != 0) {
                        ImageView imageView5 = this.botButton;
                        f = ((imageView5 == null || imageView5.getVisibility() != 0) && ((imageView = this.notifyButton) == null || imageView.getVisibility() != 0) && ((imageView2 = this.scheduledButton) == null || imageView2.getTag() == null)) ? 50.0f : 98.0f;
                    } else {
                        f = 146.0f;
                    }
                } else {
                    ImageView imageView6 = this.scheduledButton;
                    if (imageView6 == null || imageView6.getTag() == null) {
                        f = 2.0f;
                    }
                }
                layoutParams.rightMargin = AndroidUtilities.dp(f);
                layoutParams.rightMargin = Math.max(layoutParams.rightMargin, Math.max(0, this.sendButton.width() - AndroidUtilities.dp(48.0f)));
                SendButton sendButton = this.doneButton;
                if (sendButton != null && sendButton.getVisibility() == 0) {
                    layoutParams.rightMargin = Math.max(layoutParams.rightMargin, Math.max(0, this.doneButton.width() - AndroidUtilities.dp(48.0f)));
                }
                if (i2 != layoutParams.rightMargin) {
                    this.messageEditText.setLayoutParams(layoutParams);
                }
                FrameLayout frameLayout = this.recordedAudioPanel;
                if (frameLayout != null) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                    layoutParams2.rightMargin = this.editingMessageObject == null ? Math.max(0, this.sendButton.width() - AndroidUtilities.dp(48.0f)) : 0;
                    this.recordedAudioPanel.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMessageTextParams() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setTranslationX(this.messageTextPaddingTranslationX + this.messageTextTranslationX);
        }
    }

    private void updateRecordedDeleteIconColors() {
        int themedColor = getThemedColor(Theme.key_chat_recordedVoiceDot);
        int themedColor2 = getThemedColor(Theme.key_chat_messagePanelBackground);
        int themedColor3 = getThemedColor(Theme.key_chat_messagePanelVoiceDelete);
        RLottieImageView rLottieImageView = this.recordDeleteImageView;
        if (rLottieImageView != null) {
            rLottieImageView.setLayerColor("Cup Red.**", themedColor);
            this.recordDeleteImageView.setLayerColor("Box Red.**", themedColor);
            this.recordDeleteImageView.setLayerColor("Cup Grey.**", themedColor3);
            this.recordDeleteImageView.setLayerColor("Box Grey.**", themedColor3);
            this.recordDeleteImageView.setLayerColor("Line 1.**", themedColor2);
            this.recordDeleteImageView.setLayerColor("Line 2.**", themedColor2);
            this.recordDeleteImageView.setLayerColor("Line 3.**", themedColor2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSlowModeText() {
        int i;
        boolean zIsUploadingMessageIdDialog;
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        AndroidUtilities.cancelRunOnUIThread(this.updateSlowModeRunnable);
        this.updateSlowModeRunnable = null;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull == null || chatFull.slowmode_seconds == 0 || chatFull.slowmode_next_send_date > currentTime || !((zIsUploadingMessageIdDialog = SendMessagesHelper.getInstance(this.currentAccount).isUploadingMessageIdDialog(this.dialog_id)) || SendMessagesHelper.getInstance(this.currentAccount).isSendingMessageIdDialog(this.dialog_id))) {
            int i2 = this.slowModeTimer;
            if (i2 >= 2147483646) {
                if (this.info != null) {
                    this.accountInstance.getMessagesController().loadFullChat(this.info.id, 0, true);
                }
                i = 0;
            } else {
                i = i2 - currentTime;
            }
        } else if (ChatObject.hasAdminRights(this.accountInstance.getMessagesController().getChat(Long.valueOf(this.info.id))) || ChatObject.isIgnoredChatRestrictionsForBoosters(this.info)) {
            i = 0;
        } else {
            i = this.info.slowmode_seconds;
            this.slowModeTimer = zIsUploadingMessageIdDialog ? Integer.MAX_VALUE : 2147483646;
        }
        if (this.slowModeTimer == 0 || i <= 0) {
            this.slowModeTimer = 0;
        } else {
            this.slowModeButton.setText(AndroidUtilities.formatDurationNoHours(Math.max(1, i), false));
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                SlowModeBtn slowModeBtn = this.slowModeButton;
                chatActivityEnterViewDelegate.onUpdateSlowModeButton(slowModeBtn, false, slowModeBtn.getText());
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateSlowModeText();
                }
            };
            this.updateSlowModeRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 100L);
        }
        if (isInScheduleMode()) {
            return;
        }
        checkSendButton(true);
    }

    public void addEmojiToRecent(String str) {
        createEmojiView();
        this.emojiView.addEmojiToRecent(str);
    }

    public void addRecentGif(TLRPC.Document document) {
        MediaDataController.getInstance(this.currentAccount).addRecentGif(document, (int) (System.currentTimeMillis() / 1000), true);
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.addRecentGif(document);
        }
    }

    public void addStickerToRecent(TLRPC.Document document) {
        createEmojiView();
        this.emojiView.addRecentSticker(document);
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public void addTextChangedListener(TextWatcher textWatcher) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.addTextChangedListener(textWatcher);
            return;
        }
        if (this.messageEditTextWatchers == null) {
            this.messageEditTextWatchers = new ArrayList();
        }
        this.messageEditTextWatchers.add(textWatcher);
    }

    public void addTopView(View view, View view2, int i) {
        if (view == null) {
            return;
        }
        this.topLineView = view2;
        view2.setVisibility(8);
        this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(this.topLineView, LayoutHelper.createFrame(-1, 1.0f, 51, BitmapDescriptorFactory.HUE_RED, i + 1, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.topView = view;
        view.setVisibility(8);
        this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
        float f = i;
        this.topView.setTranslationY(f);
        addView(this.topView, 0, LayoutHelper.createFrame(-1, f, 51, BitmapDescriptorFactory.HUE_RED, 2.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.needShowTopView = false;
    }

    public ValueAnimator animateSendButton(boolean z) {
        final float alpha = getSendButtonInternal().getAlpha();
        final float f = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        final float scaleX = getSendButtonInternal().getScaleX();
        final float f2 = z ? 1.0f : 0.1f;
        final float scaleY = getSendButtonInternal().getScaleY();
        final float f3 = z ? 1.0f : 0.1f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda29
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateSendButton$63(alpha, f, scaleX, f2, scaleY, f3, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    public boolean botCommandsMenuIsShowing() {
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        return botCommandsMenuView != null && botCommandsMenuView.isOpened();
    }

    public boolean businessLinkHasChanges() {
        BusinessLinkPresetMessage businessLinkPresetMessageCalculateBusinessLinkPresetMessage = calculateBusinessLinkPresetMessage();
        return (TextUtils.equals(businessLinkPresetMessageCalculateBusinessLinkPresetMessage.text, this.lastSavedBusinessLinkMessage.text) && MediaDataController.entitiesEqual((ArrayList<TLRPC.MessageEntity>) this.lastSavedBusinessLinkMessage.entities, (ArrayList<TLRPC.MessageEntity>) businessLinkPresetMessageCalculateBusinessLinkPresetMessage.entities)) ? false : true;
    }

    @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
    public boolean canSchedule() {
        ChatActivity chatActivity = this.parentFragment;
        return chatActivity != null && chatActivity.canScheduleMessage();
    }

    public boolean canShowMessageTransition() {
        MessageSendPreview messageSendPreview;
        boolean z = this.moveToSendStateRunnable != null && ((messageSendPreview = this.messageSendPreview) == null || !messageSendPreview.isShowing()) && System.currentTimeMillis() - this.sentFromPreview > 300;
        this.sentFromPreview = -1L;
        return z;
    }

    public void cancelRecordingAudioVideo() {
        if (this.hasRecordVideo && isInVideoMode()) {
            CameraController.getInstance().cancelOnInitRunnable(this.onFinishInitCameraRunnable);
            this.delegate.needStartRecordVideo(5, true, 0, this.voiceOnce ? Integer.MAX_VALUE : 0, this.effectId, 0L);
            SendButton sendButton = this.sendButton;
            this.effectId = 0L;
            sendButton.setEffect(0L);
        } else {
            this.delegate.needStartRecordAudio(0);
            MediaController.getInstance().stopRecording(0, false, 0, false, 0L);
        }
        this.recordingAudioVideo = false;
        updateRecordInterface(2, true);
    }

    public void checkAnimation() {
    }

    public void checkChannelRights() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        updateRecordButton(chatActivity.getCurrentChat(), this.parentFragment.getCurrentUserInfo());
    }

    public void checkReactionsButton(boolean z) {
        AndroidUtilities.updateViewVisibilityAnimated(this.reactionsButton, z, 0.1f, true);
    }

    public void checkRoundVideo() {
        boolean z;
        boolean z2;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        if (this.hasRecordVideo) {
            return;
        }
        if (this.attachLayout == null) {
            this.hasRecordVideo = false;
            setRecordVideoButtonVisible(false, false);
            return;
        }
        boolean z3 = true;
        this.hasRecordVideo = true;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            TLRPC.Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
            z = ChatObject.isChannel(chat) && !chat.megagroup;
            if (z && !chat.creator && ((tL_chatAdminRights = chat.admin_rights) == null || !tL_chatAdminRights.post_messages)) {
                this.hasRecordVideo = false;
            }
            this.sendRoundEnabled = ChatObject.canSendRoundVideo(chat);
            this.sendVoiceEnabled = ChatObject.canSendVoice(chat);
        } else {
            z = false;
        }
        if (!SharedConfig.inappCamera) {
            this.hasRecordVideo = false;
        }
        if (this.hasRecordVideo) {
            if (SharedConfig.hasCameraCache) {
                CameraController.getInstance().initCamera(null);
            }
            z2 = MessagesController.getGlobalMainSettings().getBoolean(z ? "currentModeVideoChannel" : "currentModeVideo", z);
        } else {
            z2 = false;
        }
        if (!this.sendRoundEnabled && z2) {
            z2 = false;
        }
        if (this.sendVoiceEnabled || z2) {
            z3 = z2;
        } else if (!this.hasRecordVideo) {
            z3 = false;
        }
        setRecordVideoButtonVisible(z3, false);
    }

    public void checkStickresExpandHeight() {
        if (this.emojiView == null) {
            return;
        }
        android.graphics.Point point = AndroidUtilities.displaySize;
        int i = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
        int currentActionBarHeight = (((this.originalViewHeight - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - ActionBar.getCurrentActionBarHeight()) - getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
        if (this.searchingType == 2) {
            currentActionBarHeight = Math.min(currentActionBarHeight, AndroidUtilities.dp(120.0f) + i);
        }
        int i2 = this.emojiView.getLayoutParams().height;
        if (i2 == currentActionBarHeight) {
            return;
        }
        Animator animator = this.stickersExpansionAnim;
        if (animator != null) {
            animator.cancel();
            this.stickersExpansionAnim = null;
        }
        this.stickersExpandedHeight = currentActionBarHeight;
        if (i2 > currentActionBarHeight) {
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkStickresExpandHeight$80();
                }
            };
            this.emojiView.setLayerType(2, null);
            if (this.overrideKeyboardAnimation) {
                this.animationEndRunnable = runnable;
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)));
            ((ObjectAnimator) animatorSet.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda37
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$checkStickresExpandHeight$81(valueAnimator);
                }
            });
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.78
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    ChatActivityEnterView.this.stickersExpansionAnim = null;
                    runnable.run();
                }
            });
            this.stickersExpansionAnim = animatorSet;
            animatorSet.start();
            return;
        }
        this.emojiView.getLayoutParams().height = this.stickersExpandedHeight;
        this.sizeNotifierLayout.requestLayout();
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            int selectionStart = editTextCaption.getSelectionStart();
            int selectionEnd = this.messageEditText.getSelectionEnd();
            EditTextCaption editTextCaption2 = this.messageEditText;
            editTextCaption2.setText(editTextCaption2.getText());
            this.messageEditText.setSelection(selectionStart, selectionEnd);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)));
        ((ObjectAnimator) animatorSet2.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda38
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$checkStickresExpandHeight$82(valueAnimator);
            }
        });
        animatorSet2.setDuration(300L);
        animatorSet2.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.79
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                ChatActivityEnterView.this.stickersExpansionAnim = null;
                ChatActivityEnterView.this.emojiView.setLayerType(0, null);
            }
        });
        this.stickersExpansionAnim = animatorSet2;
        this.emojiView.setLayerType(2, null);
        animatorSet2.start();
    }

    public boolean closeCreationLinkDialog() {
        EditTextCaption editTextCaption = this.messageEditText;
        return editTextCaption != null && editTextCaption.closeCreationLinkDialog();
    }

    public void closeKeyboard() {
        AndroidUtilities.hideKeyboard(this.messageEditText);
    }

    public void createSuggestionButton() {
        if (this.suggestButton != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        this.suggestButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.suggestButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        this.suggestButton.setImageResource(R.drawable.input_suggest_paid_24);
        if (Build.VERSION.SDK_INT >= 21) {
            this.suggestButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.attachLayout.addView(this.suggestButton, 0, LayoutHelper.createLinear(48, 48));
        this.suggestButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda57
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createSuggestionButton$11(view);
            }
        });
        this.suggestButton.setContentDescription(LocaleController.getString("AccDescrAttachButton", R.string.AccDescrAttachButton));
    }

    public boolean didPressedBotButton(TLRPC.KeyboardButton keyboardButton, MessageObject messageObject, MessageObject messageObject2) {
        return didPressedBotButton(keyboardButton, messageObject, messageObject2, null);
    }

    public boolean didPressedBotButton(final TLRPC.KeyboardButton keyboardButton, final MessageObject messageObject, final MessageObject messageObject2, Browser.Progress progress) {
        int i;
        if (keyboardButton == null || messageObject2 == null) {
            return false;
        }
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null && chatActivity.getChatMode() == 5) {
            return false;
        }
        if (keyboardButton instanceof TLRPC.TL_keyboardButtonCopy) {
            TLRPC.TL_keyboardButtonCopy tL_keyboardButtonCopy = (TLRPC.TL_keyboardButtonCopy) keyboardButton;
            AndroidUtilities.addToClipboard(tL_keyboardButtonCopy.copy_text);
            BulletinFactory.of(this.parentFragment).createCopyBulletin(LocaleController.formatString(R.string.ExactTextCopied, tL_keyboardButtonCopy.copy_text)).show(true);
        } else {
            if (keyboardButton instanceof TLRPC.TL_keyboardButton) {
                SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(keyboardButton.text, this.dialog_id, messageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false);
                ChatActivity chatActivity2 = this.parentFragment;
                sendMessageParamsOf.quick_reply_shortcut = chatActivity2 != null ? chatActivity2.quickReplyShortcut : null;
                sendMessageParamsOf.quick_reply_shortcut_id = chatActivity2 != null ? chatActivity2.getQuickReplyId() : 0;
                sendMessageParamsOf.effect_id = this.effectId;
                SendButton sendButton = this.sendButton;
                this.effectId = 0L;
                sendButton.setEffect(0L);
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
            } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrl) {
                if (Browser.urlMustNotHaveConfirmation(keyboardButton.url)) {
                    Browser.openUrl(this.parentActivity, Uri.parse(keyboardButton.url), true, true, progress);
                } else {
                    AlertsCreator.showOpenUrlAlert(this.parentFragment, keyboardButton.url, false, true, true, progress, this.resourcesProvider);
                }
            } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPhone) {
                this.parentFragment.shareMyContact(2, messageObject2);
            } else {
                if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPoll) {
                    this.parentFragment.openPollCreate((keyboardButton.flags & 1) != 0 ? Boolean.valueOf(keyboardButton.quiz) : null);
                    return false;
                }
                if ((keyboardButton instanceof TLRPC.TL_keyboardButtonWebView) || (keyboardButton instanceof TLRPC.TL_keyboardButtonSimpleWebView)) {
                    TLRPC.Message message = messageObject2.messageOwner;
                    long j = message.via_bot_id;
                    if (j == 0) {
                        j = message.from_id.user_id;
                    }
                    final long j2 = j;
                    final TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j2));
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.69
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ChatActivityEnterView.this.sizeNotifierLayout.measureKeyboardHeight() > AndroidUtilities.dp(20.0f) || ChatActivityEnterView.this.isPopupShowing()) {
                                ChatActivityEnterView.this.hidePopup(false);
                                AndroidUtilities.hideKeyboard(ChatActivityEnterView.this);
                                AndroidUtilities.runOnUIThread(this, 150L);
                                return;
                            }
                            if (ChatActivityEnterView.this.parentFragment == null) {
                                return;
                            }
                            int i2 = ChatActivityEnterView.this.currentAccount;
                            long j3 = messageObject2.messageOwner.dialog_id;
                            long j4 = j2;
                            TLRPC.KeyboardButton keyboardButton2 = keyboardButton;
                            String str = keyboardButton2.text;
                            String str2 = keyboardButton2.url;
                            boolean z = keyboardButton2 instanceof TLRPC.TL_keyboardButtonSimpleWebView;
                            MessageObject messageObject3 = messageObject;
                            WebViewRequestProps webViewRequestPropsOf = WebViewRequestProps.of(i2, j3, j4, str, str2, z ? 1 : 0, messageObject3 != null ? messageObject3.messageOwner.id : 0, ChatActivityEnterView.this.parentFragment == null ? 0L : ChatActivityEnterView.this.parentFragment.getSendMonoForumPeerId(), false, null, false, null, null, 0, false, false);
                            LaunchActivity launchActivity = LaunchActivity.instance;
                            if (launchActivity != null && launchActivity.getBottomSheetTabs() != null && LaunchActivity.instance.getBottomSheetTabs().tryReopenTab(webViewRequestPropsOf) != null) {
                                if (ChatActivityEnterView.this.botCommandsMenuButton != null) {
                                    ChatActivityEnterView.this.botCommandsMenuButton.setOpened(false);
                                    return;
                                }
                                return;
                            }
                            String restrictionReason = user == null ? null : MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).getRestrictionReason(user.restriction_reason);
                            if (!TextUtils.isEmpty(restrictionReason)) {
                                MessagesController.getInstance(ChatActivityEnterView.this.currentAccount);
                                MessagesController.showCantOpenAlert(ChatActivityEnterView.this.parentFragment, restrictionReason);
                            } else {
                                BotWebViewSheet botWebViewSheet = new BotWebViewSheet(ChatActivityEnterView.this.getContext(), ChatActivityEnterView.this.resourcesProvider);
                                botWebViewSheet.setParentActivity(ChatActivityEnterView.this.parentActivity);
                                botWebViewSheet.requestWebView(ChatActivityEnterView.this.parentFragment, webViewRequestPropsOf);
                                botWebViewSheet.show();
                            }
                        }
                    };
                    if (SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, j2)) {
                        runnable.run();
                    } else {
                        AlertsCreator.createBotLaunchAlert(this.parentFragment, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialog_id)), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda64
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$didPressedBotButton$69(runnable, j2);
                            }
                        }, (Runnable) null);
                    }
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestGeoLocation) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(this.parentActivity);
                    builder.setTitle(LocaleController.getString("ShareYouLocationTitle", R.string.ShareYouLocationTitle));
                    builder.setMessage(LocaleController.getString("ShareYouLocationInfo", R.string.ShareYouLocationInfo));
                    builder.setPositiveButton(LocaleController.getString("OK", R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda60
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i2) {
                            this.f$0.lambda$didPressedBotButton$70(messageObject2, keyboardButton, alertDialog, i2);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", R.string.Cancel), null);
                    this.parentFragment.showDialog(builder.create());
                } else if ((keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) || (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) || (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) || (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth)) {
                    SendMessagesHelper.getInstance(this.currentAccount).sendCallback(true, messageObject2, keyboardButton, this.parentFragment);
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonSwitchInline) {
                    if (this.parentFragment.processSwitchButton((TLRPC.TL_keyboardButtonSwitchInline) keyboardButton)) {
                        return true;
                    }
                    if (keyboardButton.same_peer) {
                        TLRPC.Message message2 = messageObject2.messageOwner;
                        long j3 = message2.from_id.user_id;
                        long j4 = message2.via_bot_id;
                        if (j4 != 0) {
                            j3 = j4;
                        }
                        TLRPC.User user2 = this.accountInstance.getMessagesController().getUser(Long.valueOf(j3));
                        if (user2 == null) {
                            return true;
                        }
                        setFieldText("@" + UserObject.getPublicUsername(user2) + " " + keyboardButton.query);
                    } else {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("onlySelect", true);
                        bundle.putInt("dialogsType", 1);
                        if ((keyboardButton.flags & 2) != 0) {
                            bundle.putBoolean("allowGroups", false);
                            bundle.putBoolean("allowMegagroups", false);
                            bundle.putBoolean("allowLegacyGroups", false);
                            bundle.putBoolean("allowUsers", false);
                            bundle.putBoolean("allowChannels", false);
                            bundle.putBoolean("allowBots", false);
                            Iterator it = keyboardButton.peer_types.iterator();
                            while (it.hasNext()) {
                                TLRPC.InlineQueryPeerType inlineQueryPeerType = (TLRPC.InlineQueryPeerType) it.next();
                                if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypePM) {
                                    bundle.putBoolean("allowUsers", true);
                                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeBotPM) {
                                    bundle.putBoolean("allowBots", true);
                                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeBroadcast) {
                                    bundle.putBoolean("allowChannels", true);
                                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeChat) {
                                    bundle.putBoolean("allowLegacyGroups", true);
                                } else if (inlineQueryPeerType instanceof TLRPC.TL_inlineQueryPeerTypeMegagroup) {
                                    bundle.putBoolean("allowMegagroups", true);
                                }
                            }
                        }
                        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
                        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda61
                            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, TopicsFragment topicsFragment) {
                                return this.f$0.lambda$didPressedBotButton$71(messageObject2, keyboardButton, dialogsActivity2, arrayList, charSequence, z, z2, i2, topicsFragment);
                            }
                        });
                        this.parentFragment.presentFragment(dialogsActivity);
                    }
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonUserProfile) {
                    if (MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(keyboardButton.user_id)) != null) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("user_id", keyboardButton.user_id);
                        this.parentFragment.presentFragment(new ProfileActivity(bundle2));
                    }
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPeer) {
                    final TLRPC.TL_keyboardButtonRequestPeer tL_keyboardButtonRequestPeer = (TLRPC.TL_keyboardButtonRequestPeer) keyboardButton;
                    TLRPC.RequestPeerType requestPeerType = tL_keyboardButtonRequestPeer.peer_type;
                    if (requestPeerType != null && messageObject2.messageOwner != null) {
                        if ((requestPeerType instanceof TLRPC.TL_requestPeerTypeUser) && (i = tL_keyboardButtonRequestPeer.max_quantity) > 1) {
                            TLRPC.TL_requestPeerTypeUser tL_requestPeerTypeUser = (TLRPC.TL_requestPeerTypeUser) requestPeerType;
                            MultiContactsSelectorBottomSheet.open(tL_requestPeerTypeUser.bot, tL_requestPeerTypeUser.premium, i, new MultiContactsSelectorBottomSheet.SelectorListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda62
                                @Override // org.telegram.ui.MultiContactsSelectorBottomSheet.SelectorListener
                                public final void onUserSelected(List list) {
                                    this.f$0.lambda$didPressedBotButton$72(messageObject2, tL_keyboardButtonRequestPeer, list);
                                }
                            });
                            return false;
                        }
                        Bundle bundle3 = new Bundle();
                        bundle3.putBoolean("onlySelect", true);
                        bundle3.putInt("dialogsType", 15);
                        TLRPC.Message message3 = messageObject2.messageOwner;
                        if (message3 != null) {
                            TLRPC.Peer peer = message3.from_id;
                            if (peer instanceof TLRPC.TL_peerUser) {
                                bundle3.putLong("requestPeerBotId", peer.user_id);
                            }
                        }
                        try {
                            SerializedData serializedData = new SerializedData(tL_keyboardButtonRequestPeer.peer_type.getObjectSize());
                            tL_keyboardButtonRequestPeer.peer_type.serializeToStream(serializedData);
                            bundle3.putByteArray("requestPeerType", serializedData.toByteArray());
                            serializedData.cleanup();
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                        DialogsActivity dialogsActivity2 = new DialogsActivity(bundle3);
                        dialogsActivity2.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda63
                            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                            public final boolean didSelectDialogs(DialogsActivity dialogsActivity3, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, TopicsFragment topicsFragment) {
                                return this.f$0.lambda$didPressedBotButton$73(messageObject2, tL_keyboardButtonRequestPeer, dialogsActivity3, arrayList, charSequence, z, z2, i2, topicsFragment);
                            }
                        });
                        this.parentFragment.presentFragment(dialogsActivity2);
                        return false;
                    }
                    FileLog.e("button.peer_type is null");
                }
            }
        }
        return true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        BotMenuButtonType botMenuButtonType;
        TLRPC.ChatFull chatFull;
        TLRPC.Chat chat;
        double d;
        ImageView imageView;
        if (i == NotificationCenter.emojiLoaded) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.invalidateViews();
            }
            BotKeyboardView botKeyboardView = this.botKeyboardView;
            if (botKeyboardView != null) {
                botKeyboardView.invalidateViews();
            }
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.postInvalidate();
                this.messageEditText.invalidateForce();
                return;
            }
            return;
        }
        if (i == NotificationCenter.recordProgressChanged) {
            if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                return;
            }
            if (this.recordInterfaceState != 0 && !this.wasSendTyping && !isInScheduleMode()) {
                this.wasSendTyping = true;
                this.accountInstance.getMessagesController().sendTyping(this.dialog_id, getThreadMessageId(), isInVideoMode() ? 7 : 1, 0);
            }
            RecordCircle recordCircle = this.recordCircle;
            if (recordCircle != null) {
                recordCircle.setAmplitude(((Double) objArr[1]).doubleValue());
                return;
            }
            return;
        }
        if (i == NotificationCenter.closeChats) {
            EditTextCaption editTextCaption2 = this.messageEditText;
            if (editTextCaption2 == null || !editTextCaption2.isFocused()) {
                return;
            }
            AndroidUtilities.hideKeyboard(this.messageEditText);
            return;
        }
        int i3 = 5;
        if (i == NotificationCenter.recordStartError || i == NotificationCenter.recordStopped) {
            if (((Integer) objArr[0]).intValue() == this.recordingGuid && this.recordingAudioVideo) {
                this.recordingAudioVideo = false;
                if (i != NotificationCenter.recordStopped) {
                    updateRecordInterface(2, true);
                    return;
                }
                Integer num = (Integer) objArr[1];
                if (num.intValue() == 4) {
                    i3 = 4;
                } else if (isInVideoMode() && num.intValue() == 5) {
                    i3 = 1;
                } else if (num.intValue() != 0) {
                    i3 = num.intValue() == 6 ? 2 : 3;
                }
                if (i3 != 3) {
                    updateRecordInterface(i3, true);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.recordStarted) {
            if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                return;
            }
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            this.isInVideoMode = !zBooleanValue;
            ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
            if (chatActivityEnterViewAnimatedIconView != null) {
                chatActivityEnterViewAnimatedIconView.setState(zBooleanValue ? ChatActivityEnterViewAnimatedIconView.State.VOICE : ChatActivityEnterViewAnimatedIconView.State.VIDEO, true);
            }
            if (this.recordingAudioVideo) {
                RecordCircle recordCircle2 = this.recordCircle;
                if (recordCircle2 != null) {
                    recordCircle2.showWaves(true, true);
                }
            } else {
                this.recordingAudioVideo = true;
                updateRecordInterface(0, true);
            }
            TimerView timerView = this.recordTimerView;
            if (timerView != null) {
                timerView.start(this.millisecondsRecorded);
            }
            RecordDot recordDot = this.recordDot;
            if (recordDot != null) {
                recordDot.enterAnimation = false;
                return;
            }
            return;
        }
        byte[] bArr = null;
        if (i == NotificationCenter.recordPaused) {
            this.recordingAudioVideo = false;
            this.audioToSend = null;
            this.videoToSendMessageObject = null;
            return;
        }
        if (i == NotificationCenter.recordResumed) {
            this.audioToSend = null;
            this.videoToSendMessageObject = null;
            TimerView timerView2 = this.recordTimerView;
            if (timerView2 != null) {
                timerView2.start(this.millisecondsRecorded);
            }
            checkSendButton(true);
            this.recordingAudioVideo = true;
            updateRecordInterface(0, true);
            return;
        }
        if (i != NotificationCenter.audioDidSent) {
            if (i == NotificationCenter.audioRouteChanged) {
                if (this.parentActivity != null) {
                    this.parentActivity.setVolumeControlStream(((Boolean) objArr[0]).booleanValue() ? 0 : Integer.MIN_VALUE);
                    return;
                }
                return;
            }
            if (i == NotificationCenter.messagePlayingProgressDidChanged) {
                if (this.audioToSendMessageObject == null || !MediaController.getInstance().isPlayingMessage(this.audioToSendMessageObject)) {
                    return;
                }
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                MessageObject messageObject = this.audioToSendMessageObject;
                messageObject.audioProgress = playingMessageObject.audioProgress;
                messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                return;
            }
            if (i == NotificationCenter.featuredStickersDidLoad) {
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.emojiButton;
                if (chatActivityEnterViewAnimatedIconView2 != null) {
                    chatActivityEnterViewAnimatedIconView2.invalidate();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.messageReceivedByServer2) {
                if (((Boolean) objArr[6]).booleanValue() || ((Long) objArr[3]).longValue() != this.dialog_id || (chatFull = this.info) == null || chatFull.slowmode_seconds == 0 || (chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(this.info.id))) == null || ChatObject.hasAdminRights(chat) || ChatObject.isIgnoredChatRestrictionsForBoosters(chat)) {
                    return;
                }
                TLRPC.ChatFull chatFull2 = this.info;
                int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                TLRPC.ChatFull chatFull3 = this.info;
                chatFull2.slowmode_next_send_date = currentTime + chatFull3.slowmode_seconds;
                chatFull3.flags |= 262144;
                setSlowModeTimer(chatFull3.slowmode_next_send_date);
                return;
            }
            if (i == NotificationCenter.sendingMessagesChanged) {
                if (this.info != null) {
                    updateSlowModeText();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.audioRecordTooShort) {
                this.audioToSend = null;
                this.videoToSendMessageObject = null;
                updateRecordInterface(4, true);
                return;
            }
            if (i != NotificationCenter.updateBotMenuButton) {
                if (i == NotificationCenter.didUpdatePremiumGiftFieldIcon) {
                    updateGiftButton(true);
                    return;
                }
                return;
            }
            long jLongValue = ((Long) objArr[0]).longValue();
            TL_bots$BotMenuButton tL_bots$BotMenuButton = (TL_bots$BotMenuButton) objArr[1];
            if (jLongValue == this.dialog_id) {
                if (tL_bots$BotMenuButton instanceof TL_bots$TL_botMenuButton) {
                    TL_bots$TL_botMenuButton tL_bots$TL_botMenuButton = (TL_bots$TL_botMenuButton) tL_bots$BotMenuButton;
                    this.botMenuWebViewTitle = tL_bots$TL_botMenuButton.text;
                    this.botMenuWebViewUrl = tL_bots$TL_botMenuButton.url;
                    botMenuButtonType = BotMenuButtonType.WEB_VIEW;
                } else {
                    botMenuButtonType = (this.hasBotCommands || this.hasQuickReplies) ? BotMenuButtonType.COMMANDS : BotMenuButtonType.NO_BUTTON;
                }
                this.botMenuButtonType = botMenuButtonType;
                updateBotButton(false);
                return;
            }
            return;
        }
        if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
            return;
        }
        this.millisecondsRecorded = 0L;
        Object obj = objArr[1];
        if (obj instanceof VideoEditedInfo) {
            VideoEditedInfo videoEditedInfo = (VideoEditedInfo) obj;
            this.videoToSendMessageObject = videoEditedInfo;
            String str = (String) objArr[2];
            this.audioToSendPath = str;
            ArrayList<Bitmap> arrayList = (ArrayList) objArr[3];
            this.millisecondsRecorded = videoEditedInfo.estimatedDuration;
            VideoTimelineView videoTimelineView = this.videoTimelineView;
            if (videoTimelineView != null) {
                videoTimelineView.setVideoPath(str);
                this.videoTimelineView.setKeyframes(arrayList);
                this.videoTimelineView.setVisibility(0);
                this.videoTimelineView.setMinProgressDiff(1000.0f / this.videoToSendMessageObject.estimatedDuration);
                isRecordingStateChanged();
            }
            updateRecordInterface(3, true);
            checkSendButton(false);
            return;
        }
        this.audioToSend = (TLRPC.TL_document) obj;
        this.audioToSendPath = (String) objArr[2];
        boolean z = objArr.length >= 4 && ((Boolean) objArr[3]).booleanValue();
        float fFloatValue = objArr.length >= 5 ? ((Float) objArr[4]).floatValue() : BitmapDescriptorFactory.HUE_RED;
        float fFloatValue2 = objArr.length >= 6 ? ((Float) objArr[5]).floatValue() : 1.0f;
        if (this.audioToSend == null) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.onMessageSend(null, true, 0, 0L);
                return;
            }
            return;
        }
        createRecordAudioPanel();
        if (this.recordedAudioPanel == null) {
            return;
        }
        TLRPC.TL_message tL_message = new TLRPC.TL_message();
        tL_message.out = true;
        tL_message.id = 0;
        tL_message.peer_id = new TLRPC.TL_peerUser();
        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
        tL_message.from_id = tL_peerUser;
        TLRPC.Peer peer = tL_message.peer_id;
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        tL_peerUser.user_id = clientUserId;
        peer.user_id = clientUserId;
        tL_message.date = (int) (System.currentTimeMillis() / 1000);
        tL_message.message = "";
        tL_message.attachPath = this.audioToSendPath;
        TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
        tL_message.media = tL_messageMediaDocument;
        tL_messageMediaDocument.flags |= 3;
        tL_messageMediaDocument.document = this.audioToSend;
        tL_message.flags |= 768;
        this.audioToSendMessageObject = new MessageObject(UserConfig.selectedAccount, tL_message, false, true);
        this.recordedAudioPanel.setAlpha(1.0f);
        this.recordedAudioPanel.setVisibility(0);
        this.recordDeleteImageView.setVisibility(0);
        this.recordDeleteImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.recordDeleteImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.recordDeleteImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
        int i4 = 0;
        while (true) {
            if (i4 >= this.audioToSend.attributes.size()) {
                d = 0.0d;
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = this.audioToSend.attributes.get(i4);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                d = documentAttribute.duration;
                break;
            }
            i4++;
        }
        double d2 = d;
        int i5 = 0;
        while (true) {
            if (i5 >= this.audioToSend.attributes.size()) {
                break;
            }
            TLRPC.DocumentAttribute documentAttribute2 = this.audioToSend.attributes.get(i5);
            if (documentAttribute2 instanceof TLRPC.TL_documentAttributeAudio) {
                byte[] bArr2 = documentAttribute2.waveform;
                if (bArr2 == null || bArr2.length == 0) {
                    documentAttribute2.waveform = MediaController.getWaveform(this.audioToSendPath);
                }
                bArr = documentAttribute2.waveform;
            } else {
                i5++;
            }
        }
        byte[] bArr3 = bArr;
        if (z && (imageView = this.attachButton) != null) {
            imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
            this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
        }
        this.millisecondsRecorded = (long) (1000.0d * d2);
        this.audioTimelineView.init(this.audioToSendPath, d2, bArr3, fFloatValue, fFloatValue2);
        checkSendButton(false);
        if (z) {
            createRecordCircle();
            createRecordPanel();
            createRecordAudioPanel();
            this.recordInterfaceState = 1;
            this.recordCircle.resetLockTranslation(false);
            this.recordControlsCircleScale.set(this.recordCircle, Float.valueOf(1.0f));
            ControlsView controlsView = this.controlsView;
            if (controlsView != null) {
                controlsView.setVisibility(0);
                this.controlsView.setAlpha(1.0f);
            }
        }
        updateRecordInterface(3, !z);
    }

    @Override // org.telegram.ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        EmojiView emojiView = this.emojiView;
        if (emojiView == null || emojiView.getVisibility() != 0 || this.emojiView.getStickersExpandOffset() == BitmapDescriptorFactory.HUE_RED) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        canvas.clipRect(0, AndroidUtilities.dp(2.0f), getMeasuredWidth(), getMeasuredHeight());
        canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.emojiView.getStickersExpandOffset());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void doneEditingMessage() {
        MessagePreviewParams messagePreviewParams;
        MessageSuggestionParams messageSuggestionParamsOf;
        int i;
        MessageSuggestionParams messageSuggestionParamsOf2;
        MessageObject messageObject = this.editingMessageObject;
        if (messageObject == null) {
            return;
        }
        if (messageObject.needResendWhenEdit() && !ChatObject.canManageMonoForum(this.currentAccount, this.editingMessageObject.getDialogId())) {
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity == null || (messageSuggestionParamsOf2 = chatActivity.messageSuggestionParams) == null) {
                messageSuggestionParamsOf2 = MessageSuggestionParams.of(this.editingMessageObject.messageOwner.suggested_post);
            }
            if (!StarsController.isEnoughAmount(this.currentAccount, messageSuggestionParamsOf2.amount)) {
                ChatActivity chatActivity2 = this.parentFragment;
                if (chatActivity2 != null) {
                    chatActivity2.showSuggestionOfferForEditMessage(messageSuggestionParamsOf2);
                    return;
                }
                return;
            }
        }
        if (this.currentLimit - this.codePointCount < 0) {
            NumberTextView numberTextView = this.captionLimitView;
            if (numberTextView != null) {
                AndroidUtilities.shakeViewSpring(numberTextView, 3.5f);
                try {
                    this.captionLimitView.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
            if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium <= this.codePointCount) {
                return;
            }
            showCaptionLimitBulletin();
            return;
        }
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, true);
            this.emojiView.closeSearch(false);
            if (this.stickersExpanded) {
                setStickersExpanded(false, true, false);
                this.waitingForKeyboardOpenAfterAnimation = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda73
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doneEditingMessage$54();
                    }
                }, 200L);
            }
        }
        EditTextCaption editTextCaption = this.messageEditText;
        CharSequence textToUse = editTextCaption == null ? "" : editTextCaption.getTextToUse();
        MessageObject messageObject2 = this.editingMessageObject;
        if (messageObject2 == null || messageObject2.type != 19) {
            textToUse = AndroidUtilities.getTrimmedString(textToUse);
        }
        CharSequence[] charSequenceArr = {textToUse};
        if (TextUtils.isEmpty(charSequenceArr[0])) {
            TLRPC.MessageMedia messageMedia = this.editingMessageObject.messageOwner.media;
            if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) || (messageMedia instanceof TLRPC.TL_messageMediaEmpty) || messageMedia == null) {
                AndroidUtilities.shakeViewSpring(this.messageEditText, -3.0f);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                return;
            }
        }
        ArrayList<TLRPC.MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, supportsSendingNewEntities());
        if (!TextUtils.equals(charSequenceArr[0], this.editingMessageObject.messageText) || ((entities != null && !entities.isEmpty()) || !this.editingMessageObject.messageOwner.entities.isEmpty() || (this.editingMessageObject.messageOwner.media instanceof TLRPC.TL_messageMediaWebPage))) {
            MessageObject messageObject3 = this.editingMessageObject;
            messageObject3.editingMessage = charSequenceArr[0];
            messageObject3.editingMessageEntities = entities;
            messageObject3.editingMessageSearchWebPage = this.messageWebPageSearch;
            ChatActivity chatActivity3 = this.parentFragment;
            if (chatActivity3 == null || chatActivity3.getCurrentChat() == null || (!((i = this.editingMessageObject.type) == 0 || i == 19) || ChatObject.canSendEmbed(this.parentFragment.getCurrentChat()))) {
                ChatActivity chatActivity4 = this.parentFragment;
                if (chatActivity4 == null || (messagePreviewParams = chatActivity4.messagePreviewParams) == null) {
                    MessageObject messageObject4 = this.editingMessageObject;
                    messageObject4.editingMessageSearchWebPage = false;
                    int i2 = messageObject4.type;
                    if (i2 == 0 || i2 == 19) {
                        TLRPC.Message message = messageObject4.messageOwner;
                        message.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                        message.media = new TLRPC.TL_messageMediaEmpty();
                    }
                } else {
                    if (chatActivity4.foundWebPage instanceof TLRPC.TL_webPagePending) {
                        MessageObject messageObject5 = this.editingMessageObject;
                        messageObject5.editingMessageSearchWebPage = false;
                        int i3 = messageObject5.type;
                        if (i3 == 0 || i3 == 19) {
                            messageObject5.messageOwner.media = new TLRPC.TL_messageMediaEmpty();
                            this.editingMessageObject.messageOwner.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                        }
                    } else if (messagePreviewParams.webpage != null) {
                        MessageObject messageObject6 = this.editingMessageObject;
                        messageObject6.editingMessageSearchWebPage = false;
                        TLRPC.Message message2 = messageObject6.messageOwner;
                        message2.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                        message2.media = new TLRPC.TL_messageMediaWebPage();
                        this.editingMessageObject.messageOwner.media.webpage = this.parentFragment.messagePreviewParams.webpage;
                    } else {
                        MessageObject messageObject7 = this.editingMessageObject;
                        messageObject7.editingMessageSearchWebPage = false;
                        int i4 = messageObject7.type;
                        if (i4 == 0 || i4 == 19) {
                            TLRPC.Message message3 = messageObject7.messageOwner;
                            message3.flags |= LiteMode.FLAG_CALLS_ANIMATIONS;
                            message3.media = new TLRPC.TL_messageMediaEmpty();
                        }
                    }
                    TLRPC.Message message4 = this.editingMessageObject.messageOwner;
                    MessagePreviewParams messagePreviewParams2 = this.parentFragment.messagePreviewParams;
                    message4.invert_media = messagePreviewParams2.webpageTop;
                    if (messagePreviewParams2.hasMedia) {
                        TLRPC.MessageMedia messageMedia2 = message4.media;
                        if (messageMedia2 instanceof TLRPC.TL_messageMediaWebPage) {
                            boolean z = messagePreviewParams2.webpageSmall;
                            messageMedia2.force_small_media = z;
                            messageMedia2.force_large_media = true ^ z;
                        }
                    }
                }
            } else {
                MessageObject messageObject8 = this.editingMessageObject;
                messageObject8.editingMessageSearchWebPage = false;
                TLRPC.Message message5 = messageObject8.messageOwner;
                message5.flags &= -513;
                message5.media = null;
            }
            if (this.editingMessageObject.needResendWhenEdit()) {
                SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(this.editingMessageObject.editingMessage.toString(), this.editingMessageObject.getDialogId());
                ChatActivity chatActivity5 = this.parentFragment;
                if (chatActivity5 == null || (messageSuggestionParamsOf = chatActivity5.messageSuggestionParams) == null) {
                    messageSuggestionParamsOf = MessageSuggestionParams.of(this.editingMessageObject.messageOwner.suggested_post);
                }
                sendMessageParamsOf.suggestionParams = messageSuggestionParamsOf;
                sendMessageParamsOf.monoForumPeer = DialogObject.getPeerDialogId(this.editingMessageObject.messageOwner.saved_peer_id);
                sendMessageParamsOf.hasMediaSpoilers = this.editingMessageObject.hasMediaSpoilers();
                MessageObject messageObject9 = this.editingMessageObject;
                sendMessageParamsOf.replyToMsg = messageObject9;
                sendMessageParamsOf.parentObject = messageObject9;
                if (messageObject9.getDocument() instanceof TLRPC.TL_document) {
                    sendMessageParamsOf.document = (TLRPC.TL_document) this.editingMessageObject.getDocument();
                } else {
                    TLRPC.MessageMedia messageMedia3 = this.editingMessageObject.messageOwner.media;
                    if (messageMedia3 != null && !(messageMedia3 instanceof TLRPC.TL_messageMediaEmpty)) {
                        TLRPC.Photo photo = messageMedia3.photo;
                        if (photo instanceof TLRPC.TL_photo) {
                            sendMessageParamsOf.photo = (TLRPC.TL_photo) photo;
                        } else {
                            sendMessageParamsOf.location = messageMedia3;
                        }
                    }
                    SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
                }
                sendMessageParamsOf.caption = sendMessageParamsOf.message;
                sendMessageParamsOf.message = null;
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
            } else {
                SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(this.currentAccount);
                MessageObject messageObject10 = this.editingMessageObject;
                sendMessagesHelper.editMessage(messageObject10, null, null, null, null, null, null, false, messageObject10.hasMediaSpoilers(), null);
            }
        }
        setEditingMessageObject(null, null, false);
    }

    public void drawBackground(Canvas canvas, boolean z) {
        float f;
        float width;
        float height;
        Paint themedPaint;
        if (this.shouldDrawBackground) {
            int intrinsicHeight = (int) (this.animatedTop + (Theme.chat_composeShadowDrawable.getIntrinsicHeight() * (1.0f - this.composeShadowAlpha)));
            View view = this.topView;
            if (view != null && view.getVisibility() == 0) {
                intrinsicHeight = (int) (intrinsicHeight + ((1.0f - this.topViewEnterProgress) * this.topView.getLayoutParams().height));
            }
            int intrinsicHeight2 = Theme.chat_composeShadowDrawable.getIntrinsicHeight() + intrinsicHeight;
            if (z) {
                Theme.chat_composeShadowDrawable.setAlpha((int) (this.composeShadowAlpha * 255.0f));
                Theme.chat_composeShadowDrawable.setBounds(0, intrinsicHeight, getMeasuredWidth(), intrinsicHeight2);
                Theme.chat_composeShadowDrawable.draw(canvas);
            }
            int i = (int) (intrinsicHeight2 + this.chatSearchExpandOffset);
            if (this.allowBlur) {
                this.backgroundPaint.setColor(getThemedColor(Theme.key_chat_messagePanelBackground));
                if (SharedConfig.chatBlurEnabled() && this.sizeNotifierLayout != null) {
                    this.blurBounds.set(0, i, getWidth(), getHeight());
                    this.sizeNotifierLayout.drawBlurRect(canvas, getTop(), this.blurBounds, this.backgroundPaint, false);
                    return;
                } else {
                    f = i;
                    width = getWidth();
                    height = getHeight();
                    themedPaint = this.backgroundPaint;
                }
            } else {
                f = i;
                width = getWidth();
                height = getHeight();
                themedPaint = getThemedPaint("paintChatComposeBackground");
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, width, height, themedPaint);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z = view == this.topView || view == this.textFieldContainer;
        if (z) {
            canvas.save();
            if (view == this.textFieldContainer) {
                int iDp = (int) (this.animatedTop + AndroidUtilities.dp(2.0f) + this.chatSearchExpandOffset);
                View view2 = this.topView;
                if (view2 != null && view2.getVisibility() == 0) {
                    iDp += this.topView.getHeight();
                }
                canvas.clipRect(0, iDp, getMeasuredWidth(), getMeasuredHeight());
            } else {
                canvas.clipRect(0, this.animatedTop, getMeasuredWidth(), this.animatedTop + view.getLayoutParams().height + AndroidUtilities.dp(2.0f));
            }
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (z) {
            canvas.restore();
        }
        return zDrawChild;
    }

    public boolean drawMessageEditText(Canvas canvas, Utilities.Callback0Return callback0Return) {
        float f = this.topGradientAlpha.set(this.messageEditText.canScrollVertically(-1));
        float f2 = this.bottomGradientAlpha.set(this.messageEditText.canScrollVertically(1));
        if (f <= BitmapDescriptorFactory.HUE_RED && f2 <= BitmapDescriptorFactory.HUE_RED) {
            return ((Boolean) callback0Return.run()).booleanValue();
        }
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.messageEditText.getX() + this.messageEditText.getMeasuredWidth() + AndroidUtilities.dp(5.0f), this.messageEditText.getY() + this.messageEditText.getMeasuredHeight() + AndroidUtilities.dp(2.0f), 255, 31);
        boolean zBooleanValue = ((Boolean) callback0Return.run()).booleanValue();
        canvas.save();
        if (f > BitmapDescriptorFactory.HUE_RED) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.messageEditText.getX() - AndroidUtilities.dp(5.0f), (this.messageEditText.getY() + this.animatedTop) - 1.0f, this.messageEditText.getX() + this.messageEditText.getMeasuredWidth() + AndroidUtilities.dp(5.0f), this.messageEditText.getY() + this.animatedTop + AndroidUtilities.dp(13.0f));
            this.clipMatrix.reset();
            this.clipMatrix.postScale(1.0f, rectF.height() / 16.0f);
            this.clipMatrix.postTranslate(rectF.left, rectF.top);
            this.clipGradient.setLocalMatrix(this.clipMatrix);
            this.gradientPaint.setAlpha((int) (f * 255.0f));
            canvas.drawRect(rectF, this.gradientPaint);
        }
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(this.messageEditText.getX() - AndroidUtilities.dp(5.0f), (this.messageEditText.getY() + this.messageEditText.getMeasuredHeight()) - AndroidUtilities.dp(15.0f), this.messageEditText.getX() + this.messageEditText.getMeasuredWidth() + AndroidUtilities.dp(5.0f), this.messageEditText.getY() + this.messageEditText.getMeasuredHeight() + AndroidUtilities.dp(2.0f) + 1.0f);
            this.clipMatrix.reset();
            this.clipMatrix.postScale(1.0f, rectF2.height() / 16.0f);
            this.clipMatrix.postRotate(180.0f);
            this.clipMatrix.postTranslate(rectF2.left, rectF2.bottom);
            this.clipGradient.setLocalMatrix(this.clipMatrix);
            this.gradientPaint.setAlpha((int) (f2 * 255.0f));
            canvas.drawRect(rectF2, this.gradientPaint);
        }
        canvas.restore();
        canvas.restore();
        return zBooleanValue;
    }

    public void drawRecordedPannel(Canvas canvas) {
        FrameLayout frameLayout;
        if (getAlpha() == BitmapDescriptorFactory.HUE_RED || (frameLayout = this.recordedAudioPanel) == null || frameLayout.getParent() == null || this.recordedAudioPanel.getVisibility() != 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getX() + this.textFieldContainer.getX() + this.messageEditTextContainer.getX() + this.recordedAudioPanel.getX(), getY() + this.textFieldContainer.getY() + this.messageEditTextContainer.getY() + this.recordedAudioPanel.getY());
        if (getAlpha() != 1.0f) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) (getAlpha() * 255.0f), 31);
        }
        this.recordedAudioPanel.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    public void extendActionMode(Menu menu) {
    }

    public void forceSmoothKeyboard(boolean z) {
        ChatActivity chatActivity;
        this.smoothKeyboard = z && !AndroidUtilities.isInMultiwindow && ((chatActivity = this.parentFragment) == null || !chatActivity.isInBubbleMode());
    }

    public void freezeEmojiView(boolean z) {
        this.emojiViewFrozen = z;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.freeze(z);
        }
    }

    public AdjustPanLayoutHelper getAdjustPanLayoutHelper() {
        return this.adjustPanLayoutHelper;
    }

    public int getAnimatedTop() {
        return this.animatedTop;
    }

    public ImageView getAttachButton() {
        return this.attachButton;
    }

    public View getAudioVideoButtonContainer() {
        return this.audioVideoButtonContainer;
    }

    public int getBackgroundTop() {
        int top = getTop();
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? top : top + this.topView.getLayoutParams().height;
    }

    public ChatActivityBotWebViewButton getBotWebViewButton() {
        createBotWebViewButton();
        return this.botWebViewButton;
    }

    public int getCursorPosition() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return 0;
        }
        return editTextCaption.getSelectionStart();
    }

    public CharSequence getDraftMessage() {
        if (this.editingMessageObject != null) {
            if (TextUtils.isEmpty(this.draftMessage)) {
                return null;
            }
            return this.draftMessage;
        }
        if (this.messageEditText == null || !hasText()) {
            return null;
        }
        return this.messageEditText.getText();
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public EditTextCaption getEditField() {
        return this.messageEditText;
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public Editable getEditText() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return null;
        }
        return editTextCaption.getText();
    }

    public MessageObject getEditingMessageObject() {
        return this.editingMessageObject;
    }

    public long getEffectId() {
        return this.effectId;
    }

    public View getEmojiButton() {
        return this.emojiButton;
    }

    public int getEmojiPadding() {
        return this.emojiPadding;
    }

    public EmojiView getEmojiView() {
        return this.emojiView;
    }

    public float getExitTransition() {
        return this.exitTransition;
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public CharSequence getFieldText() {
        if (this.messageEditText == null || !hasText()) {
            return null;
        }
        return this.messageEditText.getText();
    }

    public int getHeightWithTopView() {
        int measuredHeight = getMeasuredHeight();
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? measuredHeight : (int) (measuredHeight - ((1.0f - this.topViewEnterProgress) * this.topView.getLayoutParams().height));
    }

    public float getLockAnimatedTranslation() {
        return this.lockAnimatedTranslation;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getMessagesCount() {
        MessagePreviewParams messagePreviewParams;
        ChatActivity chatActivity = this.parentFragment;
        int forwardedMessagesCount = (chatActivity == null || (messagePreviewParams = chatActivity.messagePreviewParams) == null) ? 0 : messagePreviewParams.getForwardedMessagesCount();
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null && !TextUtils.isEmpty(editTextCaption.getText())) {
            if (SendMessagesHelper.getTrimmedString(this.messageEditText.getText().toString()).length() != 0) {
                forwardedMessagesCount += (int) Math.ceil(r1.length() / 4096.0f);
            }
        } else if (hasAudioToSend()) {
            forwardedMessagesCount++;
        }
        return Math.max(1, forwardedMessagesCount);
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public ChatActivity getParentFragment() {
        return this.parentFragment;
    }

    public int getPopupViewHeight(View view) {
        BotKeyboardView botKeyboardView = this.botKeyboardView;
        if (view != botKeyboardView || botKeyboardView == null) {
            return -1;
        }
        return botKeyboardView.getKeyboardHeight();
    }

    public RecordCircle getRecordCircle() {
        return this.recordCircle;
    }

    public MessageObject getReplyingMessageObject() {
        return this.replyingMessageObject;
    }

    public int getSelectionLength() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return 0;
        }
        try {
            return editTextCaption.getSelectionEnd() - this.messageEditText.getSelectionStart();
        } catch (Exception e) {
            FileLog.e(e);
            return 0;
        }
    }

    public View getSendButton() {
        return getSendButtonInternal().getVisibility() == 0 ? getSendButtonInternal() : this.audioVideoButtonContainer;
    }

    public View getSendButtonInternal() {
        return this.sendButton;
    }

    public MessageSuggestionParams getSendMessageSuggestionParams() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            return chatActivity.getSendMessageSuggestionParams();
        }
        return null;
    }

    public long getSendMonoForumPeerId() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            return chatActivity.getSendMonoForumPeerId();
        }
        return 0L;
    }

    public SizeNotifierFrameLayout getSizeNotifierLayout() {
        return this.sizeNotifierLayout;
    }

    public float getSlideToCancelProgress() {
        return this.slideToCancelProgress;
    }

    public CharSequence getSlowModeTimer() {
        if (this.slowModeTimer > 0) {
            return this.slowModeButton.getText();
        }
        return null;
    }

    public long getStarsPrice() {
        MessagesController messagesController;
        long dialogId;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            messagesController = chatActivity.getMessagesController();
            dialogId = this.parentFragment.getDialogId();
        } else {
            messagesController = MessagesController.getInstance(this.currentAccount);
            dialogId = this.dialog_id;
        }
        return messagesController.getSendPaidMessagesStars(dialogId);
    }

    public Drawable getStickersArrowDrawable() {
        return this.stickersArrow;
    }

    public int getStickersExpandedHeight() {
        return this.stickersExpandedHeight;
    }

    public ImageView getSuggestButton() {
        return this.suggestButton;
    }

    public float getTopViewHeight() {
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : this.topView.getLayoutParams().height;
    }

    public float getTopViewTranslation() {
        View view = this.topView;
        return (view == null || view.getVisibility() == 8) ? BitmapDescriptorFactory.HUE_RED : this.topView.getTranslationY();
    }

    public TrendingStickersAlert getTrendingStickersAlert() {
        return this.trendingStickersAlert;
    }

    public int getVisibleEmojiPadding() {
        if (this.emojiViewVisible) {
            return this.emojiPadding;
        }
        return 0;
    }

    public boolean hasAudioToSend() {
        return (this.audioToSendMessageObject == null && this.videoToSendMessageObject == null) ? false : true;
    }

    public boolean hasBotWebView() {
        return this.botMenuButtonType == BotMenuButtonType.WEB_VIEW;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean hasRecordVideo() {
        return this.hasRecordVideo;
    }

    public boolean hasText() {
        EditTextCaption editTextCaption = this.messageEditText;
        return editTextCaption != null && editTextCaption.length() > 0;
    }

    public void hideBotCommands() {
        BotCommandsMenuContainer botCommandsMenuContainer;
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setOpened(false);
        }
        if (hasBotWebView() || (botCommandsMenuContainer = this.botCommandsMenuContainer) == null) {
            return;
        }
        botCommandsMenuContainer.dismiss();
    }

    public void hideHints() {
        HintView2 hintView2 = this.sendSuggestHintView;
        if (hintView2 != null) {
            hintView2.hide();
        }
        HintView2 hintView22 = this.birthdayHint;
        if (hintView22 != null) {
            hintView22.hide();
        }
    }

    public boolean hidePopup(boolean z) {
        return hidePopup(z, false);
    }

    public boolean hidePopup(boolean z, boolean z2) {
        TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup;
        if (!isPopupShowing()) {
            return false;
        }
        if (this.currentPopupContentType == 1 && (tL_replyKeyboardMarkup = this.botReplyMarkup) != null && z && this.botButtonsMessageObject != null) {
            if (tL_replyKeyboardMarkup.is_persistent) {
                return false;
            }
            MessagesController.getMainSettings(this.currentAccount).edit().putInt("closed_botkeyboard_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).apply();
        }
        if ((z && this.searchingType != 0) || z2) {
            setSearchingTypeInternal(0, true);
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.closeSearch(true);
            }
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.requestFocus();
            }
            setStickersExpanded(false, true, false);
            if (this.emojiTabOpen) {
                checkSendButton(true);
            }
        } else if (this.searchingType != 0) {
            setSearchingTypeInternal(0, false);
            this.emojiView.closeSearch(false);
            EditTextCaption editTextCaption2 = this.messageEditText;
            if (editTextCaption2 != null) {
                editTextCaption2.requestFocus();
            }
        } else if (this.stickersExpanded) {
            setStickersExpanded(false, true, false);
        } else {
            showPopup(0, 0);
        }
        return true;
    }

    public void hideTopView(boolean z) {
        if (this.topView == null || !this.topViewShowed) {
            return;
        }
        Runnable runnable = this.showTopViewRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        this.topViewShowed = false;
        this.needShowTopView = false;
        if (this.allowShowTopView) {
            ValueAnimator valueAnimator = this.currentTopViewAnimation;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.currentTopViewAnimation = null;
            }
            if (z) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.topViewEnterProgress, BitmapDescriptorFactory.HUE_RED);
                this.currentTopViewAnimation = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(this.topViewUpdateListener);
                this.currentTopViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.46
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 == null || !valueAnimator2.equals(animator)) {
                            return;
                        }
                        ChatActivityEnterView.this.currentTopViewAnimation = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 != null && valueAnimator2.equals(animator)) {
                            ChatActivityEnterView.this.topView.setVisibility(8);
                            ChatActivityEnterView.this.topLineView.setVisibility(8);
                            ChatActivityEnterView.this.resizeForTopView(false);
                            ChatActivityEnterView.this.currentTopViewAnimation = null;
                        }
                        if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.mentionContainer == null) {
                            return;
                        }
                        ChatActivityEnterView.this.parentFragment.mentionContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                });
                this.currentTopViewAnimation.setDuration(250L);
                this.currentTopViewAnimation.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                this.currentTopViewAnimation.start();
                return;
            }
            this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
            this.topView.setVisibility(8);
            this.topLineView.setVisibility(8);
            this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            resizeForTopView(false);
            this.topView.setTranslationY(r4.getLayoutParams().height);
        }
    }

    public boolean isEditingCaption() {
        return this.editingCaption;
    }

    public boolean isEditingMessage() {
        return this.editingMessageObject != null;
    }

    @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
    public boolean isInScheduleMode() {
        ChatActivity chatActivity = this.parentFragment;
        return chatActivity != null && chatActivity.isInScheduleMode();
    }

    public boolean isInVideoMode() {
        return this.isInVideoMode;
    }

    public boolean isKeyboardVisible() {
        return this.keyboardVisible;
    }

    public boolean isMessageWebPageSearchEnabled() {
        return this.messageWebPageSearch;
    }

    public boolean isPopupShowing() {
        return this.emojiViewVisible || this.botKeyboardViewVisible;
    }

    public boolean isPopupView(View view) {
        return view == this.botKeyboardView || view == this.emojiView;
    }

    public boolean isRecordCircle(View view) {
        return view == this.recordCircle;
    }

    public boolean isRecordLocked() {
        return this.recordingAudioVideo && this.recordCircle.isSendButtonVisible();
    }

    public boolean isRecordingAudioVideo() {
        AnimatorSet animatorSet;
        return this.recordingAudioVideo || !((animatorSet = this.runningAnimationAudio) == null || !animatorSet.isRunning() || this.recordIsCanceled);
    }

    protected void isRecordingStateChanged() {
    }

    public boolean isSendButtonVisible() {
        return this.sendButton.getVisibility() == 0;
    }

    public boolean isStickersExpanded() {
        return this.stickersExpanded;
    }

    public boolean isTopViewVisible() {
        View view = this.topView;
        return view != null && view.getVisibility() == 0;
    }

    public boolean isWaitingForKeyboard() {
        return this.waitingForKeyboardOpen;
    }

    public void onAdjustPanTransitionEnd() {
        Runnable runnable = this.onKeyboardClosed;
        if (runnable != null) {
            runnable.run();
            this.onKeyboardClosed = null;
        }
    }

    public void onAdjustPanTransitionStart(boolean z, int i) {
        Runnable runnable;
        if (z && (runnable = this.showTopViewRunnable) != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.showTopViewRunnable.run();
        }
        Runnable runnable2 = this.setTextFieldRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.setTextFieldRunnable.run();
        }
    }

    public void onAdjustPanTransitionUpdate(float f, float f2, boolean z) {
    }

    public void onBeginHide() {
        Runnable runnable = this.focusRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.focusRunnable = null;
        }
    }

    public boolean onBotWebViewBackPressed() {
        return false;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
    }

    public void onDestroy() {
        RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
        if (recordedAudioPlayerView != null) {
            recordedAudioPlayerView.destroy();
        }
        if (this.audioTimelineView != null && this.audioToSend != null) {
            MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
            long j = this.dialog_id;
            ChatActivity chatActivity = this.parentFragment;
            long topicId = (chatActivity == null || !chatActivity.isTopic) ? 0L : chatActivity.getTopicId();
            RecordedAudioPlayerView recordedAudioPlayerView2 = this.audioTimelineView;
            float audioLeft = recordedAudioPlayerView2 == null ? BitmapDescriptorFactory.HUE_RED : recordedAudioPlayerView2.getAudioLeft();
            RecordedAudioPlayerView recordedAudioPlayerView3 = this.audioTimelineView;
            mediaDataController.setDraftVoiceRegion(j, topicId, audioLeft, recordedAudioPlayerView3 == null ? 1.0f : recordedAudioPlayerView3.getAudioRight());
        }
        this.destroyed = true;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStarted);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordPaused);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordResumed);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStartError);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStopped);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioDidSent);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioRouteChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.featuredStickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messageReceivedByServer2);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.sendingMessagesChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioRecordTooShort);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateBotMenuButton);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdatePremiumGiftFieldIcon);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.onDestroy();
        }
        Runnable runnable = this.updateSlowModeRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.updateSlowModeRunnable = null;
        }
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock != null) {
            try {
                wakeLock.release();
                this.wakeLock = null;
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.setDelegate(null);
        }
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        drawBackground(canvas, true);
    }

    public void onEditTimeExpired() {
        SendButton sendButton = this.doneButton;
        if (sendButton != null) {
            sendButton.setVisibility(8);
        }
    }

    protected void onEmojiIconChanged(ChatActivityEnterViewAnimatedIconView.State state) {
        if (state == ChatActivityEnterViewAnimatedIconView.State.GIF && this.emojiView == null) {
            MediaDataController.getInstance(this.currentAccount).loadRecents(0, true, true, false);
            ArrayList<String> arrayList = MessagesController.getInstance(this.currentAccount).gifSearchEmojies;
            int iMin = Math.min(10, arrayList.size());
            for (int i = 0; i < iMin; i++) {
                Emoji.preloadEmoji(arrayList.get(i));
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.recordingAudioVideo) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        if (motionEvent.getAction() == 0 && AndroidUtilities.findChildViewUnder(this, motionEvent.getX(), motionEvent.getY()) != this.birthdayHint) {
            hideHints();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        BotCommandsMenuContainer botCommandsMenuContainer;
        super.onLayout(z, i, i2, i3, i4);
        if (this.botCommandLastPosition == -1 || (botCommandsMenuContainer = this.botCommandsMenuContainer) == null) {
            return;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) botCommandsMenuContainer.listView.getLayoutManager();
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(this.botCommandLastPosition, this.botCommandLastTop);
        }
        this.botCommandLastPosition = -1;
    }

    protected void onLineCountChanged(int i, int i2) {
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int iDp;
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView == null || botCommandsMenuView.getTag() == null) {
            SenderSelectView senderSelectView = this.senderSelectView;
            if (senderSelectView == null || senderSelectView.getVisibility() != 0) {
                ((ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams()).leftMargin = AndroidUtilities.dp(3.0f);
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextCaption.getLayoutParams();
                    iDp = AndroidUtilities.dp(50.0f);
                    marginLayoutParams.leftMargin = iDp;
                }
            } else {
                int i3 = this.senderSelectView.getLayoutParams().width;
                this.senderSelectView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(this.senderSelectView.getLayoutParams().height, 1073741824));
                ((ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams()).leftMargin = AndroidUtilities.dp(16.0f) + i3;
                EditTextCaption editTextCaption2 = this.messageEditText;
                if (editTextCaption2 != null) {
                    ((ViewGroup.MarginLayoutParams) editTextCaption2.getLayoutParams()).leftMargin = AndroidUtilities.dp(63.0f) + i3;
                }
            }
        } else {
            this.botCommandsMenuButton.measure(i, i2);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams();
            int iDp2 = AndroidUtilities.dp(10.0f);
            BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
            marginLayoutParams2.leftMargin = iDp2 + (botCommandsMenuView2 == null ? 0 : botCommandsMenuView2.getMeasuredWidth());
            EditTextCaption editTextCaption3 = this.messageEditText;
            if (editTextCaption3 != null) {
                marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextCaption3.getLayoutParams();
                int iDp3 = AndroidUtilities.dp(57.0f);
                BotCommandsMenuView botCommandsMenuView3 = this.botCommandsMenuButton;
                iDp = iDp3 + (botCommandsMenuView3 != null ? botCommandsMenuView3.getMeasuredWidth() : 0);
                marginLayoutParams.leftMargin = iDp;
            }
        }
        updateBotCommandsMenuContainerTopPadding();
        super.onMeasure(i, i2);
        ChatActivityBotWebViewButton chatActivityBotWebViewButton = this.botWebViewButton;
        if (chatActivityBotWebViewButton != null) {
            BotCommandsMenuView botCommandsMenuView4 = this.botCommandsMenuButton;
            if (botCommandsMenuView4 != null) {
                chatActivityBotWebViewButton.setMeasuredButtonWidth(botCommandsMenuView4.getMeasuredWidth());
            }
            this.botWebViewButton.getLayoutParams().height = getMeasuredHeight() - AndroidUtilities.dp(2.0f);
            measureChild(this.botWebViewButton, i, i2);
        }
    }

    public void onOverrideAnimationEnd() {
        Runnable runnable = this.animationEndRunnable;
        if (runnable != null) {
            runnable.run();
            this.animationEndRunnable = null;
        }
    }

    public void onPause() {
        this.isPaused = true;
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
        if (this.keyboardVisible) {
            this.showKeyboardOnResume = true;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPause$44();
            }
        };
        this.hideKeyboardRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, 500L);
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i != 2 || this.pendingLocationButton == null) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            SendMessagesHelper.getInstance(this.currentAccount).sendCurrentLocation(this.pendingMessageObject, this.pendingLocationButton);
        }
        this.pendingLocationButton = null;
        this.pendingMessageObject = null;
    }

    public void onResume() {
        EditTextCaption editTextCaption;
        this.isPaused = false;
        Runnable runnable = this.hideKeyboardRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideKeyboardRunnable = null;
        }
        if (hasBotWebView() && botCommandsMenuIsShowing()) {
            return;
        }
        getVisibility();
        if (!this.showKeyboardOnResume || BaseFragment.hasSheets(this.parentFragment)) {
            return;
        }
        this.showKeyboardOnResume = false;
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onKeyboardRequested();
        }
        if (this.searchingType == 0 && (editTextCaption = this.messageEditText) != null) {
            editTextCaption.requestFocus();
        }
        AndroidUtilities.showKeyboard(this.messageEditText);
        if (AndroidUtilities.usingHardwareInput || this.keyboardVisible || AndroidUtilities.isInMultiwindow) {
            return;
        }
        this.waitingForKeyboardOpen = true;
        AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        AndroidUtilities.runOnUIThread(this.openKeyboardRunnable, 100L);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 && this.stickersExpanded) {
            setSearchingTypeInternal(0, false);
            this.emojiView.closeSearch(false);
            setStickersExpanded(false, false, false);
        }
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.clearFrames();
        }
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
    public void onSizeChanged(int i, boolean z) {
        MessageObject messageObject;
        EditTextCaption editTextCaption;
        TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup;
        boolean z2;
        SharedPreferences.Editor editorEdit;
        int i2;
        String str;
        if (this.searchingType != 0) {
            this.lastSizeChangeValue1 = i;
            this.lastSizeChangeValue2 = z;
            this.keyboardVisible = i > 0;
            checkBotMenu();
            return;
        }
        if (i > AndroidUtilities.dp(50.0f) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow) {
            if (z) {
                this.keyboardHeightLand = i;
                editorEdit = MessagesController.getGlobalEmojiSettings().edit();
                i2 = this.keyboardHeightLand;
                str = "kbd_height_land3";
            } else {
                this.keyboardHeight = i;
                editorEdit = MessagesController.getGlobalEmojiSettings().edit();
                i2 = this.keyboardHeight;
                str = "kbd_height";
            }
            editorEdit.putInt(str, i2).commit();
        }
        if (this.keyboardVisible && this.emojiViewVisible && this.emojiView == null) {
            this.emojiViewVisible = false;
        }
        if (isPopupShowing()) {
            int iMin = z ? this.keyboardHeightLand : this.keyboardHeight;
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && chatActivity.getParentLayout() != null) {
                iMin -= this.parentFragment.getParentLayout().getBottomTabsHeight(false);
            }
            if (this.currentPopupContentType == 1 && !this.botKeyboardView.isFullSize()) {
                iMin = Math.min(this.botKeyboardView.getKeyboardHeight(), iMin);
            }
            int i3 = this.currentPopupContentType;
            View view = i3 == 0 ? this.emojiView : i3 == 1 ? this.botKeyboardView : null;
            BotKeyboardView botKeyboardView = this.botKeyboardView;
            if (botKeyboardView != null) {
                botKeyboardView.setPanelHeight(iMin);
            }
            if (view != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                if (!this.closeAnimationInProgress) {
                    int i4 = layoutParams.width;
                    int i5 = AndroidUtilities.displaySize.x;
                    if ((i4 != i5 || layoutParams.height != iMin) && !this.stickersExpanded) {
                        layoutParams.width = i5;
                        layoutParams.height = iMin;
                        view.setLayoutParams(layoutParams);
                        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
                        if (sizeNotifierFrameLayout != null) {
                            int i6 = this.emojiPadding;
                            this.emojiPadding = layoutParams.height;
                            sizeNotifierFrameLayout.requestLayout();
                            onWindowSizeChanged();
                            if (this.smoothKeyboard && !this.keyboardVisible && i6 != this.emojiPadding && pannelAnimationEnabled()) {
                                AnimatorSet animatorSet = new AnimatorSet();
                                this.panelAnimation = animatorSet;
                                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, this.emojiPadding - i6, BitmapDescriptorFactory.HUE_RED));
                                this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                                this.panelAnimation.setDuration(250L);
                                this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.77
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        ChatActivityEnterView.this.panelAnimation = null;
                                        if (ChatActivityEnterView.this.delegate != null) {
                                            ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                                        }
                                        ChatActivityEnterView.this.requestLayout();
                                        ChatActivityEnterView.this.notificationsLocker.unlock();
                                    }
                                });
                                AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                                this.notificationsLocker.lock();
                                requestLayout();
                            }
                        }
                    }
                }
            }
        }
        if (this.lastSizeChangeValue1 == i && this.lastSizeChangeValue2 == z) {
            onWindowSizeChanged();
            return;
        }
        this.lastSizeChangeValue1 = i;
        this.lastSizeChangeValue2 = z;
        boolean z3 = this.keyboardVisible;
        this.keyboardVisible = i > 0;
        checkBotMenu();
        if (this.keyboardVisible && isPopupShowing() && this.stickersExpansionAnim == null) {
            showPopup(0, this.currentPopupContentType);
        } else if (!this.keyboardVisible && !isPopupShowing() && (messageObject = this.botButtonsMessageObject) != null && this.replyingMessageObject != messageObject && !hasBotWebView() && !botCommandsMenuIsShowing() && !BaseFragment.hasSheets(this.parentFragment) && (((editTextCaption = this.messageEditText) == null || TextUtils.isEmpty(editTextCaption.getText())) && (tL_replyKeyboardMarkup = this.botReplyMarkup) != null && !tL_replyKeyboardMarkup.rows.isEmpty())) {
            if (this.sizeNotifierLayout.adjustPanLayoutHelper.animationInProgress()) {
                this.sizeNotifierLayout.adjustPanLayoutHelper.stopTransition();
            } else {
                this.sizeNotifierLayout.adjustPanLayoutHelper.ignoreOnce();
            }
            showPopup(1, 1, false);
        }
        if (this.emojiPadding != 0 && !(z2 = this.keyboardVisible) && z2 != z3 && !isPopupShowing()) {
            this.emojiPadding = 0;
            this.sizeNotifierLayout.requestLayout();
        }
        if (this.keyboardVisible && this.waitingForKeyboardOpen) {
            this.waitingForKeyboardOpen = false;
            if (this.clearBotButtonsOnKeyboardOpen) {
                this.clearBotButtonsOnKeyboardOpen = false;
                this.botKeyboardView.setButtons(this.botReplyMarkup);
            }
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        }
        onWindowSizeChanged();
    }

    @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
    /* renamed from: onStickerSelected, reason: merged with bridge method [inline-methods] */
    public void lambda$onStickerSelected$74(final TLRPC.Document document, final String str, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final boolean z2, final int i) {
        ChatActivity chatActivity;
        ChatActivity.ReplyQuote replyQuote = this.replyingQuote;
        if (replyQuote != null && (chatActivity = this.parentFragment) != null && replyQuote.outdated) {
            chatActivity.showQuoteMessageUpdate();
        } else if (isInScheduleMode() && i == 0) {
            AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda65
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z3, int i2) {
                    this.f$0.lambda$onStickerSelected$74(document, str, obj, sendAnimationData, z, z3, i2);
                }
            }, this.resourcesProvider);
        } else {
            AlertsCreator.ensurePaidMessageConfirmation(this.currentAccount, this.dialog_id, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda66
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    this.f$0.lambda$onStickerSelected$76(document, str, sendAnimationData, z2, i, obj, z, (Long) obj2);
                }
            });
        }
    }

    public void openKeyboard() {
        if ((hasBotWebView() && botCommandsMenuIsShowing()) || BaseFragment.hasSheets(this.parentFragment)) {
            return;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onKeyboardRequested();
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || AndroidUtilities.showKeyboard(editTextCaption)) {
            return;
        }
        this.messageEditText.clearFocus();
        this.messageEditText.requestFocus();
    }

    public void openKeyboardInternal() {
        ChatActivity chatActivity;
        if ((hasBotWebView() && botCommandsMenuIsShowing()) || BaseFragment.hasSheets(this.parentFragment)) {
            return;
        }
        showPopup((AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow || ((chatActivity = this.parentFragment) != null && chatActivity.isInBubbleMode()) || this.isPaused) ? 0 : 2, 0);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onKeyboardRequested();
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.requestFocus();
        }
        AndroidUtilities.showKeyboard(this.messageEditText);
        if (this.isPaused) {
            this.showKeyboardOnResume = true;
            return;
        }
        if (AndroidUtilities.usingHardwareInput || this.keyboardVisible || AndroidUtilities.isInMultiwindow) {
            return;
        }
        ChatActivity chatActivity2 = this.parentFragment;
        if (chatActivity2 == null || !chatActivity2.isInBubbleMode()) {
            this.waitingForKeyboardOpen = true;
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.onTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            }
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
            AndroidUtilities.runOnUIThread(this.openKeyboardRunnable, 100L);
        }
    }

    public boolean panelAnimationInProgress() {
        return this.panelAnimation != null;
    }

    protected boolean pannelAnimationEnabled() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean processSendingText(CharSequence charSequence, boolean z, int i, long j) {
        int i2;
        int i3;
        int i4;
        int i5;
        int iMin;
        MessageObject.SendAnimationData sendAnimationData;
        MessageObject.SendAnimationData sendAnimationData2;
        ChatActivity chatActivity;
        TLRPC.WebPage webPage;
        MessagePreviewParams messagePreviewParams;
        MessagePreviewParams messagePreviewParams2;
        ChatActivity chatActivity2;
        boolean z2;
        MessagePreviewParams messagePreviewParams3;
        MessageObject messageObject;
        int iDp;
        ChatActivity chatActivity3;
        ChatActivity chatActivity4;
        ChatActivity.ReplyQuote replyQuote = this.replyingQuote;
        if (replyQuote != null && (chatActivity4 = this.parentFragment) != null && replyQuote.outdated) {
            chatActivity4.showQuoteMessageUpdate();
            return false;
        }
        int[] iArr = new int[1];
        CharSequence trimmedString = charSequence;
        Emoji.parseEmojis(trimmedString, iArr);
        boolean z3 = iArr[0] > 0;
        if (!z3) {
            trimmedString = AndroidUtilities.getTrimmedString(charSequence);
        }
        boolean zSupportsSendingNewEntities = supportsSendingNewEntities();
        int i6 = this.accountInstance.getMessagesController().maxMessageLength;
        if (trimmedString.length() == 0) {
            return false;
        }
        if (this.delegate != null && (chatActivity3 = this.parentFragment) != null) {
            if ((i != 0) == chatActivity3.isInScheduleMode()) {
                this.delegate.prepareMessageSending();
            }
        }
        int i7 = 0;
        do {
            int i8 = i7 + i6;
            if (trimmedString.length() > i8) {
                i2 = i8 - 1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                for (int i9 = 0; i2 > i7 && i9 < 300; i9++) {
                    char cCharAt = trimmedString.charAt(i2);
                    char cCharAt2 = i2 > 0 ? trimmedString.charAt(i2 - 1) : ' ';
                    if (cCharAt == '\n' && cCharAt2 == '\n') {
                        break;
                    }
                    if (cCharAt == '\n') {
                        i5 = i2;
                    } else if (i3 < 0 && Character.isWhitespace(cCharAt) && cCharAt2 == '.') {
                        i3 = i2;
                    } else if (i4 < 0 && Character.isWhitespace(cCharAt)) {
                        i4 = i2;
                    }
                    i2--;
                }
                i2 = -1;
            } else {
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
            }
            iMin = Math.min(i8, trimmedString.length());
            if (i2 > 0) {
                iMin = i2;
            } else if (i5 > 0) {
                iMin = i5;
            } else if (i3 > 0) {
                iMin = i3;
            } else if (i4 > 0) {
                iMin = i4;
            }
            CharSequence charSequenceSubSequence = trimmedString.subSequence(i7, iMin);
            if (!z3) {
                charSequenceSubSequence = AndroidUtilities.getTrimmedString(charSequenceSubSequence);
            }
            CharSequence[] charSequenceArr = {charSequenceSubSequence};
            ArrayList<TLRPC.MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, zSupportsSendingNewEntities);
            if (!this.delegate.hasForwardingMessages()) {
                sendAnimationData2 = new MessageObject.SendAnimationData();
                sendAnimationData2.fromPreview = System.currentTimeMillis() - this.sentFromPreview < 200;
                float fDp = AndroidUtilities.dp(22.0f);
                sendAnimationData2.height = fDp;
                sendAnimationData2.width = fDp;
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    editTextCaption.getLocationInWindow(this.location);
                    sendAnimationData2.x = this.location[0] + AndroidUtilities.dp(11.0f);
                    iDp = this.location[1] + AndroidUtilities.dp(19.0f);
                } else {
                    sendAnimationData2.x = AndroidUtilities.dp(59.0f);
                    iDp = AndroidUtilities.displaySize.y - AndroidUtilities.dp(19.0f);
                }
                sendAnimationData2.y = iDp;
            } else if (this.messageSendPreview != null) {
                sendAnimationData2 = new MessageObject.SendAnimationData();
                sendAnimationData2.fromPreview = System.currentTimeMillis() - this.sentFromPreview < 200;
            } else {
                sendAnimationData = null;
                boolean zCheckUpdateStickersOrder = SendMessagesHelper.checkUpdateStickersOrder(trimmedString);
                MessageObject threadMessage = getThreadMessage();
                SendMessagesHelper.SendMessageParams sendMessageParamsOf = SendMessagesHelper.SendMessageParams.of(charSequenceArr[0].toString(), this.dialog_id, this.replyingMessageObject, (threadMessage == null || (messageObject = this.replyingTopMessage) == null) ? threadMessage : messageObject, this.messageWebPage, this.messageWebPageSearch, entities, null, null, z, i, sendAnimationData, zCheckUpdateStickersOrder);
                ChatActivity chatActivity5 = this.parentFragment;
                sendMessageParamsOf.quick_reply_shortcut = chatActivity5 == null ? chatActivity5.quickReplyShortcut : null;
                sendMessageParamsOf.quick_reply_shortcut_id = chatActivity5 == null ? chatActivity5.getQuickReplyId() : 0;
                sendMessageParamsOf.effect_id = this.effectId;
                sendMessageParamsOf.payStars = j;
                sendMessageParamsOf.monoForumPeer = getSendMonoForumPeerId();
                sendMessageParamsOf.suggestionParams = getSendMessageSuggestionParams();
                SendButton sendButton = this.sendButton;
                this.effectId = 0L;
                sendButton.setEffect(0L);
                applyStoryToSendMessageParams(sendMessageParamsOf);
                chatActivity = this.parentFragment;
                sendMessageParamsOf.invert_media = chatActivity == null && (messagePreviewParams3 = chatActivity.messagePreviewParams) != null && messagePreviewParams3.webpageTop;
                if (chatActivity != null || chatActivity.getCurrentChat() == null || ChatObject.canSendEmbed(this.parentFragment.getCurrentChat())) {
                    webPage = this.messageWebPage;
                    if (webPage instanceof TLRPC.TL_webPagePending) {
                        if (webPage != null) {
                            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                            sendMessageParamsOf.mediaWebPage = tL_messageMediaWebPage;
                            tL_messageMediaWebPage.webpage = this.messageWebPage;
                            ChatActivity chatActivity6 = this.parentFragment;
                            tL_messageMediaWebPage.force_large_media = (chatActivity6 == null || (messagePreviewParams2 = chatActivity6.messagePreviewParams) == null || messagePreviewParams2.webpageSmall) ? false : true;
                            tL_messageMediaWebPage.force_small_media = (chatActivity6 == null || (messagePreviewParams = chatActivity6.messagePreviewParams) == null || !messagePreviewParams.webpageSmall) ? false : true;
                        }
                        chatActivity2 = this.parentFragment;
                        if (chatActivity2 != null) {
                            chatActivity2.editingMessageObject = null;
                            chatActivity2.foundWebPage = null;
                            MessagePreviewParams messagePreviewParams4 = chatActivity2.messagePreviewParams;
                            if (messagePreviewParams4 != null) {
                                messagePreviewParams4.updateLink(this.currentAccount, null, "", null, null, null);
                            }
                            z2 = true;
                            setWebPage(null, true);
                            this.parentFragment.fallbackFieldPanel();
                        } else {
                            z2 = true;
                        }
                        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
                        i7 = iMin + 1;
                    } else {
                        sendMessageParamsOf.searchLinks = true;
                    }
                } else {
                    sendMessageParamsOf.searchLinks = false;
                }
                sendMessageParamsOf.mediaWebPage = null;
                chatActivity2 = this.parentFragment;
                if (chatActivity2 != null) {
                }
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
                i7 = iMin + 1;
            }
            sendAnimationData = sendAnimationData2;
            boolean zCheckUpdateStickersOrder2 = SendMessagesHelper.checkUpdateStickersOrder(trimmedString);
            MessageObject threadMessage2 = getThreadMessage();
            SendMessagesHelper.SendMessageParams sendMessageParamsOf2 = SendMessagesHelper.SendMessageParams.of(charSequenceArr[0].toString(), this.dialog_id, this.replyingMessageObject, (threadMessage2 == null || (messageObject = this.replyingTopMessage) == null) ? threadMessage2 : messageObject, this.messageWebPage, this.messageWebPageSearch, entities, null, null, z, i, sendAnimationData, zCheckUpdateStickersOrder2);
            ChatActivity chatActivity52 = this.parentFragment;
            sendMessageParamsOf2.quick_reply_shortcut = chatActivity52 == null ? chatActivity52.quickReplyShortcut : null;
            sendMessageParamsOf2.quick_reply_shortcut_id = chatActivity52 == null ? chatActivity52.getQuickReplyId() : 0;
            sendMessageParamsOf2.effect_id = this.effectId;
            sendMessageParamsOf2.payStars = j;
            sendMessageParamsOf2.monoForumPeer = getSendMonoForumPeerId();
            sendMessageParamsOf2.suggestionParams = getSendMessageSuggestionParams();
            SendButton sendButton2 = this.sendButton;
            this.effectId = 0L;
            sendButton2.setEffect(0L);
            applyStoryToSendMessageParams(sendMessageParamsOf2);
            chatActivity = this.parentFragment;
            sendMessageParamsOf2.invert_media = chatActivity == null && (messagePreviewParams3 = chatActivity.messagePreviewParams) != null && messagePreviewParams3.webpageTop;
            if (chatActivity != null) {
                webPage = this.messageWebPage;
                if (webPage instanceof TLRPC.TL_webPagePending) {
                }
            }
            chatActivity2 = this.parentFragment;
            if (chatActivity2 != null) {
            }
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf2);
            i7 = iMin + 1;
        } while (iMin != trimmedString.length());
        return z2;
    }

    public void replaceWithText(int i, int i2, CharSequence charSequence, boolean z) {
        if (this.messageEditText == null) {
            return;
        }
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.messageEditText.getText());
            spannableStringBuilder.replace(i, i2 + i, charSequence);
            if (z) {
                Emoji.replaceEmoji((CharSequence) spannableStringBuilder, this.messageEditText.getPaint().getFontMetricsInt(), false, (int[]) null);
            }
            this.messageEditText.setText(spannableStringBuilder);
            this.messageEditText.setSelection(i + charSequence.length());
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public void reset() {
        setStickersExpanded(false, true, false);
        showPopup(0, 0, false);
        if (getEditField() != null && !TextUtils.isEmpty(getEditField().getText())) {
            getEditField().setText("");
        }
        this.recordingAudioVideo = false;
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
        if (chatActivityEnterViewAnimatedIconView != null) {
            chatActivityEnterViewAnimatedIconView.setVisibility(0);
        }
        this.recordIsCanceled = true;
        isRecordingStateChanged();
        cancelRecordInterfaceInternal();
        hideRecordedAudioPanelInternal();
        ControlsView controlsView = this.controlsView;
        if (controlsView != null) {
            controlsView.setVisibility(8);
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setSendButtonInvisible();
        }
    }

    public void runEmojiPanelAnimation() {
        AndroidUtilities.cancelRunOnUIThread(this.runEmojiPanelAnimation);
        this.runEmojiPanelAnimation.run();
    }

    public boolean seekbarVisible() {
        return !this.recordIsCanceled && this.transformToSeekbar > BitmapDescriptorFactory.HUE_RED;
    }

    protected boolean sendMessageInternal(final boolean z, final int i, final long j, final boolean z2) {
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendMessageInternal$49(z, z2, i, j);
            }
        };
        if (!z2) {
            runnable.run();
            return false;
        }
        boolean zEnsurePaidMessageConfirmation = AlertsCreator.ensurePaidMessageConfirmation(this.currentAccount, this.dialog_id, getMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda35
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$sendMessageInternal$50(z, i, (Long) obj);
            }
        }, j);
        if (zEnsurePaidMessageConfirmation && this.sendButtonVisible) {
            if (isInVideoMode()) {
                if (this.delegate.isVideoRecordingPaused()) {
                    return zEnsurePaidMessageConfirmation;
                }
                SlideTextView slideTextView = this.slideText;
                if (slideTextView != null) {
                    slideTextView.setEnabled(false);
                }
                this.delegate.toggleVideoRecordingPause();
            } else {
                if (MediaController.getInstance().isRecordingPaused()) {
                    return zEnsurePaidMessageConfirmation;
                }
                if (this.sendButtonVisible) {
                    this.calledRecordRunnable = true;
                }
                MediaController.getInstance().toggleRecordingPause(this.voiceOnce);
                this.delegate.needStartRecordAudio(0);
                SlideTextView slideTextView2 = this.slideText;
                if (slideTextView2 != null) {
                    slideTextView2.setEnabled(false);
                }
            }
        }
        return zEnsurePaidMessageConfirmation;
    }

    public void setAdjustPanLayoutHelper(AdjustPanLayoutHelper adjustPanLayoutHelper) {
        this.adjustPanLayoutHelper = adjustPanLayoutHelper;
    }

    public void setAllowStickersAndGifs(boolean z, boolean z2, boolean z3) {
        setAllowStickersAndGifs(z, z2, z3, false);
    }

    public void setAllowStickersAndGifs(boolean z, boolean z2, boolean z3, boolean z4) {
        if ((this.allowStickers != z2 || this.allowGifs != z3) && this.emojiView != null) {
            if (this.emojiViewVisible && !z4) {
                this.removeEmojiViewAfterAnimation = true;
                hidePopup(false);
            } else if (z4) {
                openKeyboardInternal();
            }
        }
        this.allowAnimatedEmoji = z;
        this.allowStickers = z2;
        this.allowGifs = z3;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setAllow(z2, z3, true);
        }
        setEmojiButtonImage(false, !this.isPaused);
    }

    public void setBotInfo(LongSparseArray longSparseArray) {
        setBotInfo(longSparseArray, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setBotInfo(LongSparseArray longSparseArray, boolean z) {
        BotMenuButtonType botMenuButtonType;
        this.lastBotInfo = longSparseArray;
        if (longSparseArray.size() == 1 && ((TL_bots$BotInfo) longSparseArray.valueAt(0)).user_id == this.dialog_id) {
            TL_bots$BotInfo tL_bots$BotInfo = (TL_bots$BotInfo) longSparseArray.valueAt(0);
            TL_bots$BotMenuButton tL_bots$BotMenuButton = tL_bots$BotInfo.menu_button;
            if (tL_bots$BotMenuButton instanceof TL_bots$TL_botMenuButton) {
                TL_bots$TL_botMenuButton tL_bots$TL_botMenuButton = (TL_bots$TL_botMenuButton) tL_bots$BotMenuButton;
                this.botMenuWebViewTitle = tL_bots$TL_botMenuButton.text;
                this.botMenuWebViewUrl = tL_bots$TL_botMenuButton.url;
                botMenuButtonType = BotMenuButtonType.WEB_VIEW;
            } else if (!tL_bots$BotInfo.commands.isEmpty()) {
                botMenuButtonType = BotMenuButtonType.COMMANDS;
            }
        } else {
            botMenuButtonType = BotMenuButtonType.NO_BUTTON;
        }
        this.botMenuButtonType = botMenuButtonType;
        BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter = this.botCommandsAdapter;
        if (botCommandsAdapter != null) {
            botCommandsAdapter.setBotInfo(longSparseArray);
        }
        updateBotButton(z);
    }

    public void setBotWebViewButtonOffsetX(float f) {
        this.emojiButton.setTranslationX(f);
        if (this.messageEditText != null) {
            this.messageTextTranslationX = f;
            updateMessageTextParams();
        }
        this.attachButton.setTranslationX(f);
        this.audioVideoSendButton.setTranslationX(f);
        ImageView imageView = this.botButton;
        if (imageView != null) {
            imageView.setTranslationX(f);
        }
    }

    public void setBotsCount(int i, boolean z, boolean z2, boolean z3) {
        this.botCount = i;
        if (this.hasBotCommands == z && this.hasQuickReplies == z2) {
            return;
        }
        this.hasBotCommands = z;
        this.hasQuickReplies = z2;
        updateBotButton(z3);
    }

    public void setButtons(MessageObject messageObject) {
        setButtons(messageObject, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setButtons(MessageObject messageObject, boolean z) {
        TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup;
        EditTextCaption editTextCaption;
        MessageObject messageObject2 = this.replyingMessageObject;
        if (messageObject2 != null && messageObject2 == this.botButtonsMessageObject && messageObject2 != messageObject) {
            this.botMessageObject = messageObject;
            return;
        }
        MessageObject messageObject3 = this.botButtonsMessageObject;
        if (messageObject3 == null || messageObject3 != messageObject) {
            if (messageObject3 == null && messageObject == null) {
                return;
            }
            boolean z2 = false;
            if (this.botKeyboardView == null) {
                BotKeyboardView botKeyboardView = new BotKeyboardView(this.parentActivity, this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.68
                    @Override // android.view.View
                    public void setTranslationY(float f) {
                        super.setTranslationY(f);
                        if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.animatingContentType != 1) {
                            return;
                        }
                        ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(f);
                    }
                };
                this.botKeyboardView = botKeyboardView;
                botKeyboardView.setVisibility(8);
                this.botKeyboardViewVisible = false;
                this.botKeyboardView.setDelegate(new BotKeyboardView.BotKeyboardViewDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda28
                    @Override // org.telegram.ui.bots.BotKeyboardView.BotKeyboardViewDelegate
                    public final void didPressedButton(TLRPC.KeyboardButton keyboardButton) {
                        this.f$0.lambda$setButtons$68(keyboardButton);
                    }
                });
                SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
                sizeNotifierFrameLayout.addView(this.botKeyboardView, sizeNotifierFrameLayout.getChildCount() - 1);
            }
            this.botButtonsMessageObject = messageObject;
            if (messageObject != null) {
                TLRPC.ReplyMarkup replyMarkup = messageObject.messageOwner.reply_markup;
                tL_replyKeyboardMarkup = replyMarkup instanceof TLRPC.TL_replyKeyboardMarkup ? (TLRPC.TL_replyKeyboardMarkup) replyMarkup : null;
            }
            this.botReplyMarkup = tL_replyKeyboardMarkup;
            BotKeyboardView botKeyboardView2 = this.botKeyboardView;
            android.graphics.Point point = AndroidUtilities.displaySize;
            botKeyboardView2.setPanelHeight(point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight);
            if (this.botReplyMarkup != null) {
                SharedPreferences mainSettings = MessagesController.getMainSettings(this.currentAccount);
                if (this.botButtonsMessageObject == this.replyingMessageObject || messageObject == null) {
                    z2 = true;
                    this.botKeyboardView.setButtons(this.botReplyMarkup);
                    if (z2 && (((editTextCaption = this.messageEditText) == null || editTextCaption.length() == 0) && !isPopupShowing())) {
                        showPopup(1, 1);
                    }
                } else if (this.botReplyMarkup.single_use) {
                    if (mainSettings.getInt("answered_" + getTopicKeyString(), 0) != messageObject.getId()) {
                        if (!this.botReplyMarkup.is_persistent) {
                            if (mainSettings.getInt("closed_botkeyboard_" + getTopicKeyString(), 0) != messageObject.getId()) {
                            }
                        }
                    }
                    this.botKeyboardView.setButtons(this.botReplyMarkup);
                    if (z2) {
                        showPopup(1, 1);
                    }
                }
            } else if (isPopupShowing() && this.currentPopupContentType == 1) {
                if (z) {
                    this.clearBotButtonsOnKeyboardOpen = true;
                    openKeyboardInternal();
                } else {
                    showPopup(0, 1);
                }
            }
            updateBotButton(true);
        }
    }

    public void setCaption(String str) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setCaption(str);
            checkSendButton(true);
        }
    }

    public void setChatInfo(TLRPC.ChatFull chatFull) {
        this.info = chatFull;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setChatInfo(chatFull);
        }
        SlowModeBtn slowModeBtn = this.slowModeButton;
        if (slowModeBtn != null) {
            slowModeBtn.setPremiumMode(ChatObject.isPossibleRemoveChatRestrictionsByBoosts(chatFull));
        }
        if (ChatObject.isIgnoredChatRestrictionsForBoosters(chatFull)) {
            return;
        }
        setSlowModeTimer(chatFull.slowmode_next_send_date);
    }

    public void setChatSearchExpandOffset(float f) {
        this.chatSearchExpandOffset = f;
        invalidate();
    }

    public void setCommand(MessageObject messageObject, String str, boolean z, boolean z2) {
        EditTextCaption editTextCaption;
        String str2;
        if (str == null || getVisibility() != 0 || (editTextCaption = this.messageEditText) == null) {
            return;
        }
        TLRPC.User user = null;
        if (!z) {
            if (this.slowModeTimer > 0 && !isInScheduleMode()) {
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                if (chatActivityEnterViewDelegate != null) {
                    SlowModeBtn slowModeBtn = this.slowModeButton;
                    chatActivityEnterViewDelegate.onUpdateSlowModeButton(slowModeBtn, true, slowModeBtn.getText());
                    return;
                }
                return;
            }
            TLRPC.User user2 = (messageObject == null || !DialogObject.isChatDialog(this.dialog_id)) ? null : this.accountInstance.getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
            SendMessagesHelper.SendMessageParams sendMessageParamsOf = ((this.botCount != 1 || z2) && user2 != null && user2.bot && !str.contains("@")) ? SendMessagesHelper.SendMessageParams.of(String.format(Locale.US, "%s@%s", str, UserObject.getPublicUsername(user2)), this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false) : SendMessagesHelper.SendMessageParams.of(str, this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false);
            ChatActivity chatActivity = this.parentFragment;
            sendMessageParamsOf.quick_reply_shortcut = chatActivity != null ? chatActivity.quickReplyShortcut : null;
            sendMessageParamsOf.quick_reply_shortcut_id = chatActivity != null ? chatActivity.getQuickReplyId() : 0;
            sendMessageParamsOf.effect_id = this.effectId;
            SendButton sendButton = this.sendButton;
            this.effectId = 0L;
            sendButton.setEffect(0L);
            applyStoryToSendMessageParams(sendMessageParamsOf);
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsOf);
            return;
        }
        String string = editTextCaption.getText().toString();
        if (messageObject != null && DialogObject.isChatDialog(this.dialog_id)) {
            user = this.accountInstance.getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
        }
        TLRPC.User user3 = user;
        if ((this.botCount != 1 || z2) && user3 != null && user3.bot && !str.contains("@")) {
            str2 = String.format(Locale.US, "%s@%s", str, UserObject.getPublicUsername(user3)) + " " + string.replaceFirst("^/[a-zA-Z@\\d_]{1,255}(\\s|$)", "");
        } else {
            str2 = str + " " + string.replaceFirst("^/[a-zA-Z@\\d_]{1,255}(\\s|$)", "");
        }
        this.ignoreTextChange = true;
        this.messageEditText.setText(str2);
        EditTextCaption editTextCaption2 = this.messageEditText;
        editTextCaption2.setSelection(editTextCaption2.getText().length());
        this.ignoreTextChange = false;
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
        if (chatActivityEnterViewDelegate2 != null) {
            chatActivityEnterViewDelegate2.onTextChanged(this.messageEditText.getText(), true, false);
        }
        if (this.keyboardVisible || this.currentPopupContentType != -1) {
            return;
        }
        openKeyboard();
    }

    public void setComposeShadowAlpha(float f) {
        this.composeShadowAlpha = f;
        invalidate();
    }

    public void setDelegate(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
        this.delegate = chatActivityEnterViewDelegate;
    }

    public void setDialogId(long j, int i) {
        this.dialog_id = j;
        if (this.currentAccount != i) {
            this.notificationsLocker.unlock();
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
            int i2 = NotificationCenter.recordStarted;
            notificationCenter.removeObserver(this, i2);
            NotificationCenter notificationCenter2 = NotificationCenter.getInstance(this.currentAccount);
            int i3 = NotificationCenter.recordPaused;
            notificationCenter2.removeObserver(this, i3);
            NotificationCenter notificationCenter3 = NotificationCenter.getInstance(this.currentAccount);
            int i4 = NotificationCenter.recordResumed;
            notificationCenter3.removeObserver(this, i4);
            NotificationCenter notificationCenter4 = NotificationCenter.getInstance(this.currentAccount);
            int i5 = NotificationCenter.recordStartError;
            notificationCenter4.removeObserver(this, i5);
            NotificationCenter notificationCenter5 = NotificationCenter.getInstance(this.currentAccount);
            int i6 = NotificationCenter.recordStopped;
            notificationCenter5.removeObserver(this, i6);
            NotificationCenter notificationCenter6 = NotificationCenter.getInstance(this.currentAccount);
            int i7 = NotificationCenter.recordProgressChanged;
            notificationCenter6.removeObserver(this, i7);
            NotificationCenter notificationCenter7 = NotificationCenter.getInstance(this.currentAccount);
            int i8 = NotificationCenter.closeChats;
            notificationCenter7.removeObserver(this, i8);
            NotificationCenter notificationCenter8 = NotificationCenter.getInstance(this.currentAccount);
            int i9 = NotificationCenter.audioDidSent;
            notificationCenter8.removeObserver(this, i9);
            NotificationCenter notificationCenter9 = NotificationCenter.getInstance(this.currentAccount);
            int i10 = NotificationCenter.audioRouteChanged;
            notificationCenter9.removeObserver(this, i10);
            NotificationCenter notificationCenter10 = NotificationCenter.getInstance(this.currentAccount);
            int i11 = NotificationCenter.messagePlayingProgressDidChanged;
            notificationCenter10.removeObserver(this, i11);
            NotificationCenter notificationCenter11 = NotificationCenter.getInstance(this.currentAccount);
            int i12 = NotificationCenter.featuredStickersDidLoad;
            notificationCenter11.removeObserver(this, i12);
            NotificationCenter notificationCenter12 = NotificationCenter.getInstance(this.currentAccount);
            int i13 = NotificationCenter.messageReceivedByServer2;
            notificationCenter12.removeObserver(this, i13);
            NotificationCenter notificationCenter13 = NotificationCenter.getInstance(this.currentAccount);
            int i14 = NotificationCenter.sendingMessagesChanged;
            notificationCenter13.removeObserver(this, i14);
            this.currentAccount = i;
            this.accountInstance = AccountInstance.getInstance(i);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i2);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i3);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i4);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i5);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i6);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i7);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i8);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i9);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i10);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i11);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i12);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i13);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i14);
        }
        this.sendPlainEnabled = true;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            this.sendPlainEnabled = ChatObject.canSendPlain(this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id)));
        }
        updateScheduleButton(false);
        updateGiftButton(false);
        checkRoundVideo();
        checkChannelRights();
        updateFieldHint(false);
        if (this.messageEditText != null) {
            ChatActivity chatActivity = this.parentFragment;
            updateSendAsButton(chatActivity != null && chatActivity.getFragmentBeginToShow());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setEditingBusinessLink(TL_account$TL_businessChatLink tL_account$TL_businessChatLink) {
        CharSequence charSequenceApplyMessageEntities;
        LinearLayout linearLayout;
        ImageView imageView;
        String str;
        this.editingBusinessLink = tL_account$TL_businessChatLink;
        updateFieldHint(false);
        if (this.editingBusinessLink == null) {
            return;
        }
        AnimatorSet animatorSet = this.doneButtonAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.doneButtonAnimation = null;
        }
        createDoneButton(true);
        this.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setEditingBusinessLink$57(view);
            }
        });
        this.doneButton.setVisibility(0);
        this.doneButton.setScaleX(0.1f);
        this.doneButton.setScaleY(0.1f);
        this.doneButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.doneButton.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        this.currentLimit = this.accountInstance.getMessagesController().maxMessageLength;
        EditTextCaption editTextCaption = this.messageEditText;
        TextPaint paint = editTextCaption != null ? editTextCaption.getPaint() : null;
        if (paint == null) {
            paint = new TextPaint();
            paint.setTextSize(AndroidUtilities.dp(18.0f));
        }
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        ArrayList arrayList = this.editingBusinessLink.entities;
        if (arrayList == null || (str = tL_account$TL_businessChatLink.message) == null) {
            charSequenceApplyMessageEntities = tL_account$TL_businessChatLink.message;
            if (charSequenceApplyMessageEntities != null) {
            }
            this.lastSavedBusinessLinkMessage = calculateBusinessLinkPresetMessage();
            setAllowStickersAndGifs(true, false, false);
            getSendButtonInternal().setVisibility(8);
            setSlowModeButtonVisible(false);
            this.cancelBotButton.setVisibility(8);
            this.audioVideoButtonContainer.setVisibility(8);
            linearLayout = this.attachLayout;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            this.sendButtonContainer.setVisibility(8);
            imageView = this.scheduledButton;
            if (imageView == null) {
                imageView.setVisibility(8);
                return;
            }
            return;
        }
        charSequenceApplyMessageEntities = applyMessageEntities(arrayList, str, fontMetricsInt);
        setFieldText(charSequenceApplyMessageEntities);
        this.lastSavedBusinessLinkMessage = calculateBusinessLinkPresetMessage();
        setAllowStickersAndGifs(true, false, false);
        getSendButtonInternal().setVisibility(8);
        setSlowModeButtonVisible(false);
        this.cancelBotButton.setVisibility(8);
        this.audioVideoButtonContainer.setVisibility(8);
        linearLayout = this.attachLayout;
        if (linearLayout != null) {
        }
        this.sendButtonContainer.setVisibility(8);
        imageView = this.scheduledButton;
        if (imageView == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setEditingMessageObject(final MessageObject messageObject, final MessageObject.GroupedMessages groupedMessages, boolean z) {
        SendButton sendButton;
        float f;
        float f2;
        int i;
        float f3;
        int i2;
        float f4;
        float f5;
        CharSequence charSequence;
        final CharSequence charSequenceApplyMessageEntities;
        int i3;
        if (this.audioToSend == null && this.videoToSendMessageObject == null && this.editingMessageObject != messageObject) {
            createMessageEditText();
            boolean z2 = this.editingMessageObject != null;
            this.editingMessageObject = messageObject;
            this.editingCaption = z;
            if (messageObject != null) {
                this.captionAbove = groupedMessages != null ? groupedMessages.captionAbove : messageObject.messageOwner.invert_media;
                AnimatorSet animatorSet = this.doneButtonAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.doneButtonAnimation = null;
                }
                createDoneButton(false);
                this.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda70
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$setEditingMessageObject$58(view);
                    }
                });
                if (this.editingMessageObject.needResendWhenEdit()) {
                    long j = this.paidMessagesPrice;
                    if (j > 0) {
                        this.doneButton.setStarsPrice(j, 1, true);
                        sendButton = this.doneButton;
                        f = 5.0f;
                        f2 = BitmapDescriptorFactory.HUE_RED;
                        i = 100;
                        f3 = 48.0f;
                        i2 = 85;
                        f4 = 5.0f;
                        f5 = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        this.doneButton.setStarsPrice(0L, 1, true);
                        sendButton = this.doneButton;
                        f = 5.0f;
                        f2 = 5.0f;
                        i = 100;
                        f3 = 38.0f;
                        i2 = 85;
                        f4 = 5.0f;
                        f5 = 5.0f;
                    }
                    sendButton.setLayoutParams(LayoutHelper.createFrame(i, f3, i2, f4, f5, f, f2));
                    this.doneButton.requestLayout();
                    this.doneButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda71
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            return this.f$0.lambda$setEditingMessageObject$61(messageObject, groupedMessages, view);
                        }
                    });
                    this.doneButton.setVisibility(0);
                    this.doneButton.setScaleX(0.1f);
                    this.doneButton.setScaleY(0.1f);
                    this.doneButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.doneButton.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                    MessagesController messagesController = this.accountInstance.getMessagesController();
                    if (z) {
                        this.currentLimit = messagesController.maxCaptionLength;
                        charSequence = this.editingMessageObject.caption;
                    } else {
                        this.currentLimit = messagesController.maxMessageLength;
                        charSequence = this.editingMessageObject.messageText;
                    }
                    if (charSequence != null) {
                        EditTextCaption editTextCaption = this.messageEditText;
                        TextPaint paint = editTextCaption != null ? editTextCaption.getPaint() : null;
                        if (paint == null) {
                            paint = new TextPaint();
                            paint.setTextSize(AndroidUtilities.dp(18.0f));
                        }
                        charSequenceApplyMessageEntities = applyMessageEntities(this.editingMessageObject.messageOwner.entities, charSequence, paint.getFontMetricsInt());
                    } else {
                        charSequenceApplyMessageEntities = "";
                    }
                    if (this.draftMessage == null && !z2) {
                        EditTextCaption editTextCaption2 = this.messageEditText;
                        this.draftMessage = (editTextCaption2 == null || editTextCaption2.length() <= 0) ? null : this.messageEditText.getText();
                        this.draftSearchWebpage = this.messageWebPageSearch;
                    }
                    MessageObject messageObject2 = this.editingMessageObject;
                    TLRPC.MessageMedia messageMedia = messageObject2.messageOwner.media;
                    this.messageWebPageSearch = !((messageMedia instanceof TLRPC.TL_messageMediaWebPage) && messageMedia.manual) && ((i3 = messageObject2.type) == 0 || i3 == 19);
                    if (this.keyboardVisible) {
                        Runnable runnable = this.setTextFieldRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                            this.setTextFieldRunnable = null;
                        }
                        setFieldText(charSequenceApplyMessageEntities);
                    } else {
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda72
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$setEditingMessageObject$62(charSequenceApplyMessageEntities);
                            }
                        };
                        this.setTextFieldRunnable = runnable2;
                        AndroidUtilities.runOnUIThread(runnable2, 200L);
                    }
                    EditTextCaption editTextCaption3 = this.messageEditText;
                    if (editTextCaption3 != null) {
                        editTextCaption3.requestFocus();
                    }
                    openKeyboard();
                    EditTextCaption editTextCaption4 = this.messageEditText;
                    if (editTextCaption4 != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) editTextCaption4.getLayoutParams();
                        layoutParams.rightMargin = AndroidUtilities.dp(4.0f);
                        this.messageEditText.setLayoutParams(layoutParams);
                    }
                    FrameLayout frameLayout = this.recordedAudioPanel;
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                        layoutParams2.rightMargin = 0;
                        this.recordedAudioPanel.setLayoutParams(layoutParams2);
                    }
                    getSendButtonInternal().setVisibility(8);
                    setSlowModeButtonVisible(false);
                    this.cancelBotButton.setVisibility(8);
                    this.audioVideoButtonContainer.setVisibility(8);
                    this.attachLayout.setVisibility(8);
                    this.sendButtonContainer.setVisibility(8);
                    ImageView imageView = this.scheduledButton;
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                }
            } else {
                Runnable runnable3 = this.setTextFieldRunnable;
                if (runnable3 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable3);
                    this.setTextFieldRunnable = null;
                }
                SendButton sendButton2 = this.doneButton;
                if (sendButton2 != null) {
                    sendButton2.setVisibility(8);
                }
                this.currentLimit = -1;
                this.delegate.onMessageEditEnd(false);
                this.sendButtonContainer.setVisibility(0);
                this.cancelBotButton.setScaleX(0.1f);
                this.cancelBotButton.setScaleY(0.1f);
                this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.cancelBotButton.setVisibility(8);
                if (this.slowModeTimer <= 0 || isInScheduleMode()) {
                    getSendButtonInternal().setScaleX(0.1f);
                    getSendButtonInternal().setScaleY(0.1f);
                    getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                    getSendButtonInternal().setVisibility(8);
                    this.slowModeButton.setScaleX(0.1f);
                    this.slowModeButton.setScaleY(0.1f);
                    this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    setSlowModeButtonVisible(false);
                    this.attachLayout.setScaleX(1.0f);
                    this.attachLayoutAlpha = 1.0f;
                    updateAttachLayoutParams();
                    this.attachLayout.setVisibility(0);
                    this.audioVideoButtonContainer.setScaleX(1.0f);
                    this.audioVideoButtonContainer.setScaleY(1.0f);
                    this.audioVideoButtonContainer.setAlpha(1.0f);
                    this.audioVideoButtonContainer.setVisibility(0);
                } else {
                    if (this.slowModeTimer == Integer.MAX_VALUE) {
                        getSendButtonInternal().setScaleX(1.0f);
                        getSendButtonInternal().setScaleY(1.0f);
                        getSendButtonInternal().setAlpha(1.0f);
                        getSendButtonInternal().setVisibility(0);
                        this.slowModeButton.setScaleX(0.1f);
                        this.slowModeButton.setScaleY(0.1f);
                        this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        setSlowModeButtonVisible(false);
                    } else {
                        getSendButtonInternal().setScaleX(0.1f);
                        getSendButtonInternal().setScaleY(0.1f);
                        getSendButtonInternal().setAlpha(BitmapDescriptorFactory.HUE_RED);
                        getSendButtonInternal().setVisibility(8);
                        this.slowModeButton.setScaleX(1.0f);
                        this.slowModeButton.setScaleY(1.0f);
                        this.slowModeButton.setAlpha(1.0f);
                        setSlowModeButtonVisible(true);
                    }
                    this.attachLayout.setScaleX(0.01f);
                    this.attachLayoutAlpha = BitmapDescriptorFactory.HUE_RED;
                    updateAttachLayoutParams();
                    this.attachLayout.setVisibility(8);
                    this.audioVideoButtonContainer.setScaleX(0.1f);
                    this.audioVideoButtonContainer.setScaleY(0.1f);
                    this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.audioVideoButtonContainer.setVisibility(8);
                }
                createScheduledButton();
                ImageView imageView2 = this.scheduledButton;
                if (imageView2 != null && imageView2.getTag() != null) {
                    this.scheduledButton.setScaleX(1.0f);
                    this.scheduledButton.setScaleY(1.0f);
                    this.scheduledButton.setAlpha(1.0f);
                    this.scheduledButton.setVisibility(0);
                }
                ChatActivity chatActivity = this.parentFragment;
                if (chatActivity != null) {
                    chatActivity.editingMessageObject = null;
                    chatActivity.foundWebPage = null;
                    MessagePreviewParams messagePreviewParams = chatActivity.messagePreviewParams;
                    if (messagePreviewParams != null) {
                        messagePreviewParams.updateLink(this.currentAccount, null, "", null, null, null);
                    }
                    setWebPage(null, true);
                    this.parentFragment.fallbackFieldPanel();
                }
                createMessageEditText();
                EditTextCaption editTextCaption5 = this.messageEditText;
                if (editTextCaption5 != null) {
                    editTextCaption5.setText(this.draftMessage);
                    EditTextCaption editTextCaption6 = this.messageEditText;
                    editTextCaption6.setSelection(editTextCaption6.length());
                }
                this.draftMessage = null;
                this.messageWebPageSearch = this.draftSearchWebpage;
                if (getVisibility() == 0) {
                    this.delegate.onAttachButtonShow();
                }
                updateFieldRight(1);
            }
            updateFieldHint(true);
            updateSendAsButton(true);
        }
    }

    public void setEffectId(long j) {
        this.effectId = j;
        SendButton sendButton = this.sendButton;
        if (sendButton != null) {
            sendButton.setEffect(j);
        }
    }

    public void setExitTransition(float f) {
        this.exitTransition = f;
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.invalidate();
        }
    }

    public void setFieldFocused() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.parentActivity.getSystemService("accessibility");
        if (this.messageEditText == null || accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        try {
            this.messageEditText.requestFocus();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public void setFieldFocused(boolean z) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.parentActivity.getSystemService("accessibility");
        if (this.messageEditText == null || accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        if (z && BaseFragment.hasSheets(this.parentFragment)) {
            z = false;
        }
        if (z) {
            if (this.searchingType != 0 || this.messageEditText.isFocused()) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setFieldFocused$64();
                }
            };
            this.focusRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 600L);
            return;
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || !editTextCaption.isFocused()) {
            return;
        }
        if (!this.keyboardVisible || this.isPaused) {
            this.messageEditText.clearFocus();
        }
    }

    @Override // org.telegram.ui.Components.SuggestEmojiView.AnchorViewDelegate
    public void setFieldText(CharSequence charSequence) {
        setFieldText(charSequence, true, false);
    }

    public void setFieldText(CharSequence charSequence, boolean z) {
        setFieldText(charSequence, z, false);
    }

    public void setFieldText(CharSequence charSequence, boolean z, boolean z2) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return;
        }
        this.ignoreTextChange = z;
        editTextCaption.setText(charSequence);
        this.messageEditText.invalidateQuotes(true);
        EditTextCaption editTextCaption2 = this.messageEditText;
        editTextCaption2.setSelection(editTextCaption2.getText().length());
        this.ignoreTextChange = false;
        if (!z || (chatActivityEnterViewDelegate = this.delegate) == null) {
            return;
        }
        chatActivityEnterViewDelegate.onTextChanged(this.messageEditText.getText(), true, z2);
    }

    public void setForceShowSendButton(boolean z, boolean z2) {
        this.forceShowSendButton = z;
        checkSendButton(z2);
    }

    public void setHorizontalPadding(float f, float f2, boolean z) {
        float f3 = 1.0f - f2;
        float f4 = (-(AndroidUtilities.dp(40.0f) + f)) * f3;
        this.emojiButtonPaddingScale = (f2 * 0.5f) + 0.5f;
        this.emojiButtonPaddingAlpha = f2;
        updateEmojiButtonParams();
        float f5 = -((-f) * f3);
        this.emojiButton.setTranslationX(f5);
        this.messageTextPaddingTranslationX = f5 - (AndroidUtilities.dp(31.0f) * f3);
        RLottieImageView rLottieImageView = this.recordDeleteImageView;
        if (rLottieImageView != null) {
            rLottieImageView.setTranslationX(f5);
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setTranslationX(f4);
        }
        ControlsView controlsView = this.controlsView;
        if (controlsView != null) {
            controlsView.setTranslationX(f4);
        }
        LinearLayout linearLayout = this.recordTimeContainer;
        if (linearLayout != null) {
            linearLayout.setTranslationX(f5);
        }
        this.sendButtonContainer.setTranslationX(f4);
        this.sendButtonContainer.setAlpha(z ? f2 : 1.0f);
        this.sendButtonEnabled = !z || f2 == 1.0f;
        this.attachLayoutPaddingTranslationX = f4;
        this.attachLayoutPaddingAlpha = f2;
        updateAttachLayoutParams();
        updateMessageTextParams();
        float f6 = f * f3;
        if (this.horizontalPadding != f6) {
            this.horizontalPadding = f6;
            RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
            if (recordedAudioPlayerView != null) {
                recordedAudioPlayerView.setTranslationX(f6);
                this.audioTimelineView.invalidate();
            }
        }
        if (this.messageEditText != null) {
            float fLerp = AndroidUtilities.lerp(0.88f, 1.0f, f2);
            this.messageEditText.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.messageEditText.setPivotY(r9.getMeasuredHeight() / 2.0f);
            this.messageEditText.setScaleX(fLerp);
            this.messageEditText.setScaleY(fLerp);
            this.messageEditText.setHintRightOffset(AndroidUtilities.lerp(AndroidUtilities.dp(30.0f), 0, f2));
        }
    }

    public void setLockAnimatedTranslation(float f) {
        this.lockAnimatedTranslation = f;
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.invalidate();
        }
    }

    public void setOpenGifsTabFirst() {
        createEmojiView();
        MediaDataController.getInstance(this.currentAccount).loadRecents(0, true, true, false);
        this.emojiView.switchToGifRecent();
    }

    public void setOverrideHint(CharSequence charSequence) {
        setOverrideHint(charSequence, false);
    }

    public void setOverrideHint(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        this.overrideHint = charSequence;
        this.overrideHint2 = charSequence2;
        updateFieldHint(z);
    }

    public void setOverrideHint(CharSequence charSequence, boolean z) {
        this.overrideHint = charSequence;
        this.overrideHint2 = null;
        updateFieldHint(z);
    }

    public void setOverrideKeyboardAnimation(boolean z) {
        this.overrideKeyboardAnimation = z;
    }

    public void setReplyingMessageObject(MessageObject messageObject, ChatActivity.ReplyQuote replyQuote) {
        setReplyingMessageObject(messageObject, replyQuote, null);
    }

    public void setReplyingMessageObject(MessageObject messageObject, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject2) {
        MessageObject messageObject3;
        ChatActivity chatActivity = this.parentFragment;
        boolean z = (chatActivity == null || !chatActivity.isForumInViewAsMessagesMode() || this.replyingTopMessage == messageObject2) ? false : true;
        if (messageObject != null) {
            if (this.botMessageObject == null && (messageObject3 = this.botButtonsMessageObject) != this.replyingMessageObject) {
                this.botMessageObject = messageObject3;
            }
            this.replyingMessageObject = messageObject;
            this.replyingQuote = replyQuote;
            this.replyingTopMessage = messageObject2;
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 == null || !chatActivity2.isTopic || chatActivity2.getThreadMessage() != this.replyingMessageObject) {
                setButtons(this.replyingMessageObject, true);
            }
        } else {
            MessageObject messageObject4 = this.replyingMessageObject;
            MessageObject messageObject5 = this.botButtonsMessageObject;
            this.replyingMessageObject = null;
            if (messageObject4 == messageObject5) {
                this.replyingTopMessage = null;
                this.replyingQuote = null;
                setButtons(this.botMessageObject, false);
                this.botMessageObject = null;
            } else {
                this.replyingQuote = null;
                this.replyingTopMessage = null;
            }
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        MediaController.getInstance().setReplyingMessage(messageObject, getThreadMessage(), chatActivityEnterViewDelegate != null ? chatActivityEnterViewDelegate.getReplyToStory() : null);
        updateFieldHint(z);
    }

    public void setSelection(int i) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return;
        }
        editTextCaption.setSelection(i, editTextCaption.length());
    }

    public void setSlideToCancelProgress(float f) {
        this.slideToCancelProgress = f;
        float measuredWidth = getMeasuredWidth() * 0.35f;
        if (measuredWidth > AndroidUtilities.dp(140.0f)) {
            measuredWidth = AndroidUtilities.dp(140.0f);
        }
        this.slideDelta = (int) ((-measuredWidth) * (1.0f - this.slideToCancelProgress));
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.invalidate();
        }
    }

    public void setSlowModeTimer(int i) {
        this.slowModeTimer = i;
        updateSlowModeText();
    }

    public void setSnapAnimationProgress(float f) {
        this.snapAnimationProgress = f;
        invalidate();
    }

    public void setStickersExpanded(boolean z, boolean z2, boolean z3) {
        setStickersExpanded(z, z2, z3, true);
    }

    public void setStickersExpanded(boolean z, boolean z2, boolean z3, boolean z4) {
        AnimatorSet animatorSet;
        int i;
        String str;
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if ((adjustPanLayoutHelper != null && adjustPanLayoutHelper.animationInProgress()) || this.waitingForKeyboardOpenAfterAnimation || this.emojiView == null) {
            return;
        }
        if (z3 || this.stickersExpanded != z) {
            this.stickersExpanded = z;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.onStickersExpandedChange();
            }
            android.graphics.Point point = AndroidUtilities.displaySize;
            final int i2 = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            Animator animator = this.stickersExpansionAnim;
            if (animator != null) {
                animator.cancel();
                this.stickersExpansionAnim = null;
            }
            if (this.stickersExpanded) {
                if (z4) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 1);
                }
                int height = this.sizeNotifierLayout.getHeight();
                this.originalViewHeight = height;
                int currentActionBarHeight = (((height - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - ActionBar.getCurrentActionBarHeight()) - getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                this.stickersExpandedHeight = currentActionBarHeight;
                if (this.searchingType == 2) {
                    this.stickersExpandedHeight = Math.min(currentActionBarHeight, AndroidUtilities.dp(120.0f) + i2);
                }
                this.emojiView.getLayoutParams().height = this.stickersExpandedHeight;
                this.sizeNotifierLayout.requestLayout();
                if (this.shouldDrawBackground) {
                    this.sizeNotifierLayout.setForeground(new ScrimDrawable());
                }
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    int selectionStart = editTextCaption.getSelectionStart();
                    int selectionEnd = this.messageEditText.getSelectionEnd();
                    EditTextCaption editTextCaption2 = this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText());
                    this.messageEditText.setSelection(selectionStart, selectionEnd);
                }
                if (z2) {
                    animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i2)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i2)), ObjectAnimator.ofFloat(this.stickersArrow, "animationProgress", 1.0f));
                    animatorSet.setDuration(300L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    ((ObjectAnimator) animatorSet.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda12
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setStickersExpanded$83(i2, valueAnimator);
                        }
                    });
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.80
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            ChatActivityEnterView.this.stickersExpansionAnim = null;
                            ChatActivityEnterView.this.emojiView.setLayerType(0, null);
                            ChatActivityEnterView.this.notificationsLocker.unlock();
                        }
                    });
                    this.stickersExpansionAnim = animatorSet;
                    this.emojiView.setLayerType(2, null);
                    this.notificationsLocker.lock();
                    this.stickersExpansionProgress = BitmapDescriptorFactory.HUE_RED;
                    this.sizeNotifierLayout.invalidate();
                    animatorSet.start();
                } else {
                    this.stickersExpansionProgress = 1.0f;
                    setTranslationY(-(this.stickersExpandedHeight - i2));
                    this.emojiView.setTranslationY(-(this.stickersExpandedHeight - i2));
                    AnimatedArrowDrawable animatedArrowDrawable = this.stickersArrow;
                    if (animatedArrowDrawable != null) {
                        animatedArrowDrawable.setAnimationProgress(1.0f);
                    }
                }
            } else {
                if (z4) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 1);
                }
                if (z2) {
                    this.closeAnimationInProgress = true;
                    animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, 0), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, 0), ObjectAnimator.ofFloat(this.stickersArrow, "animationProgress", BitmapDescriptorFactory.HUE_RED));
                    animatorSet.setDuration(300L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    ((ObjectAnimator) animatorSet.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda13
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$setStickersExpanded$84(i2, valueAnimator);
                        }
                    });
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.81
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            ChatActivityEnterView.this.closeAnimationInProgress = false;
                            ChatActivityEnterView.this.stickersExpansionAnim = null;
                            if (ChatActivityEnterView.this.emojiView != null) {
                                ChatActivityEnterView.this.emojiView.getLayoutParams().height = i2;
                                ChatActivityEnterView.this.emojiView.setLayerType(0, null);
                            }
                            if (ChatActivityEnterView.this.sizeNotifierLayout != null) {
                                ChatActivityEnterView.this.sizeNotifierLayout.requestLayout();
                                ChatActivityEnterView.this.sizeNotifierLayout.setForeground(null);
                                ChatActivityEnterView.this.sizeNotifierLayout.setWillNotDraw(false);
                            }
                            if (ChatActivityEnterView.this.keyboardVisible && ChatActivityEnterView.this.isPopupShowing()) {
                                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                                chatActivityEnterView.showPopup(0, chatActivityEnterView.currentPopupContentType);
                            }
                            if (ChatActivityEnterView.this.onEmojiSearchClosed != null) {
                                ChatActivityEnterView.this.onEmojiSearchClosed.run();
                                ChatActivityEnterView.this.onEmojiSearchClosed = null;
                            }
                            ChatActivityEnterView.this.notificationsLocker.unlock();
                        }
                    });
                    this.stickersExpansionProgress = 1.0f;
                    this.sizeNotifierLayout.invalidate();
                    this.stickersExpansionAnim = animatorSet;
                    this.emojiView.setLayerType(2, null);
                    this.notificationsLocker.lock();
                    animatorSet.start();
                } else {
                    this.stickersExpansionProgress = BitmapDescriptorFactory.HUE_RED;
                    setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    this.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    this.emojiView.getLayoutParams().height = i2;
                    this.sizeNotifierLayout.requestLayout();
                    this.sizeNotifierLayout.setForeground(null);
                    this.sizeNotifierLayout.setWillNotDraw(false);
                    AnimatedArrowDrawable animatedArrowDrawable2 = this.stickersArrow;
                    if (animatedArrowDrawable2 != null) {
                        animatedArrowDrawable2.setAnimationProgress(BitmapDescriptorFactory.HUE_RED);
                    }
                }
            }
            ImageView imageView = this.expandStickersButton;
            if (imageView != null) {
                if (this.stickersExpanded) {
                    i = R.string.AccDescrCollapsePanel;
                    str = "AccDescrCollapsePanel";
                } else {
                    i = R.string.AccDescrExpandPanel;
                    str = "AccDescrExpandPanel";
                }
                imageView.setContentDescription(LocaleController.getString(str, i));
            }
        }
    }

    public void setSuggestionButtonVisible(boolean z, boolean z2) {
        if (this.suggestButton == null) {
            if (!z) {
                return;
            } else {
                createSuggestionButton();
            }
        }
        float f = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        this.suggestButton.setEnabled(z);
        this.suggestButton.setClickable(z);
        ImageView imageView = this.suggestButton;
        if (z2) {
            imageView.animate().scaleX(f).scaleY(f).alpha(f).setDuration(180L).start();
            return;
        }
        imageView.setScaleX(f);
        this.suggestButton.setScaleY(f);
        this.suggestButton.setAlpha(f);
    }

    public void setTextTransitionIsRunning(boolean z) {
        this.textTransitionIsRunning = z;
        this.sendButtonContainer.invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        this.messageEditTextEnabled = z;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setEnabled(z);
        }
    }

    public void setVoiceDraft(MediaDataController.DraftVoice draftVoice) {
        if (draftVoice == null) {
            return;
        }
        this.voiceOnce = draftVoice.once;
        ControlsView controlsView = this.controlsView;
        if (controlsView != null) {
            controlsView.periodDrawable.setValue(1, this.voiceOnce, true);
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        TL_stories$StoryItem replyToStory = chatActivityEnterViewDelegate != null ? chatActivityEnterViewDelegate.getReplyToStory() : null;
        MediaController mediaController = MediaController.getInstance();
        int i = this.currentAccount;
        long j = this.dialog_id;
        MessageObject messageObject = this.replyingMessageObject;
        MessageObject threadMessage = getThreadMessage();
        int i2 = this.recordingGuid;
        ChatActivity chatActivity = this.parentFragment;
        mediaController.prepareResumedRecording(i, draftVoice, j, messageObject, threadMessage, replyToStory, i2, chatActivity != null ? chatActivity.quickReplyShortcut : null, chatActivity != null ? chatActivity.getQuickReplyId() : 0, getSendMonoForumPeerId(), getSendMessageSuggestionParams());
    }

    public void setWebPage(TLRPC.WebPage webPage, boolean z) {
        this.messageWebPage = webPage;
        this.messageWebPageSearch = z;
    }

    protected boolean showConfirmAlert(Runnable runnable) {
        return false;
    }

    public void showContextProgress(boolean z) {
        CloseProgressDrawable2 closeProgressDrawable2 = this.progressDrawable;
        if (closeProgressDrawable2 == null) {
            return;
        }
        if (z) {
            closeProgressDrawable2.startAnimation();
        } else {
            closeProgressDrawable2.stopAnimation();
        }
    }

    public void showEditDoneProgress(boolean z, boolean z2) {
        if (this.doneButton == null) {
            return;
        }
        AnimatorSet animatorSet = this.doneButtonAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z) {
            this.doneButton.setEnabled(false);
            this.doneButton.setLoading(true, -3.0f);
        } else {
            this.doneButton.setEnabled(true);
            this.doneButton.setLoading(false, -3.0f);
        }
    }

    public void showEmojiView() {
        showPopup(1, 0);
    }

    public boolean showSendSuggestionHint() {
        ImageView imageView;
        if (this.sendSuggestHintView != null || (imageView = this.suggestButton) == null || imageView.getVisibility() != 0 || MessagesController.getGlobalMainSettings().getInt("channelsuggesthint2", 0) >= 2) {
            return false;
        }
        HintView2 hintView2 = new HintView2(getContext(), 3);
        this.sendSuggestHintView = hintView2;
        hintView2.setRounding(13.0f);
        this.sendSuggestHintView.setMultilineText(true);
        this.sendSuggestHintView.setText(LocaleController.formatString(R.string.SuggestAPostBelowHint, ForumUtilities.getMonoForumTitle(this.currentAccount, this.dialog_id, true)));
        this.sendSuggestHintView.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
        this.sendSuggestHintView.setJointPx(1.0f, -((getWidth() - AndroidUtilities.dp(12.0f)) - (((this.messageEditTextContainer.getX() + this.attachLayout.getX()) + this.suggestButton.getX()) + (this.suggestButton.getMeasuredWidth() / 2.0f))));
        addView(this.sendSuggestHintView, LayoutHelper.createFrame(-1, 200.0f, 48, BitmapDescriptorFactory.HUE_RED, -192.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.sendSuggestHintView.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showSendSuggestionHint$66();
            }
        });
        this.sendSuggestHintView.setDuration(8000L);
        this.sendSuggestHintView.show();
        MessagesController.getGlobalMainSettings().edit().putInt("channelsuggesthint2", MessagesController.getGlobalMainSettings().getInt("channelsuggesthint2", 0) + 1).apply();
        return true;
    }

    public void showTopView(boolean z, boolean z2) {
        showTopView(z, z2, false);
    }

    public void startMessageTransition() {
        Runnable runnable = this.moveToSendStateRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.messageTransitionIsRunning = true;
            this.moveToSendStateRunnable.run();
            this.moveToSendStateRunnable = null;
        }
    }

    public boolean swipeToBackEnabled() {
        FrameLayout frameLayout;
        if (this.recordingAudioVideo) {
            return false;
        }
        if (isInVideoMode() && (frameLayout = this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0) {
            return false;
        }
        return ((hasBotWebView() && this.botCommandsMenuButton.isOpened()) || BaseFragment.hasSheets(this.parentFragment)) ? false : true;
    }

    public float topViewVisible() {
        return this.topViewEnterProgress;
    }

    public void updateBotWebView(boolean z) {
        if (this.botMenuButtonType != BotMenuButtonType.NO_BUTTON && this.dialog_id > 0) {
            createBotCommandsMenuButton();
        }
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setWebView(hasBotWebView());
        }
        updateBotButton(z);
    }

    public void updateColors() {
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.updateColors();
        }
        updateRecordedDeleteIconColors();
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.updateColors();
        }
        RecordDot recordDot = this.recordDot;
        if (recordDot != null) {
            recordDot.updateColors();
        }
        SlideTextView slideTextView = this.slideText;
        if (slideTextView != null) {
            slideTextView.updateColors();
        }
        TimerView timerView = this.recordTimerView;
        if (timerView != null) {
            timerView.updateColors();
        }
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.updateColors();
        }
        NumberTextView numberTextView = this.captionLimitView;
        if (numberTextView != null && this.messageEditText != null) {
            numberTextView.setTextColor(getThemedColor(this.codePointCount - this.currentLimit < 0 ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText));
        }
        int themedColor = getThemedColor(Theme.key_chat_messagePanelVoicePressed);
        int iAlpha = Color.alpha(themedColor);
        Drawable drawable = this.doneCheckDrawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(themedColor, (int) (iAlpha * ((this.doneButtonEnabledProgress * 0.42f) + 0.58f))), PorterDuff.Mode.MULTIPLY));
        }
        BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
        if (botCommandsMenuContainer != null) {
            botCommandsMenuContainer.updateColors();
        }
        BotKeyboardView botKeyboardView = this.botKeyboardView;
        if (botKeyboardView != null) {
            botKeyboardView.updateColors();
        }
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
        int i = Theme.key_chat_messagePanelIcons;
        int themedColor2 = getThemedColor(i);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        chatActivityEnterViewAnimatedIconView.setColorFilter(new PorterDuffColorFilter(themedColor2, mode));
        this.emojiButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), mode));
        if (Build.VERSION.SDK_INT >= 21) {
            this.emojiButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
    }

    public void updateFieldHint(boolean z) {
        boolean zIsChannelAndNotMegaGroup;
        EditTextCaption editTextCaption;
        int i;
        EditTextCaption editTextCaption2;
        int i2;
        String str;
        String string;
        int i3;
        String str2;
        String string2;
        String str3;
        EditTextCaption editTextCaption3;
        String string3;
        TLRPC.TL_forumTopic tL_forumTopic;
        String str4;
        MessageObject messageObject;
        TLRPC.ReplyMarkup replyMarkup;
        MessageObject messageObject2;
        ColoredImageSpan coloredImageSpan;
        TLRPC.ReplyMarkup replyMarkup2;
        boolean z2 = false;
        EditTextCaption editTextCaption4 = this.messageEditText;
        if (editTextCaption4 == null) {
            return;
        }
        CharSequence charSequence = this.overrideHint;
        if (charSequence != null) {
            editTextCaption4.setHintText(charSequence, z);
            this.messageEditText.setHintText2(this.overrideHint2, z);
            return;
        }
        if (!this.sendPlainEnabled && !isEditingMessage()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(" d " + LocaleController.getString("PlainTextRestrictedHint", R.string.PlainTextRestrictedHint));
            spannableStringBuilder.setSpan(new ColoredImageSpan(R.drawable.msg_mini_lock3), 1, 2, 0);
            this.messageEditText.setHintText(spannableStringBuilder, z);
            this.messageEditText.setText((CharSequence) null);
            this.messageEditText.setEnabled(false);
            this.messageEditText.setInputType(1);
            return;
        }
        this.messageEditText.setEnabled(true);
        int inputType = this.messageEditText.getInputType();
        int i4 = this.commonInputType;
        if (inputType != i4) {
            this.messageEditText.setInputType(i4);
        }
        updateSendButtonPaid();
        ChatActivity chatActivity = this.parentFragment;
        boolean z3 = chatActivity != null && chatActivity.getChatMode() == 8 && this.parentFragment.isSubscriberSuggestions;
        ChatActivity chatActivity2 = this.parentFragment;
        long sendPaidMessagesStars = chatActivity2 != null ? chatActivity2.getMessagesController().getSendPaidMessagesStars(this.parentFragment.getDialogId()) : 0L;
        if (sendPaidMessagesStars > 0) {
            sendPaidMessagesStars *= getMessagesCount();
        }
        ChatActivity chatActivity3 = this.parentFragment;
        if (chatActivity3 == null || chatActivity3.getChatMode() != 5) {
            if (z3) {
                this.messageEditText.setHintText(sendPaidMessagesStars > 0 ? StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.SuggestPostForStars, LocaleController.formatNumber((int) sendPaidMessagesStars, ','), this.spans)) : LocaleController.formatString(R.string.SuggestPostForFree, new Object[0]));
                coloredImageSpan = this.spans[0];
                if (coloredImageSpan == null) {
                    return;
                }
            } else {
                if (!isEditingBusinessLink()) {
                    MessageObject messageObject3 = this.replyingMessageObject;
                    if (messageObject3 != null && (replyMarkup2 = messageObject3.messageOwner.reply_markup) != null && !TextUtils.isEmpty(replyMarkup2.placeholder)) {
                        editTextCaption2 = this.messageEditText;
                        messageObject2 = this.replyingMessageObject;
                    } else if (this.editingMessageObject != null) {
                        editTextCaption = this.messageEditText;
                        i = this.editingCaption ? R.string.Caption : R.string.TypeMessage;
                    } else if (sendPaidMessagesStars > 0) {
                        this.messageEditText.setHintText(StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.TypeMessageForStars, LocaleController.formatNumber((int) sendPaidMessagesStars, ',')), this.spans));
                        coloredImageSpan = this.spans[0];
                        if (coloredImageSpan == null) {
                            return;
                        }
                    } else {
                        if (!this.botKeyboardViewVisible || (messageObject = this.botButtonsMessageObject) == null || (replyMarkup = messageObject.messageOwner.reply_markup) == null || TextUtils.isEmpty(replyMarkup.placeholder)) {
                            ChatActivity chatActivity4 = this.parentFragment;
                            if (chatActivity4 != null && chatActivity4.isForumInViewAsMessagesMode()) {
                                MessageObject messageObject4 = this.replyingTopMessage;
                                if (messageObject4 == null || (tL_forumTopic = messageObject4.replyToForumTopic) == null || (str4 = tL_forumTopic.title) == null) {
                                    TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.parentFragment.getCurrentChat().id, 1L);
                                    if (tL_forumTopicFindTopic == null || (str3 = tL_forumTopicFindTopic.title) == null) {
                                        editTextCaption2 = this.messageEditText;
                                        string = LocaleController.getString(R.string.TypeMessage);
                                    } else {
                                        editTextCaption3 = this.messageEditText;
                                        string3 = LocaleController.formatString(R.string.TypeMessageIn, str3);
                                    }
                                } else {
                                    editTextCaption3 = this.messageEditText;
                                    string3 = LocaleController.formatString(R.string.TypeMessageIn, str4);
                                }
                                editTextCaption3.setHintText(string3, z);
                                return;
                            }
                            if (DialogObject.isChatDialog(this.dialog_id)) {
                                TLRPC.Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                                TLRPC.ChatFull chatFull = this.accountInstance.getMessagesController().getChatFull(-this.dialog_id);
                                zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
                                if (!zIsChannelAndNotMegaGroup && ChatObject.getSendAsPeerId(chat, chatFull) == (-this.dialog_id)) {
                                    z2 = true;
                                }
                            } else {
                                zIsChannelAndNotMegaGroup = false;
                            }
                            if (z2) {
                                editTextCaption = this.messageEditText;
                                i3 = R.string.SendAnonymously;
                                str2 = "SendAnonymously";
                            } else {
                                ChatActivity chatActivity5 = this.parentFragment;
                                if (chatActivity5 != null && chatActivity5.isThreadChat()) {
                                    ChatActivity chatActivity6 = this.parentFragment;
                                    if (!chatActivity6.isTopic) {
                                        if (chatActivity6.isReplyChatComment()) {
                                            editTextCaption = this.messageEditText;
                                            i3 = R.string.Comment;
                                            str2 = "Comment";
                                        } else {
                                            editTextCaption = this.messageEditText;
                                            i3 = R.string.Reply;
                                            str2 = "Reply";
                                        }
                                    }
                                }
                                if (zIsChannelAndNotMegaGroup) {
                                    if (this.silent) {
                                        editTextCaption2 = this.messageEditText;
                                        i2 = R.string.ChannelSilentBroadcast;
                                        str = "ChannelSilentBroadcast";
                                    } else {
                                        editTextCaption2 = this.messageEditText;
                                        i2 = R.string.ChannelBroadcast;
                                        str = "ChannelBroadcast";
                                    }
                                    string = LocaleController.getString(str, i2);
                                } else {
                                    editTextCaption = this.messageEditText;
                                    i = R.string.TypeMessage;
                                }
                            }
                            string2 = LocaleController.getString(str2, i3);
                            editTextCaption.setHintText(string2);
                            editTextCaption2.setHintText(string, z);
                            return;
                        }
                        editTextCaption2 = this.messageEditText;
                        messageObject2 = this.botButtonsMessageObject;
                    }
                    string = messageObject2.messageOwner.reply_markup.placeholder;
                    editTextCaption2.setHintText(string, z);
                    return;
                }
                editTextCaption = this.messageEditText;
                i = R.string.BusinessLinksEnter;
            }
            coloredImageSpan.spaceScaleX = 0.9f;
            return;
        }
        if ("hello".equalsIgnoreCase(this.parentFragment.quickReplyShortcut)) {
            editTextCaption = this.messageEditText;
            i = R.string.BusinessGreetingEnter;
        } else if ("away".equalsIgnoreCase(this.parentFragment.quickReplyShortcut)) {
            editTextCaption = this.messageEditText;
            i = R.string.BusinessAwayEnter;
        } else {
            editTextCaption = this.messageEditText;
            i = R.string.BusinessRepliesEnter;
        }
        string2 = LocaleController.getString(i);
        editTextCaption.setHintText(string2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateGiftButton(boolean z) {
        boolean z2;
        HintView2 hintView2;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.UserFull currentUserInfo = getParentFragment() == null ? null : getParentFragment().getCurrentUserInfo();
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(UserConfig.getInstance(this.currentAccount).getClientUserId());
        TLRPC.User currentUser = getParentFragment() != null ? getParentFragment().getCurrentUser() : null;
        if (MessagesController.getInstance(this.currentAccount).premiumPurchaseBlocked() || getParentFragment() == null || currentUser == null || BuildVars.IS_BILLING_UNAVAILABLE || UserObject.isUserSelf(currentUser) || UserObject.isBot(currentUser) || MessagesController.isSupportUser(currentUser) || currentUserInfo == null) {
            z2 = false;
        } else {
            z2 = true;
            if (!currentUser.premium && MessagesController.getInstance(this.currentAccount).giftAttachMenuIcon && MessagesController.getInstance(this.currentAccount).giftTextFieldIcon) {
                if (!MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("show_gift_for_" + this.parentFragment.getDialogId(), true)) {
                }
            } else if (BirthdayController.isToday(currentUserInfo.birthday)) {
                if (!MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean(Calendar.getInstance().get(1) + "show_gift_for_" + this.parentFragment.getDialogId(), true)) {
                    if ((currentUserInfo.display_gifts_button || (userFull != null && userFull.display_gifts_button)) && ((disallowedGiftsSettings = currentUserInfo.disallowed_stargifts) == null || !disallowedGiftsSettings.disallow_premium_gifts || !disallowedGiftsSettings.disallow_limited_stargifts || !disallowedGiftsSettings.disallow_unlimited_stargifts || !disallowedGiftsSettings.disallow_unique_stargifts)) {
                        ChatActivity chatActivity = this.parentFragment;
                        if (chatActivity == null || chatActivity.getChatMode() != 0) {
                        }
                    }
                }
            }
        }
        if (!z2 && (hintView2 = this.birthdayHint) != null) {
            hintView2.hide();
        }
        if (z2 || this.giftButton != null) {
            createGiftButton();
            AndroidUtilities.updateViewVisibilityAnimated(this.giftButton, z2, 1.0f, z);
            ImageView imageView = this.scheduledButton;
            if (imageView != null && imageView.getVisibility() == 0) {
                int i = z2 ? -AndroidUtilities.dp(48.0f) : 0;
                ImageView imageView2 = this.botButton;
                float fDp = i + AndroidUtilities.dp((imageView2 == null || imageView2.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 48.0f);
                if (z) {
                    this.scheduledButton.animate().translationX(fDp).setDuration(150L).start();
                } else {
                    this.scheduledButton.setTranslationX(fDp);
                }
            }
            if (z2) {
                checkBirthdayHint();
            }
        }
    }

    public void updateRecordButton(TLRPC.Chat chat, TLRPC.UserFull userFull) {
        EmojiView emojiView;
        this.emojiButtonRestricted = false;
        boolean z = true;
        this.stickersEnabled = true;
        this.sendPlainEnabled = true;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        if (chat != null) {
            this.audioVideoButtonContainer.setAlpha((ChatObject.canSendVoice(chat) || (ChatObject.canSendRoundVideo(chat) && this.hasRecordVideo)) ? 1.0f : 0.5f);
            this.stickersEnabled = ChatObject.canSendStickers(chat);
            boolean zCanSendPlain = ChatObject.canSendPlain(chat);
            this.sendPlainEnabled = zCanSendPlain;
            boolean z2 = (this.stickersEnabled || zCanSendPlain) ? false : true;
            this.emojiButtonRestricted = z2;
            this.emojiButtonAlpha = z2 ? 0.5f : 1.0f;
            updateEmojiButtonParams();
            if (!this.emojiButtonRestricted && (emojiView = this.emojiView) != null) {
                emojiView.setStickersBanned(!this.sendPlainEnabled, !this.stickersEnabled, -this.dialog_id);
            }
            this.sendRoundEnabled = ChatObject.canSendRoundVideo(chat);
            this.sendVoiceEnabled = ChatObject.canSendVoice(chat);
        } else if (userFull != null) {
            this.userInfo = userFull;
            this.audioVideoButtonContainer.setAlpha(userFull.voice_messages_forbidden ? 0.5f : 1.0f);
        }
        updateFieldHint(false);
        boolean z3 = this.isInVideoMode;
        if (!this.sendRoundEnabled && z3) {
            z3 = false;
        }
        if (this.sendVoiceEnabled || z3) {
            z = z3;
        } else if (!this.hasRecordVideo) {
            z = false;
        }
        setRecordVideoButtonVisible(z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03a2  */
    /* JADX WARN: Type inference failed for: r4v128 */
    /* JADX WARN: Type inference failed for: r4v75 */
    /* JADX WARN: Type inference failed for: r4v76, types: [android.view.ViewGroup] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void updateRecordInterface(int i, boolean z) {
        ViewGroup.LayoutParams layoutParams;
        boolean zIsRunning;
        Property property;
        char c;
        float f;
        char c2;
        final int i2;
        String str;
        float f2;
        long j;
        float f3;
        float f4;
        char c3;
        float f5;
        ViewGroup.LayoutParams layoutParams2;
        ?? r4;
        Property property2;
        Property property3;
        AnimatorSet animatorSet;
        char c4;
        float f6;
        Runnable runnable = this.moveToSendStateRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.moveToSendStateRunnable = null;
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.voiceEnterTransitionInProgress = false;
        }
        if (this.recordingAudioVideo) {
            if (this.recordInterfaceState == 1) {
                this.lastRecordState = i;
                return;
            }
            final boolean z2 = this.lastRecordState == 3;
            if (!z2) {
                this.voiceOnce = false;
                ControlsView controlsView = this.controlsView;
                if (controlsView != null) {
                    controlsView.periodDrawable.setValue(1, false, false);
                }
                MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
                long j2 = this.dialog_id;
                ChatActivity chatActivity = this.parentFragment;
                mediaDataController.toggleDraftVoiceOnce(j2, (chatActivity == null || !chatActivity.isTopic) ? 0L : chatActivity.getTopicId(), this.voiceOnce);
                this.millisecondsRecorded = 0L;
            }
            createRecordAudioPanel();
            this.recordInterfaceState = 1;
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.setEnabled(false);
            }
            try {
                if (this.wakeLock == null) {
                    PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(536870918, "telegram:audio_record_lock");
                    this.wakeLock = wakeLockNewWakeLock;
                    wakeLockNewWakeLock.acquire();
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            AndroidUtilities.lockOrientation(this.parentActivity);
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.needStartRecordAudio(0);
            }
            AnimatorSet animatorSet2 = this.runningAnimationAudio;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.recordPannelAnimation;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            createRecordPanel();
            FrameLayout frameLayout = this.recordPanel;
            if (frameLayout != null) {
                frameLayout.setVisibility(0);
            }
            createRecordCircle();
            RecordCircle recordCircle2 = this.recordCircle;
            if (recordCircle2 != null) {
                recordCircle2.voiceEnterTransitionInProgress = false;
                recordCircle2.setVisibility(0);
                this.recordCircle.setAmplitude(0.0d);
            }
            ControlsView controlsView2 = this.controlsView;
            if (controlsView2 != null) {
                controlsView2.setVisibility(0);
            }
            RecordDot recordDot = this.recordDot;
            if (recordDot != null) {
                recordDot.resetAlpha();
                this.recordDot.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.recordDot.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.recordDot.enterAnimation = true;
            }
            this.runningAnimationAudio = new AnimatorSet();
            this.recordTimerView.setTranslationX(AndroidUtilities.dp(20.0f));
            this.recordTimerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            if (this.lastRecordState != 3) {
                this.slideText.setTranslationX(AndroidUtilities.dp(20.0f));
                this.slideText.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.slideText.setCancelToProgress(BitmapDescriptorFactory.HUE_RED);
                this.slideText.setSlideX(1.0f);
            } else {
                this.slideText.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                this.slideText.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.slideText.setCancelToProgress(1.0f);
            }
            this.slideText.setEnabled(true);
            this.recordCircle.resetLockTranslation(this.lastRecordState == 3);
            this.recordIsCanceled = false;
            isRecordingStateChanged();
            AnimatorSet animatorSet4 = new AnimatorSet();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, BitmapDescriptorFactory.HUE_RED);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, BitmapDescriptorFactory.HUE_RED);
            RecordDot recordDot2 = this.recordDot;
            Property property4 = View.SCALE_Y;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(recordDot2, (Property<RecordDot, Float>) property4, 1.0f);
            RecordDot recordDot3 = this.recordDot;
            Property property5 = View.SCALE_X;
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(recordDot3, (Property<RecordDot, Float>) property5, 1.0f);
            TimerView timerView = this.recordTimerView;
            Property property6 = View.TRANSLATION_X;
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(timerView, (Property<TimerView, Float>) property6, BitmapDescriptorFactory.HUE_RED);
            TimerView timerView2 = this.recordTimerView;
            Property property7 = View.ALPHA;
            animatorSet4.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5, ObjectAnimator.ofFloat(timerView2, (Property<TimerView, Float>) property7, 1.0f));
            animatorSet4.playTogether(ObjectAnimator.ofFloat(this.slideText, (Property<SlideTextView, Float>) property6, BitmapDescriptorFactory.HUE_RED));
            animatorSet4.playTogether(ObjectAnimator.ofFloat(this.slideText, (Property<SlideTextView, Float>) property7, 1.0f));
            ControlsView controlsView3 = this.controlsView;
            if (controlsView3 != null) {
                animatorSet4.playTogether(ObjectAnimator.ofFloat(controlsView3, (Property<ControlsView, Float>) property7, 1.0f));
            }
            ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
            if (chatActivityEnterViewAnimatedIconView != null) {
                f6 = BitmapDescriptorFactory.HUE_RED;
                animatorSet4.playTogether(ObjectAnimator.ofFloat(chatActivityEnterViewAnimatedIconView, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
            } else {
                f6 = BitmapDescriptorFactory.HUE_RED;
            }
            BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
            if (botCommandsMenuView != null) {
                animatorSet4.playTogether(ObjectAnimator.ofFloat(botCommandsMenuView, (Property<BotCommandsMenuView, Float>) property4, f6), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property5, f6), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property7, f6));
            }
            AnimatorSet animatorSet5 = new AnimatorSet();
            animatorSet5.playTogether(ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, AndroidUtilities.dp(20.0f)), ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property7, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordedAudioPanel, (Property<FrameLayout, Float>) property7, 1.0f));
            if (z2) {
                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.audioTimelineView, (Property<RecordedAudioPlayerView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property5, BitmapDescriptorFactory.HUE_RED));
                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property4, BitmapDescriptorFactory.HUE_RED));
                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.videoTimelineView, (Property<VideoTimelineView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
            }
            ImageView imageView = this.scheduledButton;
            if (imageView != null) {
                animatorSet5.playTogether(ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) property6, AndroidUtilities.dp(30.0f)), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property7, BitmapDescriptorFactory.HUE_RED));
            }
            LinearLayout linearLayout = this.attachLayout;
            if (linearLayout != null) {
                animatorSet5.playTogether(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_TRANSLATION_X, AndroidUtilities.dp(30.0f)), ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, BitmapDescriptorFactory.HUE_RED));
            }
            this.runningAnimationAudio.playTogether(animatorSet4.setDuration(150L), animatorSet5.setDuration(150L), ObjectAnimator.ofFloat(this.recordCircle, (Property<RecordCircle, Float>) this.recordCircleScale, 1.0f).setDuration(300L));
            if (!z2) {
                this.runningAnimationAudio.playTogether(ObjectAnimator.ofFloat(this.recordCircle, (Property<RecordCircle, Float>) this.recordControlsCircleScale, 1.0f).setDuration(300L));
            }
            this.runningAnimationAudio.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.58
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimationAudio)) {
                        ChatActivityEnterView.this.runningAnimationAudio = null;
                    }
                    ChatActivityEnterView.this.isRecordingStateChanged();
                    ChatActivityEnterView.this.slideText.setAlpha(1.0f);
                    ChatActivityEnterView.this.slideText.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    ControlsView controlsView4 = ChatActivityEnterView.this.controlsView;
                    if (controlsView4 != null) {
                        controlsView4.showTooltipIfNeed();
                    }
                    EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
                    if (editTextCaption != null) {
                        editTextCaption.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (z2) {
                        RecordedAudioPlayerView recordedAudioPlayerView = ChatActivityEnterView.this.audioTimelineView;
                        if (recordedAudioPlayerView != null) {
                            recordedAudioPlayerView.setVisibility(8);
                        }
                        FrameLayout frameLayout2 = ChatActivityEnterView.this.recordedAudioPanel;
                        if (frameLayout2 != null) {
                            frameLayout2.setVisibility(8);
                        }
                        ChatActivityEnterView.this.isRecordingStateChanged();
                    }
                }
            });
            this.runningAnimationAudio.setInterpolator(new DecelerateInterpolator());
            this.runningAnimationAudio.start();
            this.recordTimerView.start(this.millisecondsRecorded);
            i2 = i;
        } else {
            if (this.recordIsCanceled && i == 3) {
                return;
            }
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (wakeLock != null) {
                try {
                    wakeLock.release();
                    layoutParams = null;
                } catch (Exception e2) {
                    e = e2;
                    layoutParams = null;
                }
                try {
                    this.wakeLock = null;
                } catch (Exception e3) {
                    e = e3;
                    FileLog.e(e);
                    AndroidUtilities.unlockOrientation(this.parentActivity);
                    this.wasSendTyping = false;
                    if (this.recordInterfaceState != 0) {
                    }
                }
            } else {
                layoutParams = null;
            }
            AndroidUtilities.unlockOrientation(this.parentActivity);
            this.wasSendTyping = false;
            if (this.recordInterfaceState != 0) {
                this.lastRecordState = i;
                return;
            }
            this.accountInstance.getMessagesController().sendTyping(this.dialog_id, getThreadMessageId(), 2, 0);
            this.recordInterfaceState = 0;
            EmojiView emojiView2 = this.emojiView;
            if (emojiView2 != null) {
                emojiView2.setEnabled(true);
            }
            AnimatorSet animatorSet6 = this.runningAnimationAudio;
            if (animatorSet6 != null) {
                zIsRunning = animatorSet6.isRunning();
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView2 != null) {
                    chatActivityEnterViewAnimatedIconView2.setScaleX(1.0f);
                    this.audioVideoSendButton.setScaleY(1.0f);
                }
                this.runningAnimationAudio.removeAllListeners();
                this.runningAnimationAudio.cancel();
            } else {
                zIsRunning = false;
            }
            AnimatorSet animatorSet7 = this.recordPannelAnimation;
            if (animatorSet7 != null) {
                animatorSet7.cancel();
            }
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.setVisibility(0);
            }
            this.runningAnimationAudio = new AnimatorSet();
            if (zIsRunning || i == 4) {
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView3 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView3 != null) {
                    chatActivityEnterViewAnimatedIconView3.setVisibility(0);
                }
                AnimatorSet animatorSet8 = this.runningAnimationAudio;
                ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f);
                ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, this.emojiButtonRestricted ? 0.5f : 1.0f);
                RecordDot recordDot4 = this.recordDot;
                Property property8 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(recordDot4, (Property<RecordDot, Float>) property8, BitmapDescriptorFactory.HUE_RED);
                RecordDot recordDot5 = this.recordDot;
                Property property9 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(recordDot5, (Property<RecordDot, Float>) property9, BitmapDescriptorFactory.HUE_RED);
                ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.recordCircle, (Property<RecordCircle, Float>) this.recordCircleScale, BitmapDescriptorFactory.HUE_RED);
                ObjectAnimator objectAnimatorOfFloat11 = ObjectAnimator.ofFloat(this.recordCircle, (Property<RecordCircle, Float>) this.recordControlsCircleScale, BitmapDescriptorFactory.HUE_RED);
                FrameLayout frameLayout2 = this.audioVideoButtonContainer;
                Property property10 = View.ALPHA;
                animatorSet8.playTogether(objectAnimatorOfFloat6, objectAnimatorOfFloat7, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat10, objectAnimatorOfFloat11, ObjectAnimator.ofFloat(frameLayout2, (Property<FrameLayout, Float>) property10, 1.0f), ObjectAnimator.ofFloat(this.recordTimerView, (Property<TimerView, Float>) property10, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property10, 1.0f), ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property10, 1.0f), ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, "slideToCancelProgress", 1.0f));
                ControlsView controlsView4 = this.controlsView;
                if (controlsView4 != null) {
                    c = 0;
                    property = property10;
                    this.runningAnimationAudio.playTogether(ObjectAnimator.ofFloat(controlsView4, (Property<ControlsView, Float>) property, BitmapDescriptorFactory.HUE_RED));
                    this.controlsView.hideHintView();
                } else {
                    property = property10;
                    c = 0;
                }
                BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
                if (botCommandsMenuView2 != null) {
                    AnimatorSet animatorSet9 = this.runningAnimationAudio;
                    float[] fArr = new float[1];
                    f = 1.0f;
                    fArr[c] = 1.0f;
                    ObjectAnimator objectAnimatorOfFloat12 = ObjectAnimator.ofFloat(botCommandsMenuView2, (Property<BotCommandsMenuView, Float>) property8, fArr);
                    BotCommandsMenuView botCommandsMenuView3 = this.botCommandsMenuButton;
                    float[] fArr2 = new float[1];
                    fArr2[c] = 1.0f;
                    ObjectAnimator objectAnimatorOfFloat13 = ObjectAnimator.ofFloat(botCommandsMenuView3, (Property<BotCommandsMenuView, Float>) property9, fArr2);
                    BotCommandsMenuView botCommandsMenuView4 = this.botCommandsMenuButton;
                    float[] fArr3 = new float[1];
                    fArr3[c] = 1.0f;
                    ObjectAnimator objectAnimatorOfFloat14 = ObjectAnimator.ofFloat(botCommandsMenuView4, (Property<BotCommandsMenuView, Float>) property, fArr3);
                    Animator[] animatorArr = new Animator[3];
                    animatorArr[c] = objectAnimatorOfFloat12;
                    animatorArr[1] = objectAnimatorOfFloat13;
                    animatorArr[2] = objectAnimatorOfFloat14;
                    animatorSet9.playTogether(animatorArr);
                } else {
                    f = 1.0f;
                }
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView4 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView4 != null) {
                    chatActivityEnterViewAnimatedIconView4.setScaleX(f);
                    this.audioVideoSendButton.setScaleY(f);
                    this.runningAnimationAudio.playTogether(ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property, f));
                    this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, true);
                }
                ImageView imageView2 = this.scheduledButton;
                if (imageView2 != null) {
                    c2 = 0;
                    this.runningAnimationAudio.playTogether(ObjectAnimator.ofFloat(imageView2, (Property<ImageView, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property, 1.0f));
                } else {
                    c2 = 0;
                }
                LinearLayout linearLayout2 = this.attachLayout;
                if (linearLayout2 != null) {
                    AnimatorSet animatorSet10 = this.runningAnimationAudio;
                    Property property11 = this.ATTACH_LAYOUT_TRANSLATION_X;
                    float[] fArr4 = new float[1];
                    fArr4[c2] = 0.0f;
                    ObjectAnimator objectAnimatorOfFloat15 = ObjectAnimator.ofFloat(linearLayout2, (Property<LinearLayout, Float>) property11, fArr4);
                    LinearLayout linearLayout3 = this.attachLayout;
                    Property property12 = this.ATTACH_LAYOUT_ALPHA;
                    float[] fArr5 = new float[1];
                    fArr5[c2] = 1.0f;
                    ObjectAnimator objectAnimatorOfFloat16 = ObjectAnimator.ofFloat(linearLayout3, (Property<LinearLayout, Float>) property12, fArr5);
                    Animator[] animatorArr2 = new Animator[2];
                    animatorArr2[c2] = objectAnimatorOfFloat15;
                    animatorArr2[1] = objectAnimatorOfFloat16;
                    animatorSet10.playTogether(animatorArr2);
                }
                this.recordIsCanceled = true;
                isRecordingStateChanged();
                this.runningAnimationAudio.setDuration(150L);
            } else if (i == 3) {
                createRecordAudioPanel();
                createRecordCircle();
                SlideTextView slideTextView = this.slideText;
                if (slideTextView != null) {
                    slideTextView.setEnabled(false);
                }
                if (isInVideoMode()) {
                    RecordedAudioPlayerView recordedAudioPlayerView = this.audioTimelineView;
                    if (recordedAudioPlayerView != null) {
                        recordedAudioPlayerView.setVisibility(8);
                    }
                    FrameLayout frameLayout3 = this.recordedAudioPanel;
                    if (frameLayout3 != null) {
                        frameLayout3.setAlpha(1.0f);
                        this.recordedAudioPanel.setVisibility(0);
                    }
                    RLottieImageView rLottieImageView = this.recordDeleteImageView;
                    if (rLottieImageView != null) {
                        rLottieImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                        this.recordDeleteImageView.stopAnimation();
                    }
                    f5 = 1.0f;
                } else {
                    VideoTimelineView videoTimelineView = this.videoTimelineView;
                    if (videoTimelineView != null) {
                        videoTimelineView.setVisibility(8);
                        isRecordingStateChanged();
                    }
                    FrameLayout frameLayout4 = this.recordedAudioPanel;
                    if (frameLayout4 != null) {
                        frameLayout4.setVisibility(0);
                        f5 = 1.0f;
                        this.recordedAudioPanel.setAlpha(1.0f);
                    } else {
                        f5 = 1.0f;
                    }
                    RecordedAudioPlayerView recordedAudioPlayerView2 = this.audioTimelineView;
                    if (recordedAudioPlayerView2 != null) {
                        recordedAudioPlayerView2.setVisibility(0);
                        this.audioTimelineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    }
                }
                this.sendButtonVisible = true;
                this.snapAnimationProgress = f5;
                this.lockAnimatedTranslation = this.startTranslation;
                this.slideToCancelProgress = f5;
                SlideTextView slideTextView2 = this.slideText;
                if (slideTextView2 != null) {
                    slideTextView2.setCancelToProgress(f5);
                }
                ControlsView controlsView5 = this.controlsView;
                if (controlsView5 != null) {
                    controlsView5.invalidate();
                }
                RLottieImageView rLottieImageView2 = this.recordDeleteImageView;
                if (rLottieImageView2 != null) {
                    rLottieImageView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.recordDeleteImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.recordDeleteImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.recordDeleteImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
                    this.recordDeleteImageView.stopAnimation();
                }
                if (isInVideoMode() || this.shouldDrawRecordedAudioPanelInParent) {
                    this.videoTimelineView.setVisibility(0);
                    layoutParams2 = layoutParams;
                    r4 = layoutParams2;
                } else {
                    ViewGroup viewGroup = (ViewGroup) this.recordedAudioPanel.getParent();
                    layoutParams2 = this.recordedAudioPanel.getLayoutParams();
                    viewGroup.removeView(this.recordedAudioPanel);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(viewGroup.getMeasuredWidth() - (this.editingMessageObject == null ? Math.max(0, this.sendButton.width() - AndroidUtilities.dp(48.0f)) : 0), AndroidUtilities.dp(48.0f));
                    layoutParams3.gravity = 80;
                    this.sizeNotifierLayout.addView(this.recordedAudioPanel, layoutParams3);
                    this.videoTimelineView.setVisibility(8);
                    r4 = viewGroup;
                }
                isRecordingStateChanged();
                AnimatorSet animatorSet11 = new AnimatorSet();
                if (z) {
                    this.audioTimelineView.setAllowDraw(false);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda31
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$updateRecordInterface$55(valueAnimator);
                        }
                    });
                    valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.59
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatActivityEnterView.this.audioTimelineView.setAllowDraw(true);
                            ChatActivityEnterView.this.recordCircle.setTransformToSeekbar(1.0f);
                            ChatActivityEnterView.this.isRecordingStateChanged();
                        }
                    });
                    valueAnimatorOfFloat.setDuration(isInVideoMode() ? 490L : 580L);
                    AnimatorSet animatorSet12 = new AnimatorSet();
                    RecordDot recordDot6 = this.recordDot;
                    Property property13 = View.SCALE_Y;
                    ObjectAnimator objectAnimatorOfFloat17 = ObjectAnimator.ofFloat(recordDot6, (Property<RecordDot, Float>) property13, BitmapDescriptorFactory.HUE_RED);
                    RecordDot recordDot7 = this.recordDot;
                    Property property14 = View.SCALE_X;
                    ObjectAnimator objectAnimatorOfFloat18 = ObjectAnimator.ofFloat(recordDot7, (Property<RecordDot, Float>) property14, BitmapDescriptorFactory.HUE_RED);
                    TimerView timerView3 = this.recordTimerView;
                    Property property15 = View.ALPHA;
                    final ViewGroup.LayoutParams layoutParams4 = layoutParams2;
                    final ViewGroup viewGroup2 = r4;
                    animatorSet12.playTogether(objectAnimatorOfFloat17, objectAnimatorOfFloat18, ObjectAnimator.ofFloat(timerView3, (Property<TimerView, Float>) property15, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordTimerView, (Property<TimerView, Float>) View.TRANSLATION_X, -AndroidUtilities.dp(20.0f)), ObjectAnimator.ofFloat(this.slideText, (Property<SlideTextView, Float>) property15, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property15, 1.0f), ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property13, 1.0f), ObjectAnimator.ofFloat(this.recordDeleteImageView, (Property<RLottieImageView, Float>) property14, 1.0f), ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property15, BitmapDescriptorFactory.HUE_RED));
                    RLottieImageView rLottieImageView3 = this.recordDeleteImageView;
                    if (rLottieImageView3 != null) {
                        rLottieImageView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.recordDeleteImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.recordDeleteImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    }
                    ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView5 = this.audioVideoSendButton;
                    if (chatActivityEnterViewAnimatedIconView5 != null) {
                        property3 = property14;
                        property2 = property13;
                        animatorSet12.playTogether(ObjectAnimator.ofFloat(chatActivityEnterViewAnimatedIconView5, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property15, 1.0f), ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property3, 1.0f), ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property2, 1.0f));
                        this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, true);
                    } else {
                        property2 = property13;
                        property3 = property14;
                    }
                    BotCommandsMenuView botCommandsMenuView5 = this.botCommandsMenuButton;
                    if (botCommandsMenuView5 != null) {
                        animatorSet12.playTogether(ObjectAnimator.ofFloat(botCommandsMenuView5, (Property<BotCommandsMenuView, Float>) property15, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property3, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property2, BitmapDescriptorFactory.HUE_RED));
                    }
                    animatorSet12.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.60
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (ChatActivityEnterView.this.audioVideoSendButton != null) {
                                ChatActivityEnterView.this.audioVideoSendButton.setScaleX(1.0f);
                                ChatActivityEnterView.this.audioVideoSendButton.setScaleY(1.0f);
                            }
                        }
                    });
                    animatorSet12.setDuration(150L);
                    animatorSet12.setStartDelay(150L);
                    if (isInVideoMode()) {
                        this.videoTimelineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        c4 = 0;
                        animatorSet = animatorSet11;
                        animatorSet.playTogether(ObjectAnimator.ofFloat(this.videoTimelineView, (Property<VideoTimelineView, Float>) property15, 1.0f));
                        animatorSet.setDuration(150L);
                        animatorSet.setStartDelay(430L);
                    } else {
                        animatorSet = animatorSet11;
                        c4 = 0;
                    }
                    AnimatorSet animatorSet13 = this.runningAnimationAudio;
                    Animator[] animatorArr3 = new Animator[3];
                    animatorArr3[c4] = animatorSet12;
                    animatorArr3[1] = valueAnimatorOfFloat;
                    animatorArr3[2] = animatorSet;
                    animatorSet13.playTogether(animatorArr3);
                    this.runningAnimationAudio.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.61
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (viewGroup2 != null) {
                                ChatActivityEnterView.this.sizeNotifierLayout.removeView(ChatActivityEnterView.this.recordedAudioPanel);
                                viewGroup2.addView(ChatActivityEnterView.this.recordedAudioPanel, layoutParams4);
                            }
                            ChatActivityEnterView.this.recordedAudioPanel.setAlpha(1.0f);
                            ChatActivityEnterView.this.audioTimelineView.setAlpha(1.0f);
                            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                            chatActivityEnterView.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                            chatActivityEnterView.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                            chatActivityEnterView.updateEmojiButtonParams();
                            if (ChatActivityEnterView.this.botCommandsMenuButton != null) {
                                ChatActivityEnterView.this.botCommandsMenuButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                ChatActivityEnterView.this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                                ChatActivityEnterView.this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                            }
                            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                            if (chatActivityEnterView2.controlsView == null || !chatActivityEnterView2.onceVisible || chatActivityEnterView2.voiceOnce || MessagesController.getGlobalMainSettings().getInt("voiceoncehint", 0) >= 3) {
                                return;
                            }
                            ChatActivityEnterView.this.controlsView.showOnceHint();
                        }
                    });
                } else {
                    createRecordPanel();
                    this.recordCircleScale.set(this.recordCircle, Float.valueOf(1.0f));
                    this.recordCircle.setTransformToSeekbar(1.0f);
                    if (!isInVideoMode()) {
                        float f7 = this.transformToSeekbar;
                        if (f7 != BitmapDescriptorFactory.HUE_RED && this.audioTimelineView != null) {
                            this.audioTimelineView.setAlpha(CubicBezierInterpolator.EASE_BOTH.getInterpolation(Math.max(BitmapDescriptorFactory.HUE_RED, ((f7 - 0.38f) - 0.25f) / 0.37f)));
                            this.audioTimelineView.invalidate();
                        }
                    }
                    this.recordDot.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.recordDot.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.recordTimerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.recordTimerView.setTranslationX(-AndroidUtilities.dp(20.0f));
                    this.slideText.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.recordDeleteImageView.setAlpha(1.0f);
                    this.recordDeleteImageView.setScaleY(1.0f);
                    this.recordDeleteImageView.setScaleX(1.0f);
                    this.EMOJI_BUTTON_SCALE.set(this.emojiButton, Float.valueOf(BitmapDescriptorFactory.HUE_RED));
                    this.EMOJI_BUTTON_ALPHA.set(this.emojiButton, Float.valueOf(BitmapDescriptorFactory.HUE_RED));
                    this.messageEditText.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView6 = this.audioVideoSendButton;
                    if (chatActivityEnterViewAnimatedIconView6 != null) {
                        chatActivityEnterViewAnimatedIconView6.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, z);
                        this.audioVideoSendButton.setAlpha(1.0f);
                        this.audioVideoSendButton.setScaleX(1.0f);
                        this.audioVideoSendButton.setScaleY(1.0f);
                    }
                    BotCommandsMenuView botCommandsMenuView6 = this.botCommandsMenuButton;
                    if (botCommandsMenuView6 != null) {
                        botCommandsMenuView6.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    }
                    if (isInVideoMode()) {
                        this.videoTimelineView.setAlpha(1.0f);
                    }
                    if (r4 != 0) {
                        this.sizeNotifierLayout.removeView(this.recordedAudioPanel);
                        r4.addView(this.recordedAudioPanel, layoutParams2);
                    }
                    this.recordedAudioPanel.setAlpha(1.0f);
                    this.audioTimelineView.setAlpha(1.0f);
                    this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                    this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                    updateEmojiButtonParams();
                    isRecordingStateChanged();
                }
            } else if (i == 2 || i == 5) {
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView7 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView7 != null) {
                    chatActivityEnterViewAnimatedIconView7.setVisibility(0);
                }
                this.recordIsCanceled = true;
                isRecordingStateChanged();
                AnimatorSet animatorSet14 = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat19 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f);
                ObjectAnimator objectAnimatorOfFloat20 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, this.emojiButtonRestricted ? 0.5f : 1.0f);
                RecordDot recordDot8 = this.recordDot;
                Property property16 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat21 = ObjectAnimator.ofFloat(recordDot8, (Property<RecordDot, Float>) property16, BitmapDescriptorFactory.HUE_RED);
                RecordDot recordDot9 = this.recordDot;
                Property property17 = View.SCALE_X;
                animatorSet14.playTogether(objectAnimatorOfFloat19, objectAnimatorOfFloat20, objectAnimatorOfFloat21, ObjectAnimator.ofFloat(recordDot9, (Property<RecordDot, Float>) property17, BitmapDescriptorFactory.HUE_RED));
                ControlsView controlsView6 = this.controlsView;
                if (controlsView6 != null) {
                    animatorSet14.playTogether(ObjectAnimator.ofFloat(controlsView6, (Property<ControlsView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    this.controlsView.hideHintView();
                }
                BotCommandsMenuView botCommandsMenuView7 = this.botCommandsMenuButton;
                if (botCommandsMenuView7 != null) {
                    animatorSet14.playTogether(ObjectAnimator.ofFloat(botCommandsMenuView7, (Property<BotCommandsMenuView, Float>) property16, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property17, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) View.ALPHA, 1.0f));
                }
                AnimatorSet animatorSet15 = new AnimatorSet();
                TimerView timerView4 = this.recordTimerView;
                Property property18 = View.ALPHA;
                ObjectAnimator objectAnimatorOfFloat22 = ObjectAnimator.ofFloat(timerView4, (Property<TimerView, Float>) property18, BitmapDescriptorFactory.HUE_RED);
                TimerView timerView5 = this.recordTimerView;
                Property property19 = View.TRANSLATION_X;
                animatorSet15.playTogether(objectAnimatorOfFloat22, ObjectAnimator.ofFloat(timerView5, (Property<TimerView, Float>) property19, -AndroidUtilities.dp(20.0f)), ObjectAnimator.ofFloat(this.slideText, (Property<SlideTextView, Float>) property18, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.slideText, (Property<SlideTextView, Float>) property19, -AndroidUtilities.dp(20.0f)));
                if (i != 5) {
                    this.audioVideoButtonContainer.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.audioVideoButtonContainer.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    ImageView imageView3 = this.attachButton;
                    if (imageView3 != null && imageView3.getVisibility() == 0) {
                        this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    }
                    ImageView imageView4 = this.botButton;
                    if (imageView4 != null && imageView4.getVisibility() == 0) {
                        this.botButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        this.botButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    }
                    str = "slideToCancelProgress";
                    animatorSet14.playTogether(ObjectAnimator.ofFloat(this, "slideToCancelProgress", 1.0f), ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property17, 1.0f), ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property16, 1.0f), ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property18, 1.0f));
                    LinearLayout linearLayout4 = this.attachLayout;
                    if (linearLayout4 != null) {
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(linearLayout4, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f), ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    }
                    ImageView imageView5 = this.attachButton;
                    if (imageView5 != null) {
                        f3 = 1.0f;
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(imageView5, (Property<ImageView, Float>) property17, 1.0f), ObjectAnimator.ofFloat(this.attachButton, (Property<ImageView, Float>) property16, 1.0f));
                    } else {
                        f3 = 1.0f;
                    }
                    ImageView imageView6 = this.botButton;
                    if (imageView6 != null) {
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(imageView6, (Property<ImageView, Float>) property17, f3), ObjectAnimator.ofFloat(this.botButton, (Property<ImageView, Float>) property16, f3));
                    }
                    ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView8 = this.audioVideoSendButton;
                    if (chatActivityEnterViewAnimatedIconView8 != null) {
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(chatActivityEnterViewAnimatedIconView8, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property18, f3));
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property17, f3));
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property16, f3));
                        this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, true);
                    }
                    ImageView imageView7 = this.scheduledButton;
                    if (imageView7 != null) {
                        animatorSet14.playTogether(ObjectAnimator.ofFloat(imageView7, (Property<ImageView, Float>) property18, 1.0f), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property19, BitmapDescriptorFactory.HUE_RED));
                    }
                    j = 150;
                } else {
                    str = "slideToCancelProgress";
                    AnimatorSet animatorSet16 = new AnimatorSet();
                    animatorSet16.playTogether(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, (Property<FrameLayout, Float>) property18, 1.0f));
                    LinearLayout linearLayout5 = this.attachLayout;
                    if (linearLayout5 != null) {
                        f2 = 1.0f;
                        animatorSet16.playTogether(ObjectAnimator.ofFloat(linearLayout5, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                    } else {
                        f2 = 1.0f;
                    }
                    ImageView imageView8 = this.scheduledButton;
                    if (imageView8 != null) {
                        animatorSet16.playTogether(ObjectAnimator.ofFloat(imageView8, (Property<ImageView, Float>) property18, f2), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) property19, BitmapDescriptorFactory.HUE_RED));
                    }
                    j = 150;
                    animatorSet16.setDuration(150L);
                    animatorSet16.setStartDelay(110L);
                    animatorSet16.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.62
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            if (ChatActivityEnterView.this.audioVideoSendButton != null) {
                                ChatActivityEnterView.this.audioVideoSendButton.setAlpha(1.0f);
                            }
                        }
                    });
                    this.runningAnimationAudio.playTogether(animatorSet16);
                }
                animatorSet14.setDuration(j);
                animatorSet14.setStartDelay(700L);
                animatorSet15.setDuration(200L);
                animatorSet15.setStartDelay(200L);
                this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                updateMessageTextParams();
                ObjectAnimator objectAnimatorOfFloat23 = ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property18, 1.0f);
                objectAnimatorOfFloat23.setStartDelay(this.emojiButtonPaddingAlpha == 1.0f ? 300L : 700L);
                objectAnimatorOfFloat23.setDuration(200L);
                this.runningAnimationAudio.playTogether(animatorSet14, animatorSet15, objectAnimatorOfFloat23, ObjectAnimator.ofFloat(this, "lockAnimatedTranslation", this.startTranslation).setDuration(200L));
                if (i == 5) {
                    this.recordCircle.canceledByGesture();
                    ObjectAnimator duration = ObjectAnimator.ofFloat(this, str, 1.0f).setDuration(200L);
                    duration.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                    this.runningAnimationAudio.playTogether(duration);
                } else {
                    ObjectAnimator objectAnimatorOfFloat24 = ObjectAnimator.ofFloat(this, "exitTransition", 1.0f);
                    objectAnimatorOfFloat24.setDuration(360L);
                    objectAnimatorOfFloat24.setStartDelay(490L);
                    this.runningAnimationAudio.playTogether(objectAnimatorOfFloat24);
                }
                RecordDot recordDot10 = this.recordDot;
                if (recordDot10 != null) {
                    recordDot10.playDeleteAnimation();
                }
            } else {
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView9 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView9 != null) {
                    chatActivityEnterViewAnimatedIconView9.setVisibility(0);
                }
                AnimatorSet animatorSet17 = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat25 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f);
                ObjectAnimator objectAnimatorOfFloat26 = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_ALPHA, this.emojiButtonRestricted ? 0.5f : 1.0f);
                RecordDot recordDot11 = this.recordDot;
                Property property20 = View.SCALE_Y;
                ObjectAnimator objectAnimatorOfFloat27 = ObjectAnimator.ofFloat(recordDot11, (Property<RecordDot, Float>) property20, BitmapDescriptorFactory.HUE_RED);
                RecordDot recordDot12 = this.recordDot;
                Property property21 = View.SCALE_X;
                ObjectAnimator objectAnimatorOfFloat28 = ObjectAnimator.ofFloat(recordDot12, (Property<RecordDot, Float>) property21, BitmapDescriptorFactory.HUE_RED);
                FrameLayout frameLayout5 = this.audioVideoButtonContainer;
                Property property22 = View.ALPHA;
                animatorSet17.playTogether(objectAnimatorOfFloat25, objectAnimatorOfFloat26, objectAnimatorOfFloat27, objectAnimatorOfFloat28, ObjectAnimator.ofFloat(frameLayout5, (Property<FrameLayout, Float>) property22, 1.0f));
                ControlsView controlsView7 = this.controlsView;
                if (controlsView7 != null) {
                    animatorSet17.playTogether(ObjectAnimator.ofFloat(controlsView7, (Property<ControlsView, Float>) property22, BitmapDescriptorFactory.HUE_RED));
                    this.controlsView.hideHintView();
                }
                BotCommandsMenuView botCommandsMenuView8 = this.botCommandsMenuButton;
                if (botCommandsMenuView8 != null) {
                    f4 = 1.0f;
                    animatorSet17.playTogether(ObjectAnimator.ofFloat(botCommandsMenuView8, (Property<BotCommandsMenuView, Float>) property20, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property21, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, (Property<BotCommandsMenuView, Float>) property22, 1.0f));
                } else {
                    f4 = 1.0f;
                }
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView10 = this.audioVideoSendButton;
                if (chatActivityEnterViewAnimatedIconView10 != null) {
                    chatActivityEnterViewAnimatedIconView10.setScaleX(f4);
                    this.audioVideoSendButton.setScaleY(f4);
                    animatorSet17.playTogether(ObjectAnimator.ofFloat(this.audioVideoSendButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property22, f4));
                    this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, true);
                }
                if (this.attachLayout != null) {
                    this.attachLayoutTranslationX = BitmapDescriptorFactory.HUE_RED;
                    updateAttachLayoutParams();
                    c3 = 0;
                    animatorSet17.playTogether(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                } else {
                    c3 = 0;
                }
                ImageView imageView9 = this.scheduledButton;
                if (imageView9 != null) {
                    imageView9.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    ImageView imageView10 = this.scheduledButton;
                    float[] fArr6 = new float[1];
                    fArr6[c3] = 1.0f;
                    ObjectAnimator objectAnimatorOfFloat29 = ObjectAnimator.ofFloat(imageView10, (Property<ImageView, Float>) property22, fArr6);
                    Animator[] animatorArr4 = new Animator[1];
                    animatorArr4[c3] = objectAnimatorOfFloat29;
                    animatorSet17.playTogether(animatorArr4);
                }
                animatorSet17.setDuration(150L);
                animatorSet17.setStartDelay(200L);
                AnimatorSet animatorSet18 = new AnimatorSet();
                TimerView timerView6 = this.recordTimerView;
                float[] fArr7 = new float[1];
                fArr7[c3] = 0.0f;
                ObjectAnimator objectAnimatorOfFloat30 = ObjectAnimator.ofFloat(timerView6, (Property<TimerView, Float>) property22, fArr7);
                TimerView timerView7 = this.recordTimerView;
                Property property23 = View.TRANSLATION_X;
                float[] fArr8 = new float[1];
                fArr8[c3] = AndroidUtilities.dp(40.0f);
                ObjectAnimator objectAnimatorOfFloat31 = ObjectAnimator.ofFloat(timerView7, (Property<TimerView, Float>) property23, fArr8);
                SlideTextView slideTextView3 = this.slideText;
                float[] fArr9 = new float[1];
                fArr9[c3] = 0.0f;
                ObjectAnimator objectAnimatorOfFloat32 = ObjectAnimator.ofFloat(slideTextView3, (Property<SlideTextView, Float>) property22, fArr9);
                SlideTextView slideTextView4 = this.slideText;
                float[] fArr10 = new float[1];
                fArr10[c3] = AndroidUtilities.dp(40.0f);
                ObjectAnimator objectAnimatorOfFloat33 = ObjectAnimator.ofFloat(slideTextView4, (Property<SlideTextView, Float>) property23, fArr10);
                Animator[] animatorArr5 = new Animator[4];
                animatorArr5[c3] = objectAnimatorOfFloat30;
                animatorArr5[1] = objectAnimatorOfFloat31;
                animatorArr5[2] = objectAnimatorOfFloat32;
                animatorArr5[3] = objectAnimatorOfFloat33;
                animatorSet18.playTogether(animatorArr5);
                animatorSet18.setDuration(150L);
                float[] fArr11 = new float[1];
                fArr11[c3] = 1.0f;
                ObjectAnimator objectAnimatorOfFloat34 = ObjectAnimator.ofFloat(this, "exitTransition", fArr11);
                objectAnimatorOfFloat34.setDuration(this.messageTransitionIsRunning ? 220L : 360L);
                this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                updateMessageTextParams();
                ObjectAnimator objectAnimatorOfFloat35 = ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) property22, 1.0f);
                objectAnimatorOfFloat35.setStartDelay(this.emojiButtonPaddingAlpha == 1.0f ? 150L : 450L);
                objectAnimatorOfFloat35.setDuration(200L);
                this.runningAnimationAudio.playTogether(animatorSet17, animatorSet18, objectAnimatorOfFloat35, objectAnimatorOfFloat34);
            }
            i2 = i;
            this.runningAnimationAudio.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.63
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatActivityEnterView.this.runningAnimationAudio)) {
                        if (i2 != 3 && ChatActivityEnterView.this.messageEditText != null && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                            ChatActivityEnterView.this.messageEditText.requestFocus();
                        }
                        ChatActivityEnterView.this.cancelRecordInterfaceInternal();
                        if (i2 != 3) {
                            ControlsView controlsView8 = ChatActivityEnterView.this.controlsView;
                            if (controlsView8 != null) {
                                controlsView8.setVisibility(8);
                            }
                            if (ChatActivityEnterView.this.recordCircle != null) {
                                ChatActivityEnterView.this.recordCircle.setSendButtonInvisible();
                            }
                        }
                    }
                }
            });
            this.runningAnimationAudio.start();
            TimerView timerView8 = this.recordTimerView;
            if (timerView8 != null) {
                timerView8.stop();
            }
        }
        this.delegate.onAudioVideoInterfaceUpdated();
        updateSendAsButton();
        this.lastRecordState = i2;
    }

    public void updateScheduleButton(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            TLRPC.Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
            this.silent = MessagesController.getNotificationsSettings(this.currentAccount).getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + this.dialog_id, false);
            z2 = ChatObject.isChannel(chat) && (chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.post_messages)) && !chat.megagroup;
            this.canWriteToChannel = z2;
            if (this.notifyButton != null) {
                if (this.notifySilentDrawable == null) {
                    this.notifySilentDrawable = new CrossOutDrawable(getContext(), R.drawable.input_notify_on, Theme.key_chat_messagePanelIcons);
                }
                this.notifySilentDrawable.setCrossOut(this.silent, false);
                this.notifyButton.setImageDrawable(this.notifySilentDrawable);
            } else {
                z2 = false;
            }
            LinearLayout linearLayout = this.attachLayout;
            if (linearLayout != null) {
                updateFieldRight(linearLayout.getVisibility() == 0 ? 1 : 0);
            }
        } else {
            z2 = false;
        }
        boolean z3 = (this.delegate == null || isInScheduleMode() || !this.delegate.hasScheduledMessages()) ? false : true;
        final boolean z4 = (!z3 || this.scheduleButtonHidden || this.recordingAudioVideo) ? false : true;
        if (z4) {
            createScheduledButton();
        }
        ImageView imageView4 = this.scheduledButton;
        float f = 96.0f;
        if (imageView4 == null) {
            ImageView imageView5 = this.notifyButton;
            if (imageView5 != null) {
                int i = (z3 || !z2) ? 8 : 0;
                if (i != imageView5.getVisibility()) {
                    this.notifyButton.setVisibility(i);
                    LinearLayout linearLayout2 = this.attachLayout;
                    if (linearLayout2 != null) {
                        ImageView imageView6 = this.botButton;
                        linearLayout2.setPivotX(AndroidUtilities.dp(((imageView6 == null || imageView6.getVisibility() == 8) && ((imageView = this.notifyButton) == null || imageView.getVisibility() == 8)) ? 48.0f : 96.0f));
                    }
                }
            }
        } else {
            if ((imageView4.getTag() != null && z4) || (this.scheduledButton.getTag() == null && !z4)) {
                if (this.notifyButton != null) {
                    int i2 = (z3 || !z2 || this.scheduledButton.getVisibility() == 0) ? 8 : 0;
                    if (i2 != this.notifyButton.getVisibility()) {
                        this.notifyButton.setVisibility(i2);
                        LinearLayout linearLayout3 = this.attachLayout;
                        if (linearLayout3 != null) {
                            ImageView imageView7 = this.botButton;
                            if ((imageView7 == null || imageView7.getVisibility() == 8) && ((imageView3 = this.notifyButton) == null || imageView3.getVisibility() == 8)) {
                                f = 48.0f;
                            }
                            linearLayout3.setPivotX(AndroidUtilities.dp(f));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            this.scheduledButton.setTag(z4 ? 1 : null);
        }
        AnimatorSet animatorSet = this.scheduledButtonAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.scheduledButtonAnimation = null;
        }
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (!z || z2) {
            ImageView imageView8 = this.scheduledButton;
            if (imageView8 != null) {
                imageView8.setVisibility(z4 ? 0 : 8);
                ImageView imageView9 = this.scheduledButton;
                if (z4) {
                    f2 = 1.0f;
                }
                imageView9.setAlpha(f2);
                this.scheduledButton.setScaleX(z4 ? 1.0f : 0.1f);
                this.scheduledButton.setScaleY(z4 ? 1.0f : 0.1f);
                ImageView imageView10 = this.notifyButton;
                if (imageView10 != null) {
                    imageView10.setVisibility((!z2 || this.scheduledButton.getVisibility() == 0) ? 8 : 0);
                }
                ImageView imageView11 = this.giftButton;
                if (imageView11 != null && imageView11.getVisibility() == 0) {
                    this.scheduledButton.setTranslationX(-AndroidUtilities.dp(48.0f));
                }
            } else {
                ImageView imageView12 = this.notifyButton;
                if (imageView12 != null) {
                    imageView12.setVisibility(z2 ? 0 : 8);
                }
            }
        } else {
            ImageView imageView13 = this.scheduledButton;
            if (imageView13 != null) {
                if (z4) {
                    imageView13.setVisibility(0);
                }
                this.scheduledButton.setPivotX(AndroidUtilities.dp(24.0f));
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.scheduledButtonAnimation = animatorSet2;
                ImageView imageView14 = this.scheduledButton;
                Property property = View.ALPHA;
                if (z4) {
                    f2 = 1.0f;
                }
                animatorSet2.playTogether(ObjectAnimator.ofFloat(imageView14, (Property<ImageView, Float>) property, f2), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.SCALE_X, z4 ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.scheduledButton, (Property<ImageView, Float>) View.SCALE_Y, z4 ? 1.0f : 0.1f));
                this.scheduledButtonAnimation.setDuration(180L);
                this.scheduledButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.66
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.scheduledButtonAnimation = null;
                        if (z4) {
                            return;
                        }
                        ChatActivityEnterView.this.scheduledButton.setVisibility(8);
                    }
                });
                this.scheduledButtonAnimation.start();
            }
        }
        LinearLayout linearLayout4 = this.attachLayout;
        if (linearLayout4 != null) {
            ImageView imageView15 = this.botButton;
            if ((imageView15 == null || imageView15.getVisibility() == 8) && ((imageView2 = this.notifyButton) == null || imageView2.getVisibility() == 8)) {
                f = 48.0f;
            }
            linearLayout4.setPivotX(AndroidUtilities.dp(f));
        }
    }

    public void updateSendAsButton() {
        updateSendAsButton(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateSendAsButton(boolean z) {
        float f;
        float f2;
        SenderSelectView senderSelectView;
        SenderSelectView senderSelectView2;
        String string;
        SenderSelectView senderSelectView3;
        FrameLayout frameLayout;
        if (this.parentFragment == null || this.delegate == null) {
            return;
        }
        createMessageEditText();
        TLRPC.Chat chat = this.parentFragment.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
        TLRPC.ChatFull chatFull = this.parentFragment.getMessagesController().getChatFull(-this.dialog_id);
        TLRPC.Peer peer = chatFull != null ? chatFull.default_send_as : null;
        if (peer == null && this.delegate.getSendAsPeers() != null && !this.delegate.getSendAsPeers().peers.isEmpty()) {
            peer = ((TLRPC.TL_sendAsPeer) this.delegate.getSendAsPeers().peers.get(0)).peer;
        }
        boolean z2 = peer != null && (this.delegate.getSendAsPeers() == null || this.delegate.getSendAsPeers().peers.size() > 1) && !isEditingMessage() && !isRecordingAudioVideo() && (((frameLayout = this.recordedAudioPanel) == null || frameLayout.getVisibility() != 0) && ((!ChatObject.isChannelAndNotMegaGroup(chat) || ChatObject.canSendAsPeers(chat)) && !ChatObject.isMonoForum(chat)));
        if (z2) {
            createSenderSelectView();
        }
        if (peer != null) {
            if (peer.channel_id != 0) {
                TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer.channel_id));
                if (chat2 != null && (senderSelectView3 = this.senderSelectView) != null) {
                    senderSelectView3.setAvatar(chat2);
                    senderSelectView2 = this.senderSelectView;
                    string = LocaleController.formatString(R.string.AccDescrSendAs, chat2.title);
                    senderSelectView2.setContentDescription(string);
                }
            } else {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer.user_id));
                if (user != null && (senderSelectView = this.senderSelectView) != null) {
                    senderSelectView.setAvatar(user);
                    senderSelectView2 = this.senderSelectView;
                    string = LocaleController.formatString(R.string.AccDescrSendAs, ContactsController.formatName(user.first_name, user.last_name));
                    senderSelectView2.setContentDescription(string);
                }
            }
        }
        SenderSelectView senderSelectView4 = this.senderSelectView;
        boolean z3 = senderSelectView4 != null && senderSelectView4.getVisibility() == 0;
        int iDp = AndroidUtilities.dp(2.0f);
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = z2 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        float f5 = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        SenderSelectView senderSelectView5 = this.senderSelectView;
        if (senderSelectView5 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) senderSelectView5.getLayoutParams();
            f = z2 ? ((-this.senderSelectView.getLayoutParams().width) - marginLayoutParams.leftMargin) - iDp : BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                f2 = ((-this.senderSelectView.getLayoutParams().width) - marginLayoutParams.leftMargin) - iDp;
            }
            if (z3 == z2) {
                SenderSelectView senderSelectView6 = this.senderSelectView;
                ValueAnimator valueAnimator = senderSelectView6 == null ? null : (ValueAnimator) senderSelectView6.getTag();
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.senderSelectView.setTag(null);
                }
                if (this.parentFragment.getOtherSameChatsDiff() != 0 || !this.parentFragment.fragmentOpened || !z) {
                    if (z2) {
                        createSenderSelectView();
                    }
                    SenderSelectView senderSelectView7 = this.senderSelectView;
                    if (senderSelectView7 != null) {
                        senderSelectView7.setVisibility(z2 ? 0 : 8);
                        this.senderSelectView.setTranslationX(f2);
                    }
                    if (z2) {
                        f3 = f2;
                    }
                    this.emojiButton.setTranslationX(f3);
                    this.messageTextTranslationX = f3;
                    updateMessageTextParams();
                    SenderSelectView senderSelectView8 = this.senderSelectView;
                    if (senderSelectView8 != null) {
                        senderSelectView8.setAlpha(f5);
                        this.senderSelectView.setTag(null);
                        return;
                    }
                    return;
                }
                ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
                SenderSelectView senderSelectView9 = this.senderSelectView;
                if (senderSelectView9 != null) {
                    senderSelectView9.setTranslationX(f);
                }
                this.messageTextTranslationX = f;
                updateMessageTextParams();
                final float f6 = f;
                final float f7 = f2;
                final float f8 = f4;
                final float f9 = f5;
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda14
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateSendAsButton$67(f6, f7, f8, f9, valueAnimator2);
                    }
                });
                final boolean z4 = z2;
                final float f10 = f4;
                final float f11 = f;
                final float f12 = f2;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.67
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        float translationX;
                        if (z4) {
                            ChatActivityEnterView.this.createSenderSelectView();
                        }
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setVisibility(z4 ? 0 : 8);
                            ChatActivityEnterView.this.senderSelectView.setAlpha(f9);
                            ChatActivityEnterView.this.senderSelectView.setTranslationX(f12);
                            translationX = ChatActivityEnterView.this.senderSelectView.getTranslationX();
                        } else {
                            translationX = BitmapDescriptorFactory.HUE_RED;
                        }
                        ChatActivityEnterView.this.emojiButton.setTranslationX(translationX);
                        ChatActivityEnterView.this.messageTextTranslationX = translationX;
                        ChatActivityEnterView.this.updateMessageTextParams();
                        ChatActivityEnterView.this.requestLayout();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z4) {
                            return;
                        }
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setVisibility(8);
                        }
                        ChatActivityEnterView.this.emojiButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ChatActivityEnterView.this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        ChatActivityEnterView.this.updateMessageTextParams();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        float translationX;
                        if (z4) {
                            ChatActivityEnterView.this.createSenderSelectView();
                            ChatActivityEnterView.this.senderSelectView.setVisibility(0);
                        }
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setAlpha(f10);
                            ChatActivityEnterView.this.senderSelectView.setTranslationX(f11);
                            translationX = ChatActivityEnterView.this.senderSelectView.getTranslationX();
                        } else {
                            translationX = BitmapDescriptorFactory.HUE_RED;
                        }
                        ChatActivityEnterView.this.emojiButton.setTranslationX(translationX);
                        ChatActivityEnterView.this.messageTextTranslationX = translationX;
                        ChatActivityEnterView.this.updateMessageTextParams();
                        if (ChatActivityEnterView.this.botCommandsMenuButton == null || ChatActivityEnterView.this.botCommandsMenuButton.getTag() != null) {
                            return;
                        }
                        ChatActivityEnterView.this.animationParamsX.clear();
                    }
                });
                duration.start();
                SenderSelectView senderSelectView10 = this.senderSelectView;
                if (senderSelectView10 != null) {
                    senderSelectView10.setTag(duration);
                    return;
                }
                return;
            }
            return;
        }
        f = BitmapDescriptorFactory.HUE_RED;
        f2 = BitmapDescriptorFactory.HUE_RED;
        if (z3 == z2) {
        }
    }

    public void updateSendButtonPaid() {
        long starsPrice = getStarsPrice();
        if (starsPrice > 0) {
            starsPrice *= getMessagesCount();
        }
        if (this.paidMessagesPrice != starsPrice) {
            View sendButtonInternal = getSendButtonInternal();
            this.paidMessagesPrice = starsPrice;
            View sendButtonInternal2 = getSendButtonInternal();
            if (sendButtonInternal != sendButtonInternal2) {
                sendButtonInternal2.setVisibility(sendButtonInternal.getVisibility());
                sendButtonInternal2.setAlpha(sendButtonInternal.getAlpha());
                sendButtonInternal2.setScaleX(sendButtonInternal.getScaleX());
                sendButtonInternal2.setScaleY(sendButtonInternal.getScaleY());
                sendButtonInternal.setVisibility(8);
            }
            if (starsPrice > 0) {
                this.sendButton.setStarsPrice(starsPrice, 1);
            }
            updateFieldRight(this.lastAttachVisible);
        }
    }
}
