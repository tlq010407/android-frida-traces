package org.telegram.messenger;

import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.URLSpan;
import android.util.Base64;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.BufferedReader;
import java.io.File;
import java.io.StringReader;
import java.net.URLEncoder;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars$StarGift;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.tgnet.tl.TL_stories$TL_storyItemDeleted;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.Reactions.ReactionsUtils;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.TranscribeButton;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanBotCommand;
import org.telegram.ui.Components.URLSpanBrowser;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanNoUnderlineBold;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.Components.WebPlayerView;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PeerColorActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.web.BotWebViewContainer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MessageObject {
    public static final int ENTITIES_ALL = 0;
    public static final int ENTITIES_ONLY_HASHTAGS = 1;
    private static final int LINES_PER_BLOCK = 10;
    private static final int LINES_PER_BLOCK_WITH_EMOJI = 5;
    public static final int MESSAGE_SEND_STATE_EDITING = 3;
    public static final int MESSAGE_SEND_STATE_SENDING = 1;
    public static final int MESSAGE_SEND_STATE_SEND_ERROR = 2;
    public static final int MESSAGE_SEND_STATE_SENT = 0;
    public static final int POSITION_FLAG_BOTTOM = 8;
    public static final int POSITION_FLAG_LEFT = 1;
    public static final int POSITION_FLAG_RIGHT = 2;
    public static final int POSITION_FLAG_TOP = 4;
    public static final int SUGGESTION_FLAG_EDIT_MEDIA = 8;
    public static final int SUGGESTION_FLAG_EDIT_PRCIE = 1;
    public static final int SUGGESTION_FLAG_EDIT_TEXT = 4;
    public static final int SUGGESTION_FLAG_EDIT_TIME = 2;
    public static final int TYPE_ACTION_PHOTO = 11;
    public static final int TYPE_ACTION_WALLPAPER = 22;
    public static final int TYPE_ANIMATED_STICKER = 15;
    public static final int TYPE_CONTACT = 12;
    public static final int TYPE_DATE = 10;
    public static final int TYPE_EMOJIS = 19;
    public static final int TYPE_EXTENDED_MEDIA_PREVIEW = 20;
    public static final int TYPE_FILE = 9;
    public static final int TYPE_GEO = 4;
    public static final int TYPE_GIF = 8;
    public static final int TYPE_GIFT_PREMIUM = 18;
    public static final int TYPE_GIFT_PREMIUM_CHANNEL = 25;
    public static final int TYPE_GIFT_STARS = 30;
    public static final int TYPE_GIVEAWAY = 26;
    public static final int TYPE_GIVEAWAY_RESULTS = 28;
    public static final int TYPE_JOINED_CHANNEL = 27;
    public static final int TYPE_LOADING = 6;
    public static final int TYPE_MUSIC = 14;
    public static final int TYPE_PAID_MEDIA = 29;
    public static final int TYPE_PHONE_CALL = 16;
    public static final int TYPE_PHOTO = 1;
    public static final int TYPE_POLL = 17;
    public static final int TYPE_ROUND_VIDEO = 5;
    public static final int TYPE_STICKER = 13;
    public static final int TYPE_STORY = 23;
    public static final int TYPE_STORY_MENTION = 24;
    public static final int TYPE_SUGGEST_PHOTO = 21;
    public static final int TYPE_TEXT = 0;
    public static final int TYPE_VIDEO = 3;
    public static final int TYPE_VOICE = 2;
    private static CharSequence channelSpan;
    static final String[] excludeWords = {" vs. ", " vs ", " versus ", " ft. ", " ft ", " featuring ", " feat. ", " feat ", " presents ", " pres. ", " pres ", " and ", " & ", " . "};
    private static CharSequence groupSpan;
    public static Pattern instagramUrlPattern;
    private static Pattern loginCodePattern;
    public static Pattern urlPattern;
    private static CharSequence[] userSpan;
    public static Pattern videoTimeUrlPattern;
    public long actionDeleteGroupEventId;
    public boolean animateComments;
    public int animatedEmojiCount;
    public boolean attachPathExists;
    public double attributeDuration;
    public int audioPlayerDuration;
    public float audioProgress;
    public int audioProgressMs;
    public int audioProgressSec;
    public StringBuilder botButtonsLayout;
    public float bufferedProgress;
    public boolean business;
    private Integer cachedApproximateHeight;
    public Boolean cachedIsSupergroup;
    public VideoPlayer.VideoUri cachedQuality;
    public Float cachedSavedTimestamp;
    private Integer cachedStartsTimestamp;
    private Integer cachedTextHeight;
    public boolean cancelEditing;
    public CharSequence caption;
    private boolean captionTranslated;
    private boolean channelJoined;
    public boolean channelJoinedExpanded;
    public ArrayList<TLRPC.PollAnswer> checkedVotes;
    public int contentType;
    public int currentAccount;
    public TLRPC.TL_channelAdminLogEvent currentEvent;
    public Drawable customAvatarDrawable;
    public String customName;
    public String customReplyName;
    public String dateKey;
    public int dateKeyInt;
    public boolean deleted;
    public boolean deletedByThanos;
    public boolean drawServiceWithDefaultTypeface;
    public CharSequence editingMessage;
    public ArrayList<TLRPC.MessageEntity> editingMessageEntities;
    public boolean editingMessageSearchWebPage;
    public TLRPC.Document emojiAnimatedSticker;
    public String emojiAnimatedStickerColor;
    public Long emojiAnimatedStickerId;
    private boolean emojiAnimatedStickerLoading;
    public TLRPC.VideoSize emojiMarkup;
    public int emojiOnlyCount;
    public long eventId;
    public HashSet<Integer> expandedQuotes;
    public long extendedMediaLastCheckTime;
    public boolean factCheckExpanded;
    private CharSequence factCheckText;
    public boolean flickerLoading;
    public boolean forceAvatar;
    public boolean forceExpired;
    public boolean forcePlayEffect;
    public float forceSeekTo;
    public boolean forceUpdate;
    private float generatedWithDensity;
    private int generatedWithMinSize;
    public float gifState;
    public boolean hadAnimationNotReadyLoading;
    public boolean hasCode;
    public boolean hasCodeAtBottom;
    public boolean hasCodeAtTop;
    public boolean hasQuote;
    public boolean hasQuoteAtBottom;
    public boolean hasRtl;
    public boolean hasSingleCode;
    public boolean hasSingleQuote;
    private boolean hasUnwrappedEmoji;
    public boolean hasWideCode;
    public boolean hideSendersName;
    public VideoPlayer.VideoUri highestQuality;
    public ArrayList<String> highlightedWords;
    private BotInlineKeyboard.Source inlineKeyboardSource;
    public boolean isDateObject;
    public boolean isDownloadingFile;
    private Boolean isEmbedVideoCached;
    public boolean isMediaSpoilersRevealed;
    public boolean isMediaSpoilersRevealedInSharedMedia;
    public Boolean isOutOwnerCached;
    public boolean isPrimaryGroupMessage;
    public boolean isReactionPush;
    public boolean isRepostPreview;
    public boolean isRepostVideoPreview;
    public boolean isRestrictedMessage;
    private int isRoundVideoCached;
    public boolean isSaved;
    public boolean isSavedFiltered;
    public Boolean isSensitiveCached;
    public boolean isSpoilersRevealed;
    public boolean isStoryMentionPush;
    public boolean isStoryPush;
    public boolean isStoryPushHidden;
    public boolean isStoryReactionPush;
    public boolean isTopicMainMessage;
    public boolean isVideoConversionObject;
    public Object lastGeoWebFileLoaded;
    public Object lastGeoWebFileSet;
    public int lastLineWidth;
    private boolean layoutCreated;
    public CharSequence linkDescription;
    public long loadedFileSize;
    public boolean loadingCancelled;
    public boolean localChannel;
    public boolean localEdit;
    public long localGroupId;
    public String localName;
    public long localSentGroupId;
    public boolean localSupergroup;
    public int localType;
    public String localUserName;
    public boolean mediaExists;
    public ImageLocation mediaSmallThumb;
    public ImageLocation mediaThumb;
    public TLRPC.Message messageOwner;
    public CharSequence messageText;
    public CharSequence messageTextForReply;
    public CharSequence messageTextShort;
    public CharSequence messageTrimmedToHighlight;
    public boolean messageTrimmedToHighlightCut;
    public String monthKey;
    public boolean notime;
    public boolean openedInViewer;
    public int overrideLinkColor;
    public long overrideLinkEmoji;
    public StoriesController.StoriesList parentStoriesList;
    public int parentWidth;
    public SvgHelper.SvgDrawable pathThumb;
    public ArrayList<TLRPC.PhotoSize> photoThumbs;
    public ArrayList<TLRPC.PhotoSize> photoThumbs2;
    public TLObject photoThumbsObject;
    public TLObject photoThumbsObject2;
    public boolean playedGiftAnimation;
    public long pollLastCheckTime;
    public boolean pollVisibleOnScreen;
    public boolean preview;
    public boolean previewForward;
    public String previousAttachPath;
    public TLRPC.MessageMedia previousMedia;
    public String previousMessage;
    public ArrayList<TLRPC.MessageEntity> previousMessageEntities;
    public boolean putInDownloadsStore;
    public TLRPC.Document qualityToSave;
    public String quick_reply_shortcut;
    private byte[] randomWaveform;
    public boolean reactionsChanged;
    public long reactionsLastCheckTime;
    public int realDate;
    public MessageObject replyMessageObject;
    public boolean replyTextEllipsized;
    public boolean replyTextRevealed;
    public TLRPC.TL_forumTopic replyToForumTopic;
    public boolean resendAsIs;
    public boolean revealingMediaSpoilers;
    public boolean scheduled;
    public boolean scheduledSent;
    public int searchType;
    private CharSequence secretOnceSpan;
    private CharSequence secretPlaySpan;
    public SendAnimationData sendAnimationData;
    public TLRPC.Peer sendAsPeer;
    public boolean sendPreview;
    public MediaController.PhotoEntry sendPreviewEntry;
    public boolean sentHighQuality;
    public boolean settingAvatar;
    public boolean shouldRemoveVideoEditedInfo;
    public boolean sideMenuEnabled;
    private boolean spoiledLoginCode;
    public String sponsoredAdditionalInfo;
    public String sponsoredButtonText;
    public boolean sponsoredCanReport;
    public TLRPC.TL_peerColor sponsoredColor;
    public byte[] sponsoredId;
    public String sponsoredInfo;
    public TLRPC.MessageMedia sponsoredMedia;
    public TLRPC.Photo sponsoredPhoto;
    public boolean sponsoredRecommended;
    public String sponsoredTitle;
    public String sponsoredUrl;
    public int stableId;
    public TL_stories$StoryItem storyItem;
    private TLRPC.WebPage storyMentionWebpage;
    public BitmapDrawable strippedThumb;
    public ArrayList<TextLayoutBlock> textLayoutBlocks;
    public int textWidth;
    public float textXOffset;
    public VideoPlayer.VideoUri thumbQuality;
    public Drawable[] topicIconDrawable;
    public int totalAnimatedEmojiCount;
    public boolean translated;
    public int type;
    public StoriesController.UploadingStory uploadingStory;
    public boolean useCustomPhoto;
    public CharSequence vCardData;
    public VideoEditedInfo videoEditedInfo;
    public ArrayList<VideoPlayer.Quality> videoQualities;
    private Boolean videoQualitiesCached;
    public boolean viewsReloaded;
    public int wantedBotKeyboardWidth;
    public boolean wasJustSent;
    public boolean wasUnread;
    public ArrayList<TLRPC.MessageEntity> webPageDescriptionEntities;
    public CharSequence youtubeDescription;

    public static class GroupedMessagePosition {
        public float aspectRatio;
        public boolean edge;
        public int flags;
        public boolean last;
        public float left;
        public int leftSpanOffset;
        public byte maxX;
        public byte maxY;
        public byte minX;
        public byte minY;
        public float ph;
        public int photoHeight;
        public int photoWidth;
        public int pw;
        public float[] siblingHeights;
        public int spanSize;
        public float top;

        public void set(int i, int i2, int i3, int i4, int i5, float f, int i6) {
            this.minX = (byte) i;
            this.maxX = (byte) i2;
            this.minY = (byte) i3;
            this.maxY = (byte) i4;
            this.pw = i5;
            this.spanSize = i5;
            this.ph = f;
            this.flags = (byte) i6;
        }
    }

    public static class GroupedMessages {
        public boolean captionAbove;
        public MessageObject captionMessage;
        public long groupId;
        public boolean hasCaption;
        public boolean hasSibling;
        public boolean isDocuments;
        public boolean reversed;
        public ArrayList<MessageObject> messages = new ArrayList<>();
        public ArrayList<GroupedMessagePosition> posArray = new ArrayList<>();
        public HashMap<MessageObject, GroupedMessagePosition> positions = new HashMap<>();
        public LongSparseArray positionsArray = new LongSparseArray();
        private int maxSizeWidth = 800;
        public final TransitionParams transitionParams = new TransitionParams();

        private static class MessageGroupedLayoutAttempt {
            public float[] heights;
            public int[] lineCounts;

            public MessageGroupedLayoutAttempt(int i, int i2, float f, float f2) {
                this.lineCounts = new int[]{i, i2};
                this.heights = new float[]{f, f2};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, float f, float f2, float f3) {
                this.lineCounts = new int[]{i, i2, i3};
                this.heights = new float[]{f, f2, f3};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
                this.lineCounts = new int[]{i, i2, i3, i4};
                this.heights = new float[]{f, f2, f3, f4};
            }
        }

        public static class TransitionParams {
            public boolean backgroundChangeBounds;
            public int bottom;
            public float captionEnterProgress = 1.0f;
            public ChatMessageCell cell;
            public boolean drawBackgroundForDeletedItems;
            public boolean drawCaptionLayout;
            public boolean isNewGroup;
            public int left;
            public float offsetBottom;
            public float offsetLeft;
            public float offsetRight;
            public float offsetTop;
            public boolean pinnedBotton;
            public boolean pinnedTop;
            public int right;
            public int top;

            public void reset() {
                this.captionEnterProgress = 1.0f;
                this.offsetBottom = BitmapDescriptorFactory.HUE_RED;
                this.offsetTop = BitmapDescriptorFactory.HUE_RED;
                this.offsetRight = BitmapDescriptorFactory.HUE_RED;
                this.offsetLeft = BitmapDescriptorFactory.HUE_RED;
                this.backgroundChangeBounds = false;
            }
        }

        private float multiHeight(float[] fArr, int i, int i2) {
            float f = BitmapDescriptorFactory.HUE_RED;
            while (i < i2) {
                f += fArr[i];
                i++;
            }
            return this.maxSizeWidth / f;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:288:0x0824 A[PHI: r6
          0x0824: PHI (r6v20 int) = (r6v19 int), (r6v23 int) binds: [B:283:0x0816, B:285:0x081a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:294:0x0861  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00f2  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x015b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void calculate() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            float fRound;
            int i8;
            int i9;
            int i10;
            GroupedMessagePosition groupedMessagePosition;
            int i11;
            boolean z;
            int i12;
            MessageObject messageObject;
            int i13;
            TLRPC.Message message;
            float f;
            Boolean bool;
            this.posArray.clear();
            this.positions.clear();
            this.positionsArray.clear();
            Boolean bool2 = null;
            this.captionMessage = null;
            this.maxSizeWidth = 800;
            int size = this.messages.size();
            if (size == 1) {
                this.captionMessage = this.messages.get(0);
                return;
            }
            if (size < 1) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            this.hasSibling = false;
            this.hasCaption = false;
            this.captionAbove = false;
            int i14 = this.reversed ? size - 1 : 0;
            boolean z2 = false;
            float f2 = 1.0f;
            boolean z3 = false;
            boolean zIsOutOwner = false;
            boolean z4 = true;
            while (true) {
                if (this.reversed) {
                    if (i14 < 0) {
                        break;
                    }
                    messageObject = this.messages.get(i14);
                    if (i14 != (!this.reversed ? size - 1 : 0)) {
                        messageObject.isOutOwnerCached = bool2;
                        zIsOutOwner = messageObject.isOutOwner();
                        if (zIsOutOwner) {
                            i13 = size;
                            z2 = false;
                            if (!messageObject.isMusic() || messageObject.isDocument()) {
                                this.isDocuments = true;
                            }
                        } else {
                            TLRPC.Message message2 = messageObject.messageOwner;
                            TLRPC.MessageFwdHeader messageFwdHeader = message2.fwd_from;
                            if (messageFwdHeader == null || messageFwdHeader.saved_from_peer == null) {
                                if (message2.from_id instanceof TLRPC.TL_peerUser) {
                                    TLRPC.Peer peer = message2.peer_id;
                                    i13 = size;
                                    if (peer.channel_id != 0 || peer.chat_id != 0 || (MessageObject.getMedia(message2) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                    }
                                    if (!messageObject.isMusic()) {
                                        this.isDocuments = true;
                                    }
                                }
                                z2 = false;
                                if (!messageObject.isMusic()) {
                                }
                            } else {
                                i13 = size;
                            }
                            z2 = true;
                            if (!messageObject.isMusic()) {
                            }
                        }
                    } else {
                        i13 = size;
                    }
                    message = messageObject.messageOwner;
                    if (message != null && message.invert_media) {
                        this.captionAbove = true;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition2 = new GroupedMessagePosition();
                    groupedMessagePosition2.last = this.reversed ? i14 == i13 + (-1) : i14 == 0;
                    float f3 = closestPhotoSizeWithSize != null ? 1.0f : closestPhotoSizeWithSize.w / closestPhotoSizeWithSize.h;
                    groupedMessagePosition2.aspectRatio = f3;
                    sb.append(f3 <= 1.2f ? "w" : f3 < 0.8f ? "n" : "q");
                    f = groupedMessagePosition2.aspectRatio;
                    f2 += f;
                    if (f > 2.0f) {
                        z3 = true;
                    }
                    this.positions.put(messageObject, groupedMessagePosition2);
                    boolean z5 = z2;
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition2);
                    this.posArray.add(groupedMessagePosition2);
                    if (messageObject.caption == null) {
                        if (z4 && this.captionMessage == null) {
                            this.captionMessage = messageObject;
                            bool = null;
                            z4 = false;
                        } else if (this.isDocuments) {
                            bool = null;
                        } else {
                            bool = null;
                            this.captionMessage = null;
                        }
                        this.hasCaption = true;
                    } else {
                        bool = null;
                    }
                    i14 = !this.reversed ? i14 - 1 : i14 + 1;
                    bool2 = bool;
                    size = i13;
                    z2 = z5;
                } else {
                    if (i14 >= size) {
                        break;
                    }
                    messageObject = this.messages.get(i14);
                    if (i14 != (!this.reversed ? size - 1 : 0)) {
                    }
                    message = messageObject.messageOwner;
                    if (message != null) {
                        this.captionAbove = true;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition22 = new GroupedMessagePosition();
                    groupedMessagePosition22.last = this.reversed ? i14 == i13 + (-1) : i14 == 0;
                    if (closestPhotoSizeWithSize2 != null) {
                    }
                    groupedMessagePosition22.aspectRatio = f3;
                    sb.append(f3 <= 1.2f ? "w" : f3 < 0.8f ? "n" : "q");
                    f = groupedMessagePosition22.aspectRatio;
                    f2 += f;
                    if (f > 2.0f) {
                    }
                    this.positions.put(messageObject, groupedMessagePosition22);
                    boolean z52 = z2;
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition22);
                    this.posArray.add(groupedMessagePosition22);
                    if (messageObject.caption == null) {
                    }
                    if (!this.reversed) {
                    }
                    bool2 = bool;
                    size = i13;
                    z2 = z52;
                }
            }
            int i15 = size;
            if (this.isDocuments) {
                for (int i16 = 0; i16 < i15; i16++) {
                    GroupedMessagePosition groupedMessagePosition3 = this.posArray.get(i16);
                    groupedMessagePosition3.flags = 3;
                    if (i16 == 0) {
                        groupedMessagePosition3.flags = 7;
                    } else {
                        if (i16 == i15 - 1) {
                            groupedMessagePosition3.flags = 11;
                            groupedMessagePosition3.last = true;
                        }
                        groupedMessagePosition3.edge = true;
                        groupedMessagePosition3.aspectRatio = 1.0f;
                        groupedMessagePosition3.minX = (byte) 0;
                        groupedMessagePosition3.maxX = (byte) 0;
                        byte b = (byte) i16;
                        groupedMessagePosition3.minY = b;
                        groupedMessagePosition3.maxY = b;
                        groupedMessagePosition3.spanSize = 1000;
                        groupedMessagePosition3.pw = this.maxSizeWidth;
                        groupedMessagePosition3.ph = 100.0f;
                    }
                    groupedMessagePosition3.last = false;
                    groupedMessagePosition3.edge = true;
                    groupedMessagePosition3.aspectRatio = 1.0f;
                    groupedMessagePosition3.minX = (byte) 0;
                    groupedMessagePosition3.maxX = (byte) 0;
                    byte b2 = (byte) i16;
                    groupedMessagePosition3.minY = b2;
                    groupedMessagePosition3.maxY = b2;
                    groupedMessagePosition3.spanSize = 1000;
                    groupedMessagePosition3.pw = this.maxSizeWidth;
                    groupedMessagePosition3.ph = 100.0f;
                }
                return;
            }
            if (z2) {
                this.maxSizeWidth -= 50;
                i = MediaDataController.MAX_LINKS_COUNT;
            } else {
                i = 200;
            }
            int iDp = AndroidUtilities.dp(120.0f);
            float fDp = AndroidUtilities.dp(120.0f);
            Point point = AndroidUtilities.displaySize;
            int iMin = (int) (fDp / (Math.min(point.x, point.y) / this.maxSizeWidth));
            float fDp2 = AndroidUtilities.dp(40.0f);
            Point point2 = AndroidUtilities.displaySize;
            float fMin = Math.min(point2.x, point2.y);
            float f4 = this.maxSizeWidth;
            int i17 = (int) (fDp2 / (fMin / f4));
            float f5 = f4 / 814.0f;
            float f6 = f2 / i15;
            float fDp3 = AndroidUtilities.dp(100.0f) / 814.0f;
            if (i15 != 1) {
                if (z3 || !(i15 == 2 || i15 == 3 || i15 == 4)) {
                    int size2 = this.posArray.size();
                    float[] fArr = new float[size2];
                    for (int i18 = 0; i18 < i15; i18++) {
                        if (f6 > 1.1f) {
                            fArr[i18] = Math.max(1.0f, this.posArray.get(i18).aspectRatio);
                        } else {
                            fArr[i18] = Math.min(1.0f, this.posArray.get(i18).aspectRatio);
                        }
                        fArr[i18] = Math.max(0.66667f, Math.min(1.7f, fArr[i18]));
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i19 = 1; i19 < size2; i19++) {
                        int i20 = size2 - i19;
                        if (i19 <= 3 && i20 <= 3) {
                            arrayList.add(new MessageGroupedLayoutAttempt(i19, i20, multiHeight(fArr, 0, i19), multiHeight(fArr, i19, size2)));
                        }
                    }
                    for (int i21 = 1; i21 < size2 - 1; i21++) {
                        int i22 = 1;
                        while (true) {
                            int i23 = size2 - i21;
                            if (i22 < i23) {
                                int i24 = i23 - i22;
                                if (i21 <= 3) {
                                    if (i22 <= (f6 < 0.85f ? 4 : 3) && i24 <= 3) {
                                        int i25 = i21 + i22;
                                        arrayList.add(new MessageGroupedLayoutAttempt(i21, i22, i24, multiHeight(fArr, 0, i21), multiHeight(fArr, i21, i25), multiHeight(fArr, i25, size2)));
                                    }
                                }
                                i22++;
                            }
                        }
                    }
                    for (int i26 = 1; i26 < size2 - 2; i26++) {
                        int i27 = 1;
                        while (true) {
                            int i28 = size2 - i26;
                            if (i27 < i28) {
                                int i29 = 1;
                                while (true) {
                                    int i30 = i28 - i27;
                                    if (i29 < i30) {
                                        int i31 = i30 - i29;
                                        if (i26 > 3 || i27 > 3 || i29 > 3 || i31 > 3) {
                                            i4 = i28;
                                        } else {
                                            int i32 = i26 + i27;
                                            i4 = i28;
                                            int i33 = i32 + i29;
                                            arrayList.add(new MessageGroupedLayoutAttempt(i26, i27, i29, i31, multiHeight(fArr, 0, i26), multiHeight(fArr, i26, i32), multiHeight(fArr, i32, i33), multiHeight(fArr, i33, size2)));
                                        }
                                        i29++;
                                        i28 = i4;
                                    }
                                }
                                i27++;
                            }
                        }
                    }
                    float f7 = (this.maxSizeWidth / 3) * 4;
                    int i34 = 0;
                    MessageGroupedLayoutAttempt messageGroupedLayoutAttempt = null;
                    float f8 = BitmapDescriptorFactory.HUE_RED;
                    while (i34 < arrayList.size()) {
                        MessageGroupedLayoutAttempt messageGroupedLayoutAttempt2 = (MessageGroupedLayoutAttempt) arrayList.get(i34);
                        int i35 = 0;
                        float f9 = Float.MAX_VALUE;
                        float f10 = BitmapDescriptorFactory.HUE_RED;
                        while (true) {
                            float[] fArr2 = messageGroupedLayoutAttempt2.heights;
                            if (i35 >= fArr2.length) {
                                break;
                            }
                            float f11 = fArr2[i35];
                            f10 += f11;
                            if (f11 < f9) {
                                f9 = f11;
                            }
                            i35++;
                        }
                        float fAbs = Math.abs(f10 - f7);
                        int[] iArr = messageGroupedLayoutAttempt2.lineCounts;
                        float f12 = f7;
                        ArrayList arrayList2 = arrayList;
                        if (iArr.length > 1) {
                            int i36 = iArr[0];
                            int i37 = iArr[1];
                            if (i36 <= i37 && (iArr.length <= 2 || i37 <= iArr[2])) {
                                if (iArr.length > 3 && iArr[2] > iArr[3]) {
                                }
                            }
                            fAbs *= 1.2f;
                        }
                        if (f9 < iMin) {
                            fAbs *= 1.5f;
                        }
                        if (messageGroupedLayoutAttempt == null || fAbs < f8) {
                            f8 = fAbs;
                            messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                        }
                        i34++;
                        f7 = f12;
                        arrayList = arrayList2;
                    }
                    if (messageGroupedLayoutAttempt == null) {
                        return;
                    }
                    int i38 = 0;
                    int i39 = 0;
                    int i40 = 0;
                    while (true) {
                        int[] iArr2 = messageGroupedLayoutAttempt.lineCounts;
                        if (i39 >= iArr2.length) {
                            break;
                        }
                        int i41 = iArr2[i39];
                        float f13 = messageGroupedLayoutAttempt.heights[i39];
                        int i42 = this.maxSizeWidth;
                        int i43 = i41 - 1;
                        int iMax = Math.max(i40, i43);
                        int i44 = i42;
                        int i45 = 0;
                        GroupedMessagePosition groupedMessagePosition4 = null;
                        while (i45 < i41) {
                            float[] fArr3 = fArr;
                            int i46 = (int) (fArr[i38] * f13);
                            i44 -= i46;
                            int i47 = iMax;
                            GroupedMessagePosition groupedMessagePosition5 = this.posArray.get(i38);
                            int i48 = i41;
                            int i49 = i39 == 0 ? 4 : 0;
                            if (i39 == messageGroupedLayoutAttempt.lineCounts.length - 1) {
                                i49 |= 8;
                            }
                            if (i45 == 0) {
                                i49 |= 1;
                                if (zIsOutOwner) {
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            if (i45 == i43) {
                                i49 |= 2;
                                if (zIsOutOwner) {
                                    i3 = i49;
                                } else {
                                    i3 = i49;
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            groupedMessagePosition5.set(i45, i45, i39, i39, i46, Math.max(fDp3, f13 / 814.0f), i3);
                            i38++;
                            i45++;
                            iMax = i47;
                            fArr = fArr3;
                            i41 = i48;
                        }
                        groupedMessagePosition4.pw += i44;
                        groupedMessagePosition4.spanSize += i44;
                        i39++;
                        i40 = iMax;
                        fArr = fArr;
                    }
                    i2 = i40;
                } else {
                    if (i15 == 2) {
                        GroupedMessagePosition groupedMessagePosition6 = this.posArray.get(0);
                        GroupedMessagePosition groupedMessagePosition7 = this.posArray.get(1);
                        String string = sb.toString();
                        if (string.equals("ww")) {
                            double d = f6;
                            double d2 = f5;
                            Double.isNaN(d2);
                            if (d > d2 * 1.4d) {
                                float f14 = groupedMessagePosition6.aspectRatio;
                                float f15 = groupedMessagePosition7.aspectRatio;
                                if (f14 - f15 < 0.2d) {
                                    float f16 = this.maxSizeWidth;
                                    float fRound2 = Math.round(Math.min(f16 / f14, Math.min(f16 / f15, 407.0f))) / 814.0f;
                                    groupedMessagePosition6.set(0, 0, 0, 0, this.maxSizeWidth, fRound2, 7);
                                    groupedMessagePosition7.set(0, 0, 1, 1, this.maxSizeWidth, fRound2, 11);
                                }
                            }
                        }
                        if (string.equals("ww") || string.equals("qq")) {
                            int i50 = this.maxSizeWidth / 2;
                            float f17 = i50;
                            i5 = 0;
                            i6 = 0;
                            i7 = i50;
                            fRound = Math.round(Math.min(f17 / groupedMessagePosition6.aspectRatio, Math.min(f17 / groupedMessagePosition7.aspectRatio, 814.0f))) / 814.0f;
                            groupedMessagePosition6.set(0, 0, 0, 0, i7, fRound, 13);
                            i8 = 14;
                            i9 = 1;
                            i10 = 1;
                            groupedMessagePosition = groupedMessagePosition7;
                        } else {
                            float f18 = this.maxSizeWidth;
                            float f19 = groupedMessagePosition6.aspectRatio;
                            int iMax2 = (int) Math.max(0.4f * f18, Math.round((f18 / f19) / ((1.0f / f19) + (1.0f / groupedMessagePosition7.aspectRatio))));
                            int i51 = this.maxSizeWidth - iMax2;
                            if (i51 < iMin) {
                                iMax2 -= iMin - i51;
                            } else {
                                iMin = i51;
                            }
                            i5 = 0;
                            i6 = 0;
                            fRound = Math.min(814.0f, Math.round(Math.min(iMin / groupedMessagePosition6.aspectRatio, iMax2 / groupedMessagePosition7.aspectRatio))) / 814.0f;
                            groupedMessagePosition6.set(0, 0, 0, 0, iMin, fRound, 13);
                            i8 = 14;
                            i9 = 1;
                            i10 = 1;
                            groupedMessagePosition = groupedMessagePosition7;
                            i7 = iMax2;
                        }
                    } else {
                        if (i15 == 3) {
                            GroupedMessagePosition groupedMessagePosition8 = this.posArray.get(0);
                            GroupedMessagePosition groupedMessagePosition9 = this.posArray.get(1);
                            GroupedMessagePosition groupedMessagePosition10 = this.posArray.get(2);
                            if (sb.charAt(0) == 'n') {
                                float f20 = groupedMessagePosition9.aspectRatio;
                                float fMin2 = Math.min(407.0f, Math.round((this.maxSizeWidth * f20) / (groupedMessagePosition10.aspectRatio + f20)));
                                int iMax3 = (int) Math.max(iMin, Math.min(this.maxSizeWidth * 0.5f, Math.round(Math.min(groupedMessagePosition10.aspectRatio * fMin2, groupedMessagePosition9.aspectRatio * r10))));
                                int iRound = Math.round(Math.min((groupedMessagePosition8.aspectRatio * 814.0f) + i17, this.maxSizeWidth - iMax3));
                                groupedMessagePosition8.set(0, 0, 0, 1, iRound, 1.0f, 13);
                                float f21 = (814.0f - fMin2) / 814.0f;
                                groupedMessagePosition9.set(1, 1, 0, 0, iMax3, f21, 6);
                                float f22 = fMin2 / 814.0f;
                                groupedMessagePosition10.set(0, 1, 1, 1, iMax3, f22, 10);
                                int i52 = this.maxSizeWidth;
                                groupedMessagePosition10.spanSize = i52;
                                groupedMessagePosition8.siblingHeights = new float[]{f22, f21};
                                if (zIsOutOwner) {
                                    groupedMessagePosition8.spanSize = i52 - iMax3;
                                } else {
                                    groupedMessagePosition9.spanSize = i52 - iRound;
                                    groupedMessagePosition10.leftSpanOffset = iRound;
                                }
                                this.hasSibling = true;
                            } else {
                                float fRound3 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition8.aspectRatio, 537.24005f)) / 814.0f;
                                groupedMessagePosition8.set(0, 1, 0, 0, this.maxSizeWidth, fRound3, 7);
                                int i53 = this.maxSizeWidth / 2;
                                float f23 = 814.0f - fRound3;
                                float f24 = i53;
                                float fMin3 = Math.min(f23, Math.round(Math.min(f24 / groupedMessagePosition9.aspectRatio, f24 / groupedMessagePosition10.aspectRatio))) / 814.0f;
                                if (fMin3 >= fDp3) {
                                    fDp3 = fMin3;
                                }
                                i5 = 1;
                                i6 = 1;
                                i7 = i53;
                                fRound = fDp3;
                                groupedMessagePosition9.set(0, 0, 1, 1, i7, fRound, 9);
                                i8 = 10;
                                i9 = 1;
                                i10 = 1;
                                groupedMessagePosition = groupedMessagePosition10;
                            }
                        } else {
                            GroupedMessagePosition groupedMessagePosition11 = this.posArray.get(0);
                            GroupedMessagePosition groupedMessagePosition12 = this.posArray.get(1);
                            GroupedMessagePosition groupedMessagePosition13 = this.posArray.get(2);
                            GroupedMessagePosition groupedMessagePosition14 = this.posArray.get(3);
                            if (sb.charAt(0) == 'w') {
                                float fRound4 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition11.aspectRatio, 537.24005f)) / 814.0f;
                                groupedMessagePosition11.set(0, 2, 0, 0, this.maxSizeWidth, fRound4, 7);
                                float fRound5 = Math.round(this.maxSizeWidth / ((groupedMessagePosition12.aspectRatio + groupedMessagePosition13.aspectRatio) + groupedMessagePosition14.aspectRatio));
                                float f25 = iMin;
                                int iMax4 = (int) Math.max(f25, Math.min(this.maxSizeWidth * 0.4f, groupedMessagePosition12.aspectRatio * fRound5));
                                int iMax5 = (int) Math.max(Math.max(f25, this.maxSizeWidth * 0.33f), groupedMessagePosition14.aspectRatio * fRound5);
                                int iDp2 = (this.maxSizeWidth - iMax4) - iMax5;
                                if (iDp2 < AndroidUtilities.dp(58.0f)) {
                                    int iDp3 = AndroidUtilities.dp(58.0f) - iDp2;
                                    iDp2 = AndroidUtilities.dp(58.0f);
                                    int i54 = iDp3 / 2;
                                    iMax4 -= i54;
                                    iMax5 -= iDp3 - i54;
                                }
                                int i55 = iMax4;
                                float fMin4 = Math.min(814.0f - fRound4, fRound5) / 814.0f;
                                if (fMin4 >= fDp3) {
                                    fDp3 = fMin4;
                                }
                                float f26 = fDp3;
                                groupedMessagePosition12.set(0, 0, 1, 1, i55, f26, 9);
                                groupedMessagePosition13.set(1, 1, 1, 1, iDp2, f26, 8);
                                groupedMessagePosition14.set(2, 2, 1, 1, iMax5, f26, 10);
                                i2 = 2;
                            } else {
                                int iMax6 = Math.max(iMin, Math.round(814.0f / (((1.0f / groupedMessagePosition12.aspectRatio) + (1.0f / groupedMessagePosition13.aspectRatio)) + (1.0f / groupedMessagePosition14.aspectRatio))));
                                float f27 = iDp;
                                float f28 = iMax6;
                                float fMin5 = Math.min(0.33f, Math.max(f27, f28 / groupedMessagePosition12.aspectRatio) / 814.0f);
                                float fMin6 = Math.min(0.33f, Math.max(f27, f28 / groupedMessagePosition13.aspectRatio) / 814.0f);
                                float f29 = (1.0f - fMin5) - fMin6;
                                int iRound2 = Math.round(Math.min((groupedMessagePosition11.aspectRatio * 814.0f) + i17, this.maxSizeWidth - iMax6));
                                groupedMessagePosition11.set(0, 0, 0, 2, iRound2, fMin5 + fMin6 + f29, 13);
                                groupedMessagePosition12.set(1, 1, 0, 0, iMax6, fMin5, 6);
                                groupedMessagePosition13.set(0, 1, 1, 1, iMax6, fMin6, 2);
                                groupedMessagePosition13.spanSize = this.maxSizeWidth;
                                groupedMessagePosition14.set(0, 1, 2, 2, iMax6, f29, 10);
                                int i56 = this.maxSizeWidth;
                                groupedMessagePosition14.spanSize = i56;
                                if (zIsOutOwner) {
                                    groupedMessagePosition11.spanSize = i56 - iMax6;
                                } else {
                                    groupedMessagePosition12.spanSize = i56 - iRound2;
                                    groupedMessagePosition13.leftSpanOffset = iRound2;
                                    groupedMessagePosition14.leftSpanOffset = iRound2;
                                }
                                groupedMessagePosition11.siblingHeights = new float[]{fMin5, fMin6, f29};
                                this.hasSibling = true;
                            }
                        }
                        i2 = 1;
                    }
                    groupedMessagePosition.set(i9, i10, i6, i5, i7, fRound, i8);
                    i2 = 1;
                }
                i11 = 0;
                while (i11 < i15) {
                    GroupedMessagePosition groupedMessagePosition15 = this.posArray.get(i11);
                    if (zIsOutOwner) {
                        if (groupedMessagePosition15.minX == 0) {
                            groupedMessagePosition15.spanSize += i;
                        }
                        if ((groupedMessagePosition15.flags & 2) != 0) {
                            z = true;
                            groupedMessagePosition15.edge = z;
                        }
                    } else {
                        if (groupedMessagePosition15.maxX == i2 || (groupedMessagePosition15.flags & 2) != 0) {
                            groupedMessagePosition15.spanSize += i;
                        }
                        z = true;
                        if ((groupedMessagePosition15.flags & 1) != 0) {
                            groupedMessagePosition15.edge = z;
                        }
                    }
                    MessageObject messageObject2 = this.messages.get(i11);
                    if (!zIsOutOwner && messageObject2.needDrawAvatarInternal()) {
                        if (groupedMessagePosition15.edge) {
                            int i57 = groupedMessagePosition15.spanSize;
                            if (i57 != 1000) {
                                groupedMessagePosition15.spanSize = i57 + 108;
                            }
                            groupedMessagePosition15.pw += 108;
                            i12 = 1;
                            i11 += i12;
                        } else {
                            if ((groupedMessagePosition15.flags & 2) != 0) {
                                int i58 = groupedMessagePosition15.spanSize;
                                if (i58 != 1000) {
                                    groupedMessagePosition15.spanSize = i58 - 108;
                                } else {
                                    int i59 = groupedMessagePosition15.leftSpanOffset;
                                    if (i59 != 0) {
                                        groupedMessagePosition15.leftSpanOffset = i59 + 108;
                                    }
                                }
                            }
                            i12 = 1;
                            i11 += i12;
                        }
                    }
                    i12 = 1;
                    i11 += i12;
                }
            }
            GroupedMessagePosition groupedMessagePosition16 = this.posArray.get(0);
            float f30 = this.maxSizeWidth / groupedMessagePosition16.aspectRatio;
            groupedMessagePosition16.set(0, 0, 0, 0, this.maxSizeWidth, Math.round(Math.min(f30, Math.min(f30, 407.0f))) / 814.0f, 15);
            i2 = 0;
            i11 = 0;
            while (i11 < i15) {
            }
        }

        public boolean contains(int i) {
            if (this.messages == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.messages.size(); i2++) {
                MessageObject messageObject = this.messages.get(i2);
                if (messageObject != null && messageObject.getId() == i) {
                    return true;
                }
            }
            return false;
        }

        public MessageObject findCaptionMessageObject() {
            if (!this.messages.isEmpty() && this.positions.isEmpty()) {
                calculate();
            }
            MessageObject messageObject = null;
            for (int i = 0; i < this.messages.size(); i++) {
                MessageObject messageObject2 = this.messages.get(i);
                if (!TextUtils.isEmpty(messageObject2.caption)) {
                    if (messageObject != null) {
                        return null;
                    }
                    messageObject = messageObject2;
                }
            }
            return messageObject;
        }

        public MessageObject findMessageWithFlags(int i) {
            if (!this.messages.isEmpty() && this.positions.isEmpty()) {
                calculate();
            }
            for (int i2 = 0; i2 < this.messages.size(); i2++) {
                MessageObject messageObject = this.messages.get(i2);
                GroupedMessagePosition groupedMessagePosition = this.positions.get(messageObject);
                if (groupedMessagePosition != null && (groupedMessagePosition.flags & i) == i) {
                    return messageObject;
                }
            }
            return null;
        }

        public MessageObject findPrimaryMessageObject() {
            return findMessageWithFlags(this.reversed ? 10 : 5);
        }

        public GroupedMessagePosition getPosition(MessageObject messageObject) {
            if (messageObject == null) {
                return null;
            }
            GroupedMessagePosition groupedMessagePosition = this.positions.get(messageObject);
            return groupedMessagePosition == null ? (GroupedMessagePosition) this.positionsArray.get(messageObject.getId()) : groupedMessagePosition;
        }
    }

    public static class SendAnimationData {
        public float currentScale;
        public float currentX;
        public float currentY;
        public ChatMessageCell.TransitionParams fromParams;
        public boolean fromPreview;
        public float height;
        public float progress;
        public float timeAlpha;
        public float width;
        public float x;
        public float y;
    }

    public static class TextLayoutBlock {
        public static final int FLAG_NOT_RTL = 2;
        public static final int FLAG_RTL = 1;
        public int charactersEnd;
        public int charactersOffset;
        public boolean code;
        public ButtonBounce collapsedBounce;
        public int collapsedHeight;
        public Drawable copyIcon;
        public int copyIconColor;
        public Drawable copySelector;
        public int copySelectorColor;
        public Paint copySeparator;
        public Text copyText;
        public byte directionFlags;
        public boolean first;
        public boolean hasCodeCopyButton;
        public int height;
        public int heightByOffset;
        public int index;
        public String language;
        public int languageHeight;
        public Text languageLayout;
        public boolean last;
        public float maxRight;
        public MessageObject messageObject;
        public int originalWidth;
        public int padBottom;
        public int padTop;
        public boolean quote;
        public boolean quoteCollapse;
        public StaticLayout textLayout;
        public AtomicReference<Layout> spoilersPatchedTextLayout = new AtomicReference<>();
        public List<SpoilerEffect> spoilers = new ArrayList();

        private static String capitalizeFirst(String str) {
            return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
        }

        private static String capitalizeLanguage(String str) {
            if (str == null) {
                return null;
            }
            String strReplaceAll = str.toLowerCase().replaceAll("\\W|lang$", "");
            strReplaceAll.hashCode();
            switch (strReplaceAll) {
                case "actionscript":
                    return "ActionScript";
                case "aspnet":
                    return "ASP.NET";
                case "csharp":
                case "cs":
                    return "C#";
                case "docker":
                case "dockerfile":
                case "kotlin":
                case "pascal":
                case "arduino":
                case "c":
                case "go":
                case "lua":
                case "dart":
                case "fift":
                case "java":
                case "rust":
                case "swift":
                    return capitalizeFirst(str);
                case "python":
                case "py":
                    return "Python";
                case "typescript":
                case "ts":
                    return "TypeScript";
                case "r":
                case "tl":
                case "asm":
                case "css":
                case "csv":
                case "ini":
                case "jsx":
                case "php":
                case "tsx":
                case "xml":
                case "yml":
                case "glsl":
                case "hlsl":
                case "html":
                case "http":
                case "json":
                case "less":
                case "nasm":
                case "scss":
                case "wasm":
                case "yaml":
                case "cobol":
                case "json5":
                    return str.toUpperCase();
                case "js":
                case "javascript":
                    return "JavaScript";
                case "md":
                case "markdown":
                    return "Markdown";
                case "rb":
                case "ruby":
                    return "Ruby";
                case "cpp":
                    return "C++";
                case "tlb":
                case "tl-b":
                    return "TL-B";
                case "func":
                    return "FunC";
                case "objc":
                case "objectivec":
                    return "Objective-C";
                case "autohotkey":
                    return "AutoHotKey";
                default:
                    return str;
            }
        }

        public float collapsed(ChatMessageCell.TransitionParams transitionParams) {
            boolean zCollapsed;
            if (transitionParams.animateExpandedQuotes) {
                HashSet hashSet = transitionParams.animateExpandedQuotesFrom;
                zCollapsed = hashSet == null || !hashSet.contains(Integer.valueOf(this.index));
            } else {
                zCollapsed = collapsed();
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = zCollapsed ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            if (collapsed()) {
                f = 1.0f;
            }
            return AndroidUtilities.lerp(f2, f, transitionParams.animateChangeProgress);
        }

        public boolean collapsed() {
            HashSet<Integer> hashSet;
            MessageObject messageObject = this.messageObject;
            return messageObject == null || (hashSet = messageObject.expandedQuotes) == null || !hashSet.contains(Integer.valueOf(this.index));
        }

        public void drawCopyCodeButton(Canvas canvas, RectF rectF, int i, int i2, float f) {
            if (this.hasCodeCopyButton) {
                int iMultAlpha = Theme.multAlpha(i, 0.1f);
                if (this.copySelectorColor != iMultAlpha) {
                    Drawable drawable = this.copySelector;
                    this.copySelectorColor = iMultAlpha;
                    Theme.setSelectorDrawableColor(drawable, iMultAlpha, true);
                }
                this.copySelector.setBounds(((int) rectF.left) + AndroidUtilities.dp(3.0f), (int) (rectF.bottom - AndroidUtilities.dp(38.0f)), (int) rectF.right, (int) rectF.bottom);
                int i3 = (int) (255.0f * f);
                this.copySelector.setAlpha(i3);
                if (this.copySelector.getCallback() != null) {
                    this.copySelector.draw(canvas);
                }
                this.copySeparator.setColor(ColorUtils.setAlphaComponent(i2, 38));
                canvas.drawRect(AndroidUtilities.dp(10.0f) + rectF.left, (rectF.bottom - AndroidUtilities.dp(38.0f)) - AndroidUtilities.getShadowHeight(), rectF.right - AndroidUtilities.dp(6.66f), rectF.bottom - AndroidUtilities.dp(38.0f), this.copySeparator);
                float fCenterX = rectF.centerX() - (Math.min(rectF.width() - AndroidUtilities.dp(12.0f), ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f)) + this.copyText.getCurrentWidth()) / 2.0f);
                float fDp = rectF.bottom - (AndroidUtilities.dp(38.0f) / 2.0f);
                if (this.copyIconColor != i) {
                    Drawable drawable2 = this.copyIcon;
                    this.copyIconColor = i;
                    drawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                }
                this.copyIcon.setAlpha(i3);
                this.copyIcon.setBounds((int) fCenterX, (int) (fDp - ((r10.getIntrinsicHeight() * 0.8f) / 2.0f)), (int) ((this.copyIcon.getIntrinsicWidth() * 0.8f) + fCenterX), (int) (((this.copyIcon.getIntrinsicHeight() * 0.8f) / 2.0f) + fDp));
                this.copyIcon.draw(canvas);
                this.copyText.ellipsize(((int) (r1 - ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f)))) + AndroidUtilities.dp(12.0f)).draw(canvas, fCenterX + (this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f), fDp, i, f);
            }
        }

        public int height() {
            return (this.quoteCollapse && collapsed()) ? this.collapsedHeight : this.height;
        }

        public int height(ChatMessageCell.TransitionParams transitionParams) {
            return !this.quoteCollapse ? this.height : AndroidUtilities.lerp(this.height, this.collapsedHeight, collapsed(transitionParams));
        }

        public int heightCollapsed() {
            return this.quoteCollapse ? this.collapsedHeight : this.height;
        }

        public boolean isRtl() {
            byte b = this.directionFlags;
            return (b & 1) != 0 && (b & 2) == 0;
        }

        public void layoutCode(String str, int i, boolean z) {
            boolean z2 = i >= 75 && !z;
            this.hasCodeCopyButton = z2;
            if (z2) {
                this.copyText = new Text(LocaleController.getString(R.string.CopyCode).toUpperCase(), SharedConfig.fontSize - 3, AndroidUtilities.bold());
                Drawable drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(R.drawable.msg_copy).mutate();
                this.copyIcon = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(this.copyIconColor, PorterDuff.Mode.SRC_IN));
                this.copySelector = Theme.createRadSelectorDrawable(this.copySelectorColor, 0, 0, Math.min(5, SharedConfig.bubbleRadius), 0);
                this.copySeparator = new Paint(1);
            }
            if (TextUtils.isEmpty(str)) {
                this.language = null;
                this.languageLayout = null;
            } else {
                this.language = str;
                Text text = new Text(capitalizeLanguage(str), (SharedConfig.fontSize - 1) - (CodeHighlighting.getTextSizeDecrement(i) / 2), AndroidUtilities.bold());
                this.languageLayout = text;
                this.languageHeight = ((int) (text.getTextSize() * 1.714f)) + AndroidUtilities.dp(4.0f);
            }
        }

        public float textYOffset(ArrayList<TextLayoutBlock> arrayList) {
            TextLayoutBlock textLayoutBlock;
            if (arrayList == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int iHeight = 0;
            for (int i = 0; i < arrayList.size() && (textLayoutBlock = arrayList.get(i)) != this; i++) {
                iHeight += textLayoutBlock.padTop + textLayoutBlock.height() + textLayoutBlock.padBottom;
            }
            return iHeight;
        }

        public float textYOffset(ArrayList<TextLayoutBlock> arrayList, ChatMessageCell.TransitionParams transitionParams) {
            TextLayoutBlock textLayoutBlock;
            if (arrayList == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int iHeight = 0;
            for (int i = 0; i < arrayList.size() && (textLayoutBlock = arrayList.get(i)) != this; i++) {
                iHeight += textLayoutBlock.padTop + textLayoutBlock.height(transitionParams) + textLayoutBlock.padBottom;
            }
            return iHeight;
        }
    }

    public static class TextLayoutBlocks {
        public boolean hasCode;
        public boolean hasCodeAtBottom;
        public boolean hasCodeAtTop;
        public boolean hasQuote;
        public boolean hasQuoteAtBottom;
        public boolean hasRtl;
        public boolean hasSingleCode;
        public boolean hasSingleQuote;
        public int lastLineWidth;
        public final CharSequence text;
        public final ArrayList<TextLayoutBlock> textLayoutBlocks = new ArrayList<>();
        public int textWidth;
        public float textXOffset;

        /* JADX WARN: Can't wrap try/catch for region: R(16:275|361|276|277|279|(1:281)(11:283|(1:285)|373|286|289|(1:291)|292|(4:294|(0)(1:297)|(1:396)(3:367|303|(2:305|394)(1:397))|306)(1:298)|299|(2:301|396)(1:395)|306)|282|373|286|289|(0)|292|(0)(0)|299|(0)(0)|306) */
        /* JADX WARN: Can't wrap try/catch for region: R(43:136|(1:138)|139|(1:141)(1:142)|143|(1:145)(1:146)|147|(1:149)|(1:151)|(1:157)(1:156)|158|(2:160|(3:(1:165)|166|167)(1:163))(2:168|(8:170|(1:172)(1:173)|174|(1:176)(1:177)|178|(1:180)(1:181)|182|167))|183|(3:185|(1:187)(2:189|(1:191)(1:192))|188)(1:193)|194|(1:196)(1:(1:198)(1:199))|200|(3:202|(1:214)(4:208|(1:210)(1:212)|211|213)|215)(3:216|(2:218|388)(6:219|359|220|(1:228)(1:224)|225|229)|352)|230|(1:236)|237|365|238|(1:242)|246|375|250|254|(1:256)|257|(1:259)|260|(3:262|(7:371|264|265|369|266|392|270)|390)|271|(6:273|(16:275|361|276|277|279|(1:281)(11:283|(1:285)|373|286|289|(1:291)|292|(4:294|(0)(1:297)|(1:396)(3:367|303|(2:305|394)(1:397))|306)(1:298)|299|(2:301|396)(1:395)|306)|282|373|286|289|(0)|292|(0)(0)|299|(0)(0)|306)|393|307|(2:(1:310)|311)(1:(1:313))|314)(3:315|(5:317|(1:319)(1:321)|320|(1:323)(1:324)|325)(1:326)|327)|328|(3:330|(1:332)(1:333)|334)|335|(1:349)(3:341|(1:343)(3:344|(1:346)|347)|348)|350|389|352|134) */
        /* JADX WARN: Code restructure failed: missing block: B:244:0x04ad, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:247:0x04b1, code lost:
        
            if (r8 == 0) goto L248;
         */
        /* JADX WARN: Code restructure failed: missing block: B:248:0x04b3, code lost:
        
            r31.textXOffset = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:249:0x04b6, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
            r12 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:252:0x04c3, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:253:0x04c4, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
            r0 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:288:0x0553, code lost:
        
            r2 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x01df  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x01fa  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01ff  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0201  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x021f  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x0271  */
        /* JADX WARN: Removed duplicated region for block: B:291:0x055c  */
        /* JADX WARN: Removed duplicated region for block: B:294:0x0563  */
        /* JADX WARN: Removed duplicated region for block: B:298:0x0578  */
        /* JADX WARN: Removed duplicated region for block: B:301:0x058d  */
        /* JADX WARN: Removed duplicated region for block: B:395:0x059b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0107  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public TextLayoutBlocks(MessageObject messageObject, CharSequence charSequence, TextPaint textPaint, int i) {
            boolean z;
            int i2;
            int iDp;
            StaticLayout staticLayout;
            CharSequence charSequence2;
            boolean z2;
            ArrayList arrayList;
            int i3;
            int iDp2;
            TextPaint textPaint2;
            CharSequence charSequence3;
            int i4;
            ArrayList arrayList2;
            boolean z3;
            MessageObject messageObject2;
            int i5;
            boolean z4;
            float lineWidth;
            float lineLeft;
            int i6;
            int i7;
            float fDp;
            int i8;
            TLRPC.Message message;
            MessageObject messageObject3 = messageObject;
            CharSequence charSequence4 = charSequence;
            this.text = charSequence4;
            this.textWidth = 0;
            boolean z5 = (messageObject3 == null || (message = messageObject3.messageOwner) == null || !message.noforwards) ? false : true;
            if (messageObject3 == null || z5) {
                z = z5;
            } else {
                TLRPC.Chat chat = MessagesController.getInstance(messageObject3.currentAccount).getChat(Long.valueOf(-messageObject.getDialogId()));
                z = chat != null && chat.noforwards;
            }
            boolean z6 = charSequence4 instanceof Spanned;
            this.hasCode = z6 && ((CodeHighlighting.Span[]) ((Spanned) charSequence4).getSpans(0, charSequence.length(), CodeHighlighting.Span.class)).length > 0;
            this.hasQuote = z6 && ((QuoteSpan.QuoteStyleSpan[]) ((Spanned) charSequence4).getSpans(0, charSequence.length(), QuoteSpan.QuoteStyleSpan.class)).length > 0;
            this.hasSingleQuote = false;
            this.hasSingleCode = false;
            if (z6) {
                Spanned spanned = (Spanned) charSequence4;
                QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.class);
                for (QuoteSpan quoteSpan : quoteSpanArr) {
                    quoteSpan.adaptLineHeight = false;
                }
                this.hasSingleQuote = quoteSpanArr.length == 1 && spanned.getSpanStart(quoteSpanArr[0]) == 0 && spanned.getSpanEnd(quoteSpanArr[0]) == spanned.length();
                CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
                this.hasSingleCode = spanArr.length == 1 && spanned.getSpanStart(spanArr[0]) == 0 && spanned.getSpanEnd(spanArr[0]) == spanned.length();
            }
            float f = 32.0f;
            try {
                if (this.hasSingleQuote) {
                    iDp = AndroidUtilities.dp(32.0f);
                } else {
                    if (!this.hasSingleCode) {
                        i2 = i;
                        StaticLayout staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(charSequence, textPaint, i2, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        CharSequence charSequence5 = charSequence4;
                        if (messageObject3 != null) {
                            charSequence5 = charSequence4;
                            if (messageObject3.isRepostPreview) {
                                int i9 = messageObject3.type != 0 ? messageObject.hasValidGroupId() ? 7 : 12 : 22;
                                i9 = messageObject.isWebpage() ? i9 - 8 : i9;
                                charSequence5 = charSequence4;
                                if (staticLayoutMakeStaticLayout.getLineCount() > i9) {
                                    String string = LocaleController.getString(R.string.ReadMore);
                                    int iCeil = (int) Math.ceil(textPaint.measureText("… " + string) + AndroidUtilities.dp(1.0f));
                                    float fMax = BitmapDescriptorFactory.HUE_RED;
                                    for (int i10 = 0; i10 < i9; i10++) {
                                        fMax = Math.max(fMax, staticLayoutMakeStaticLayout.getLineRight(i10));
                                    }
                                    int i11 = i9 - 1;
                                    int lineStart = staticLayoutMakeStaticLayout.getLineStart(i11);
                                    int lineEnd = staticLayoutMakeStaticLayout.getLineEnd(i11) - 1;
                                    while (lineEnd >= lineStart && staticLayoutMakeStaticLayout.getPrimaryHorizontal(lineEnd) >= fMax - iCeil) {
                                        lineEnd--;
                                    }
                                    while (lineEnd >= lineStart && !Character.isWhitespace(charSequence4.charAt(lineEnd))) {
                                        lineEnd--;
                                    }
                                    SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence4.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                                    spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.TextLayoutBlocks.1
                                        @Override // android.text.style.CharacterStyle
                                        public void updateDrawState(TextPaint textPaint3) {
                                            textPaint3.setColor(Theme.chat_msgTextPaint.linkColor);
                                        }
                                    }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                                    try {
                                        staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(spannableStringBuilderAppend, textPaint, i2, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                        charSequence5 = spannableStringBuilderAppend;
                                    } catch (Exception e) {
                                        FileLog.e(e);
                                        return;
                                    }
                                }
                            }
                        }
                        staticLayout = staticLayoutMakeStaticLayout;
                        charSequence2 = charSequence5;
                        int iDp3 = !this.hasSingleQuote ? i2 + AndroidUtilities.dp(32.0f) : this.hasSingleCode ? i2 + AndroidUtilities.dp(15.0f) : i2;
                        int lineCount = staticLayout.getLineCount();
                        z2 = Build.VERSION.SDK_INT < 24;
                        int i12 = 10;
                        int iCeil2 = !z2 ? 1 : (int) Math.ceil(lineCount / 10);
                        arrayList = new ArrayList();
                        if (!(charSequence2 instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                            MessageObject.cutIntoRanges(charSequence2, arrayList);
                        } else if (!z2 || iCeil2 == 1) {
                            arrayList.add(new TextRange(0, staticLayout.getText().length()));
                        } else {
                            int i13 = 0;
                            int i14 = 0;
                            while (i13 < iCeil2) {
                                int iMin = Math.min(i12, lineCount - i14);
                                int lineStart2 = staticLayout.getLineStart(i14);
                                int i15 = iMin + i14;
                                int lineEnd2 = staticLayout.getLineEnd(i15 - 1);
                                if (lineEnd2 >= lineStart2) {
                                    arrayList.add(new TextRange(lineStart2, lineEnd2));
                                    i14 = i15;
                                }
                                i13++;
                                i12 = 10;
                            }
                        }
                        int size = arrayList.size();
                        this.hasCodeAtTop = false;
                        this.hasCodeAtBottom = false;
                        this.hasQuoteAtBottom = false;
                        this.hasSingleQuote = false;
                        StaticLayout staticLayoutMakeStaticLayout2 = staticLayout;
                        int i16 = i2;
                        i3 = 0;
                        while (i3 < arrayList.size()) {
                            TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                            TextRange textRange = (TextRange) arrayList.get(i3);
                            textLayoutBlock.code = textRange.code;
                            textLayoutBlock.quote = textRange.quote;
                            boolean z7 = textRange.collapse;
                            textLayoutBlock.quoteCollapse = z7;
                            if (z7) {
                                textLayoutBlock.messageObject = messageObject3;
                            }
                            textLayoutBlock.index = i3;
                            textLayoutBlock.first = i3 == 0;
                            boolean z8 = i3 == arrayList.size() - 1;
                            textLayoutBlock.last = z8;
                            boolean z9 = textLayoutBlock.first;
                            if (z9) {
                                this.hasCodeAtTop = textLayoutBlock.code;
                            }
                            if (z8) {
                                this.hasQuoteAtBottom = textLayoutBlock.quote;
                                this.hasCodeAtBottom = textLayoutBlock.code;
                            }
                            this.hasSingleQuote = z9 && z8 && textLayoutBlock.quote;
                            if (textLayoutBlock.quote) {
                                if (z9 && z8) {
                                    int iDp4 = AndroidUtilities.dp(6.0f);
                                    textLayoutBlock.padBottom = iDp4;
                                    textLayoutBlock.padTop = iDp4;
                                } else {
                                    textLayoutBlock.padTop = AndroidUtilities.dp(z9 ? 8.0f : 6.0f);
                                    iDp2 = AndroidUtilities.dp(7.0f);
                                    textLayoutBlock.padBottom = iDp2;
                                }
                            } else if (textLayoutBlock.code) {
                                textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z);
                                textLayoutBlock.padTop = AndroidUtilities.dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? 0 : AndroidUtilities.dp(5.0f));
                                iDp2 = AndroidUtilities.dp(4.0f) + (textLayoutBlock.last ? 0 : AndroidUtilities.dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.dp(38.0f) : 0);
                                textLayoutBlock.padBottom = iDp2;
                            }
                            boolean z10 = textLayoutBlock.code;
                            if (z10) {
                                int i17 = textRange.end - textRange.start;
                                textPaint2 = i17 > 220 ? Theme.chat_msgTextCode3Paint : i17 > 80 ? Theme.chat_msgTextCode2Paint : Theme.chat_msgTextCodePaint;
                            } else {
                                textPaint2 = textPaint;
                            }
                            int iDp5 = textLayoutBlock.quote ? iDp3 - AndroidUtilities.dp(f) : z10 ? iDp3 - AndroidUtilities.dp(15.0f) : iDp3;
                            if (size == 1) {
                                if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout2.getText() instanceof Spannable)) {
                                    SpannableString highlighted = !TextUtils.isEmpty(textRange.language) ? CodeHighlighting.getHighlighted(charSequence2.subSequence(textRange.start, textRange.end).toString(), textRange.language) : new SpannableString(charSequence2.subSequence(textRange.start, textRange.end));
                                    textLayoutBlock.originalWidth = iDp5;
                                    staticLayoutMakeStaticLayout2 = MessageObject.makeStaticLayout(highlighted, textPaint2, iDp5, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                    i16 = iDp5;
                                } else {
                                    textLayoutBlock.originalWidth = i16;
                                }
                                textLayoutBlock.textLayout = staticLayoutMakeStaticLayout2;
                                textLayoutBlock.charactersOffset = 0;
                                textLayoutBlock.charactersEnd = staticLayoutMakeStaticLayout2.getText().length();
                                textLayoutBlock.height = staticLayoutMakeStaticLayout2.getHeight();
                                textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                            } else {
                                int i18 = textRange.start;
                                int i19 = textRange.end;
                                if (i19 < i18) {
                                    charSequence3 = charSequence2;
                                    i4 = iDp3;
                                    arrayList2 = arrayList;
                                    z3 = z;
                                    messageObject2 = messageObject3;
                                } else {
                                    textLayoutBlock.charactersOffset = i18;
                                    textLayoutBlock.charactersEnd = i19;
                                    try {
                                        SpannableString spannableStringValueOf = (!textLayoutBlock.code || textLayoutBlock.quote) ? SpannableString.valueOf(charSequence2.subSequence(i18, i19)) : CodeHighlighting.getHighlighted(charSequence2.subSequence(i18, i19).toString(), textRange.language);
                                        textLayoutBlock.originalWidth = iDp5;
                                        StaticLayout staticLayoutMakeStaticLayout3 = MessageObject.makeStaticLayout(spannableStringValueOf, textPaint2, iDp5, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                                        textLayoutBlock.textLayout = staticLayoutMakeStaticLayout3;
                                        textLayoutBlock.height = staticLayoutMakeStaticLayout3.getHeight();
                                        textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                    } catch (Exception e2) {
                                        charSequence3 = charSequence2;
                                        i4 = iDp3;
                                        arrayList2 = arrayList;
                                        z3 = z;
                                        messageObject2 = messageObject3;
                                        FileLog.e(e2);
                                    }
                                }
                                i3++;
                                iDp3 = i4;
                                messageObject3 = messageObject2;
                                charSequence2 = charSequence3;
                                arrayList = arrayList2;
                                z = z3;
                                f = 32.0f;
                            }
                            if (textLayoutBlock.code && (textLayoutBlock.textLayout.getText() instanceof Spannable) && TextUtils.isEmpty(textRange.language)) {
                                CodeHighlighting.highlight((Spannable) textLayoutBlock.textLayout.getText(), 0, textLayoutBlock.textLayout.getText().length(), textRange.language, 0, null, true);
                            }
                            this.textLayoutBlocks.add(textLayoutBlock);
                            int lineCount2 = textLayoutBlock.textLayout.getLineCount();
                            float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(lineCount2 - 1);
                            if (i3 == 0 && lineLeft2 >= BitmapDescriptorFactory.HUE_RED) {
                                this.textXOffset = lineLeft2;
                            }
                            float f2 = lineLeft2;
                            float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount2 - 1);
                            int iCeil3 = (int) Math.ceil(lineWidth2);
                            iCeil3 = iCeil3 > iDp3 + 80 ? iDp3 : iCeil3;
                            int i20 = size - 1;
                            if (i3 == i20) {
                                this.lastLineWidth = iCeil3;
                            }
                            float f3 = iCeil3;
                            charSequence3 = charSequence2;
                            StaticLayout staticLayout2 = staticLayoutMakeStaticLayout2;
                            int i21 = i16;
                            int iCeil4 = (int) Math.ceil(f3 + Math.max(BitmapDescriptorFactory.HUE_RED, f2));
                            if (textLayoutBlock.quote) {
                                textLayoutBlock.maxRight = BitmapDescriptorFactory.HUE_RED;
                                int i22 = 0;
                                while (i22 < lineCount2) {
                                    try {
                                        i8 = iCeil3;
                                        try {
                                            textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i22));
                                        } catch (Exception unused) {
                                            textLayoutBlock.maxRight = this.textWidth;
                                            i22++;
                                            iCeil3 = i8;
                                        }
                                    } catch (Exception unused2) {
                                        i8 = iCeil3;
                                    }
                                    i22++;
                                    iCeil3 = i8;
                                }
                            }
                            int i23 = iCeil3;
                            if (lineCount2 > 1) {
                                arrayList2 = arrayList;
                                int iMax = i23;
                                boolean z11 = false;
                                float f4 = BitmapDescriptorFactory.HUE_RED;
                                float fMax2 = BitmapDescriptorFactory.HUE_RED;
                                int i24 = 0;
                                int iMax2 = iCeil4;
                                while (i24 < lineCount2) {
                                    int i25 = lineCount2;
                                    try {
                                        lineWidth = textLayoutBlock.textLayout.getLineWidth(i24);
                                        z4 = z;
                                    } catch (Exception unused3) {
                                        z4 = z;
                                        lineWidth = BitmapDescriptorFactory.HUE_RED;
                                    }
                                    if (textLayoutBlock.quote) {
                                        fDp = AndroidUtilities.dp(32.0f);
                                    } else {
                                        fDp = textLayoutBlock.code ? AndroidUtilities.dp(15.0f) : fDp;
                                        lineLeft = textLayoutBlock.textLayout.getLineLeft(i24);
                                        if (lineWidth > iDp3 + 20) {
                                            lineWidth = iDp3;
                                            lineLeft = BitmapDescriptorFactory.HUE_RED;
                                        }
                                        if (lineLeft > BitmapDescriptorFactory.HUE_RED) {
                                            i6 = iDp3;
                                            if (textLayoutBlock.textLayout.getParagraphDirection(i24) != -1) {
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                i7 = 1;
                                            }
                                            if (!z11 && lineLeft == BitmapDescriptorFactory.HUE_RED) {
                                                if (textLayoutBlock.textLayout.getParagraphDirection(i24) == i7) {
                                                    z11 = true;
                                                }
                                            }
                                            fMax2 = Math.max(fMax2, lineWidth);
                                            float f5 = lineLeft + lineWidth;
                                            float fMax3 = Math.max(f4, f5);
                                            iMax = Math.max(iMax, (int) Math.ceil(lineWidth));
                                            iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                            i24++;
                                            z11 = z11;
                                            f4 = fMax3;
                                            lineCount2 = i25;
                                            z = z4;
                                            iDp3 = i6;
                                        } else {
                                            i6 = iDp3;
                                        }
                                        this.textXOffset = Math.min(this.textXOffset, lineLeft);
                                        i7 = 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                        this.hasRtl = true;
                                        if (!z11) {
                                        }
                                        fMax2 = Math.max(fMax2, lineWidth);
                                        float f52 = lineLeft + lineWidth;
                                        float fMax32 = Math.max(f4, f52);
                                        iMax = Math.max(iMax, (int) Math.ceil(lineWidth));
                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f52));
                                        i24++;
                                        z11 = z11;
                                        f4 = fMax32;
                                        lineCount2 = i25;
                                        z = z4;
                                        iDp3 = i6;
                                    }
                                    lineWidth += fDp;
                                    lineLeft = textLayoutBlock.textLayout.getLineLeft(i24);
                                    if (lineWidth > iDp3 + 20) {
                                    }
                                    if (lineLeft > BitmapDescriptorFactory.HUE_RED) {
                                    }
                                    this.textXOffset = Math.min(this.textXOffset, lineLeft);
                                    i7 = 1;
                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                    this.hasRtl = true;
                                    if (!z11) {
                                    }
                                    fMax2 = Math.max(fMax2, lineWidth);
                                    float f522 = lineLeft + lineWidth;
                                    float fMax322 = Math.max(f4, f522);
                                    iMax = Math.max(iMax, (int) Math.ceil(lineWidth));
                                    iMax2 = Math.max(iMax2, (int) Math.ceil(f522));
                                    i24++;
                                    z11 = z11;
                                    f4 = fMax322;
                                    lineCount2 = i25;
                                    z = z4;
                                    iDp3 = i6;
                                }
                                int i26 = iDp3;
                                z3 = z;
                                if (z11) {
                                    if (i3 == i20) {
                                        this.lastLineWidth = iCeil4;
                                    }
                                    fMax2 = f4;
                                } else if (i3 == i20) {
                                    this.lastLineWidth = iMax;
                                }
                                this.textWidth = Math.max(this.textWidth, (int) Math.ceil(fMax2));
                                iCeil4 = iMax2;
                                i4 = i26;
                            } else {
                                int i27 = iDp3;
                                arrayList2 = arrayList;
                                z3 = z;
                                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                                    float fMin = Math.min(this.textXOffset, f2);
                                    this.textXOffset = fMin;
                                    i5 = fMin == BitmapDescriptorFactory.HUE_RED ? (int) (f3 + f2) : i23;
                                    this.hasRtl = size != 1;
                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                } else {
                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                    i5 = i23;
                                }
                                i4 = i27;
                                this.textWidth = Math.max(this.textWidth, Math.min(i4, i5));
                            }
                            Text text = textLayoutBlock.languageLayout;
                            if (text != null) {
                                this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.dp(15.0f), textLayoutBlock.textLayout == null ? BitmapDescriptorFactory.HUE_RED : r7.getWidth()));
                            }
                            messageObject2 = messageObject;
                            if (messageObject2 != null && !messageObject2.isSpoilersRevealed && !messageObject.spoiledLoginCode) {
                                SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, textLayoutBlock.quote ? iCeil4 - AndroidUtilities.dp(32.0f) : textLayoutBlock.code ? iCeil4 - AndroidUtilities.dp(15.0f) : iCeil4, null, textLayoutBlock.spoilers);
                            }
                            staticLayoutMakeStaticLayout2 = staticLayout2;
                            i16 = i21;
                            i3++;
                            iDp3 = i4;
                            messageObject3 = messageObject2;
                            charSequence2 = charSequence3;
                            arrayList = arrayList2;
                            z = z3;
                            f = 32.0f;
                        }
                        return;
                    }
                    iDp = AndroidUtilities.dp(15.0f);
                }
                StaticLayout staticLayoutMakeStaticLayout4 = MessageObject.makeStaticLayout(charSequence, textPaint, i2, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                CharSequence charSequence52 = charSequence4;
                if (messageObject3 != null) {
                }
                staticLayout = staticLayoutMakeStaticLayout4;
                charSequence2 = charSequence52;
                if (!this.hasSingleQuote) {
                }
                int lineCount3 = staticLayout.getLineCount();
                if (Build.VERSION.SDK_INT < 24) {
                }
                int i122 = 10;
                if (!z2) {
                }
                arrayList = new ArrayList();
                if (!(charSequence2 instanceof Spanned)) {
                    if (z2) {
                        arrayList.add(new TextRange(0, staticLayout.getText().length()));
                    }
                }
                int size2 = arrayList.size();
                this.hasCodeAtTop = false;
                this.hasCodeAtBottom = false;
                this.hasQuoteAtBottom = false;
                this.hasSingleQuote = false;
                StaticLayout staticLayoutMakeStaticLayout22 = staticLayout;
                int i162 = i2;
                i3 = 0;
                while (i3 < arrayList.size()) {
                }
                return;
            } catch (Exception e3) {
                FileLog.e(e3);
                return;
            }
            i2 = i - iDp;
        }

        public void bounceFrom(TextLayoutBlocks textLayoutBlocks) {
            if (textLayoutBlocks == null) {
                return;
            }
            for (int i = 0; i < Math.min(this.textLayoutBlocks.size(), textLayoutBlocks.textLayoutBlocks.size()); i++) {
                this.textLayoutBlocks.get(i).collapsedBounce = textLayoutBlocks.textLayoutBlocks.get(i).collapsedBounce;
            }
        }

        public int textHeight() {
            int iHeight = 0;
            for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
                iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height() + this.textLayoutBlocks.get(i).padBottom;
            }
            return iHeight;
        }

        public int textHeight(ChatMessageCell.TransitionParams transitionParams) {
            int iHeight = 0;
            for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
                iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height(transitionParams) + this.textLayoutBlocks.get(i).padBottom;
            }
            return iHeight;
        }
    }

    public static class TextRange {
        public boolean code;
        public boolean collapse;
        public int end;
        public String language;
        public boolean quote;
        public int start;

        public TextRange(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public TextRange(int i, int i2, boolean z, boolean z2, boolean z3, String str) {
            this.start = i;
            this.end = i2;
            this.quote = z;
            this.code = z2;
            this.collapse = z && z3;
            this.language = str;
        }
    }

    public static class VCardData {
        private String company;
        private ArrayList<String> emails = new ArrayList<>();
        private ArrayList<String> phones = new ArrayList<>();

        public static CharSequence parse(String str) {
            byte[] bArrDecodeQuotedPrintable;
            try {
                BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
                boolean z = false;
                VCardData vCardData = null;
                String strSubstring = null;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        try {
                            break;
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                    } else if (!line.startsWith("PHOTO")) {
                        if (line.indexOf(58) >= 0) {
                            if (line.startsWith("BEGIN:VCARD")) {
                                vCardData = new VCardData();
                            } else if (line.startsWith("END:VCARD") && vCardData != null) {
                                z = true;
                            }
                        }
                        if (strSubstring != null) {
                            line = strSubstring + line;
                            strSubstring = null;
                        }
                        if (line.contains("=QUOTED-PRINTABLE") && line.endsWith(ContainerUtils.KEY_VALUE_DELIMITER)) {
                            strSubstring = line.substring(0, line.length() - 1);
                        } else {
                            int iIndexOf = line.indexOf(":");
                            String[] strArr = iIndexOf >= 0 ? new String[]{line.substring(0, iIndexOf), line.substring(iIndexOf + 1).trim()} : new String[]{line.trim()};
                            int i = 2;
                            if (strArr.length >= 2 && vCardData != null) {
                                if (strArr[0].startsWith("ORG")) {
                                    String[] strArrSplit = strArr[0].split(";");
                                    int length = strArrSplit.length;
                                    int i2 = 0;
                                    String str2 = null;
                                    String str3 = null;
                                    while (i2 < length) {
                                        String[] strArrSplit2 = strArrSplit[i2].split(ContainerUtils.KEY_VALUE_DELIMITER);
                                        if (strArrSplit2.length == i) {
                                            if (strArrSplit2[0].equals("CHARSET")) {
                                                str3 = strArrSplit2[1];
                                            } else if (strArrSplit2[0].equals("ENCODING")) {
                                                str2 = strArrSplit2[1];
                                            }
                                        }
                                        i2++;
                                        i = 2;
                                    }
                                    vCardData.company = strArr[1];
                                    if (str2 != null && str2.equalsIgnoreCase("QUOTED-PRINTABLE") && (bArrDecodeQuotedPrintable = AndroidUtilities.decodeQuotedPrintable(AndroidUtilities.getStringBytes(vCardData.company))) != null && bArrDecodeQuotedPrintable.length != 0) {
                                        vCardData.company = new String(bArrDecodeQuotedPrintable, str3);
                                    }
                                    vCardData.company = vCardData.company.replace(';', ' ');
                                } else if (strArr[0].startsWith("TEL")) {
                                    if (strArr[1].length() > 0) {
                                        vCardData.phones.add(strArr[1]);
                                    }
                                } else if (strArr[0].startsWith("EMAIL")) {
                                    String str4 = strArr[1];
                                    if (str4.length() > 0) {
                                        vCardData.emails.add(str4);
                                    }
                                }
                            }
                        }
                    }
                }
                bufferedReader.close();
                if (!z) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < vCardData.phones.size(); i3++) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    String str5 = vCardData.phones.get(i3);
                    if (!str5.contains("#") && !str5.contains("*")) {
                        str5 = PhoneFormat.getInstance().format(str5);
                    }
                    sb.append(str5);
                }
                for (int i4 = 0; i4 < vCardData.emails.size(); i4++) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(PhoneFormat.getInstance().format(vCardData.emails.get(i4)));
                }
                if (!TextUtils.isEmpty(vCardData.company)) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(vCardData.company);
                }
                return sb;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, boolean z3) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, z3);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, boolean z, boolean z2) {
        this(i, message, longSparseArray, (LongSparseArray) null, z, z2);
    }

    public MessageObject(int i, TLRPC.Message message, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4) {
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.localType = z ? 2 : 1;
        this.currentAccount = i;
        this.localName = str2;
        this.localUserName = str3;
        this.messageText = str;
        this.messageOwner = message;
        this.localChannel = z2;
        this.localSupergroup = z3;
        this.localEdit = z4;
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, boolean z, boolean z2) {
        this(i, message, abstractMap, abstractMap2, z, z2, 0L);
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, boolean z, boolean z2, long j) {
        this(i, message, null, abstractMap, abstractMap2, null, null, z, z2, j);
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, boolean z, boolean z2) {
        this(i, message, abstractMap, (AbstractMap<Long, TLRPC.Chat>) null, z, z2);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, z3, z4, z5, 0);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5, int i2) {
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        Theme.createCommonMessageResources();
        this.isRepostPreview = z3;
        this.isRepostVideoPreview = z4;
        this.isSaved = z5 || getDialogId(message) == UserConfig.getInstance(i).getClientUserId();
        this.searchType = i2;
        this.currentAccount = i;
        this.messageOwner = message;
        this.replyMessageObject = messageObject;
        this.eventId = j;
        this.wasUnread = !message.out && message.unread;
        TLRPC.Message message2 = message.replyMessage;
        if (message2 != null) {
            this.replyMessageObject = new MessageObject(i, message2, null, abstractMap, abstractMap2, longSparseArray, longSparseArray2, false, z2, j);
        }
        TLRPC.Peer peer = message.from_id;
        if (peer instanceof TLRPC.TL_peerUser) {
            getUser(abstractMap, longSparseArray, peer.user_id);
        }
        updateMessageText(abstractMap, abstractMap2, longSparseArray, longSparseArray2);
        setType();
        if (z) {
            updateTranslation(false);
        }
        measureInlineBotButtons();
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(this.messageOwner.date * 1000);
        int i3 = gregorianCalendar.get(6);
        int i4 = gregorianCalendar.get(1);
        int i5 = gregorianCalendar.get(2);
        this.dateKey = String.format("%d_%02d_%02d", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i3));
        this.dateKeyInt = (i5 * 10000) + i4 + (i3 * MediaController.VIDEO_BITRATE_480);
        this.monthKey = String.format("%d_%02d", Integer.valueOf(i4), Integer.valueOf(i5));
        createMessageSendInfo();
        generateCaption();
        if (z) {
            TextPaint textPaint = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame ? Theme.chat_msgGameTextPaint : Theme.chat_msgTextPaint;
            int[] iArr = allowsBigEmoji() ? new int[1] : null;
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
            this.messageText = charSequenceReplaceEmoji;
            Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
            this.messageText = spannableReplaceAnimatedEmoji;
            if (iArr != null && iArr[0] > 1) {
                replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
            }
            checkEmojiOnly(iArr);
            checkBigAnimatedEmoji();
            setType();
            createPathThumb();
        }
        this.layoutCreated = z;
        generateThumbs(false);
        if (z2) {
            checkMediaExistance();
        }
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, boolean z, boolean z2) {
        this(i, message, messageObject, null, null, null, null, z, z2, 0L);
    }

    public MessageObject(int i, TLRPC.Message message, boolean z, boolean z2) {
        this(i, message, null, null, null, null, null, z, z2, 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:506:0x0b06, code lost:
    
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x0b4d, code lost:
    
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0b4f, code lost:
    
        r0.media.webpage.description = org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R.string.EventLogOriginalCaptionEmpty);
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0b5c, code lost:
    
        r0.media.webpage.description = r1.message;
        r1 = r1.entities;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1109:0x1900  */
    /* JADX WARN: Removed duplicated region for block: B:1112:0x1952  */
    /* JADX WARN: Removed duplicated region for block: B:1114:0x1955  */
    /* JADX WARN: Removed duplicated region for block: B:1131:0x19e5  */
    /* JADX WARN: Removed duplicated region for block: B:1134:0x19f0 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:1135:0x19f1  */
    /* JADX WARN: Removed duplicated region for block: B:1139:0x1a06  */
    /* JADX WARN: Removed duplicated region for block: B:1140:0x1a0a  */
    /* JADX WARN: Removed duplicated region for block: B:1143:0x1a16  */
    /* JADX WARN: Removed duplicated region for block: B:1146:0x1a22  */
    /* JADX WARN: Removed duplicated region for block: B:1147:0x1a25  */
    /* JADX WARN: Removed duplicated region for block: B:1150:0x1a2d  */
    /* JADX WARN: Removed duplicated region for block: B:1151:0x1a30  */
    /* JADX WARN: Removed duplicated region for block: B:1159:0x1a62  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0a58  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0ac9  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0ad6  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0aed  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0b09  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x0b1b  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0b25  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0b70  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e0  */
    /* JADX WARN: Type inference failed for: r0v372, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r0v377, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r0v379, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v123, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r36v0, types: [java.lang.Object, org.telegram.messenger.MessageObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MessageObject(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, TLRPC.Chat chat, int[] iArr, boolean z) {
        String str;
        TLRPC.User user;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent2;
        TLRPC.User user2;
        boolean z2;
        TLRPC.Chat chat2;
        CharSequence string;
        TLRPC.TL_message tL_message;
        TLRPC.ChannelParticipant channelParticipant;
        TLRPC.ChannelParticipant channelParticipant2;
        MessagesController messagesController;
        char c;
        StringBuilder sb;
        String str2;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent3;
        String str3;
        String str4;
        String str5;
        CharSequence charSequenceReplaceCharSequence;
        CharSequence charSequence;
        SpannableString spannableString;
        SpannableString spannableString2;
        int i2;
        CharSequence string2;
        SpannableString spannableString3;
        boolean z3;
        SpannableString spannableString4;
        SpannableStringBuilder spannableStringBuilder;
        SpannableStringBuilder spannableStringBuilder2;
        SpannableStringBuilder spannableStringBuilder3;
        SpannableStringBuilder spannableStringBuilder4;
        SpannableStringBuilder spannableStringBuilder5;
        CharSequence charSequenceReplaceWithLink;
        TLObject user3;
        CharSequence charSequenceReplaceWithLink2;
        TLObject user4;
        String string3;
        CharSequence charSequenceReplaceWithLink3;
        CharSequence charSequence2;
        char c2;
        String pluralString;
        int i3;
        TLObject user5;
        CharSequence charSequenceReplaceWithLink4;
        TLRPC.TL_message tL_message2;
        CharSequence charSequenceReplaceWithLink5;
        int i4;
        int i5;
        TLRPC.WebPage webPage;
        ArrayList<TLRPC.MessageEntity> arrayList2;
        boolean z4;
        boolean z5;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        TLRPC.Peer peer;
        String str6;
        TLRPC.TL_messageMediaEmpty tL_messageMediaEmpty;
        TLRPC.WebPage webPage2;
        String str7;
        TLRPC.TL_message tL_message3;
        int i6;
        CharSequence charSequenceReplace;
        TLRPC.TL_message tL_message4;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.User user6;
        String str8;
        CharSequence string4;
        StringBuilder sb2;
        boolean z6;
        char c3;
        int i7;
        String pluralString2;
        int i8;
        int i9;
        boolean z7;
        CharSequence string5;
        TLRPC.TL_message tL_message5;
        MediaController mediaController;
        ArrayList<MessageObject> arrayList3;
        int[] iArr2;
        ?? r12;
        int i10;
        int[] iArr3;
        Spannable spannableReplaceAnimatedEmoji;
        int i11;
        boolean z8;
        boolean z9;
        TLRPC.TL_message tL_message6;
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.currentEvent = tL_channelAdminLogEvent;
        this.currentAccount = i;
        if (tL_channelAdminLogEvent.user_id > 0) {
            str = "%2$s";
            user = MessagesController.getInstance(i).getUser(Long.valueOf(tL_channelAdminLogEvent.user_id));
        } else {
            str = "%2$s";
            user = null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(tL_channelAdminLogEvent.date * 1000);
        int i12 = gregorianCalendar.get(6);
        int i13 = gregorianCalendar.get(1);
        int i14 = gregorianCalendar.get(2);
        this.dateKey = String.format("%d_%02d_%02d", Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i12));
        this.dateKeyInt = i13 + (i14 * 1000) + (i12 * 100000);
        this.monthKey = String.format("%d_%02d", Integer.valueOf(i13), Integer.valueOf(i14));
        TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
        tL_peerChannel.channel_id = chat.id;
        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
        String str9 = "";
        String str10 = str;
        String str11 = "un1";
        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTitle) {
            String str12 = ((TLRPC.TL_channelAdminLogEventActionChangeTitle) channelAdminLogEventAction).new_value;
            string2 = chat.megagroup ? LocaleController.formatString("EventLogEditedGroupTitle", R.string.EventLogEditedGroupTitle, str12) : LocaleController.formatString("EventLogEditedChannelTitle", R.string.EventLogEditedChannelTitle, str12);
        } else {
            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePhoto) {
                TLRPC.TL_channelAdminLogEventActionChangePhoto tL_channelAdminLogEventActionChangePhoto = (TLRPC.TL_channelAdminLogEventActionChangePhoto) channelAdminLogEventAction;
                TLRPC.TL_messageService tL_messageService = new TLRPC.TL_messageService();
                this.messageOwner = tL_messageService;
                if (tL_channelAdminLogEventActionChangePhoto.new_photo instanceof TLRPC.TL_photoEmpty) {
                    tL_messageService.action = new TLRPC.TL_messageActionChatDeletePhoto();
                    i3 = chat.megagroup ? R.string.EventLogRemovedWGroupPhoto : R.string.EventLogRemovedChannelPhoto;
                } else {
                    tL_messageService.action = new TLRPC.TL_messageActionChatEditPhoto();
                    this.messageOwner.action.photo = tL_channelAdminLogEventActionChangePhoto.new_photo;
                    i3 = chat.megagroup ? isVideoAvatar() ? R.string.EventLogEditedGroupVideo : R.string.EventLogEditedGroupPhoto : isVideoAvatar() ? R.string.EventLogEditedChannelVideo : R.string.EventLogEditedChannelPhoto;
                }
            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoin) {
                i3 = chat.megagroup ? R.string.EventLogGroupJoined : R.string.EventLogChannelJoined;
            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantLeave) {
                TLRPC.TL_messageService tL_messageService2 = new TLRPC.TL_messageService();
                this.messageOwner = tL_messageService2;
                tL_messageService2.action = new TLRPC.TL_messageActionChatDeleteUser();
                this.messageOwner.action.user_id = tL_channelAdminLogEvent.user_id;
                i3 = chat.megagroup ? R.string.EventLogLeftGroup : R.string.EventLogLeftChannel;
            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantInvite) {
                TLRPC.TL_messageService tL_messageService3 = new TLRPC.TL_messageService();
                this.messageOwner = tL_messageService3;
                tL_messageService3.action = new TLRPC.TL_messageActionChatAddUser();
                long peerId = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantInvite) channelAdminLogEventAction).participant.peer);
                TLObject user7 = peerId > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId));
                TLRPC.Peer peer2 = this.messageOwner.from_id;
                if (!(peer2 instanceof TLRPC.TL_peerUser) || peerId != peer2.user_id) {
                    string2 = replaceWithLink(LocaleController.getString(R.string.EventLogAdded), "un2", user7);
                    this.messageText = string2;
                } else if (chat.megagroup) {
                }
            } else {
                boolean z10 = channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin;
                if (z10) {
                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                    user2 = user;
                    z2 = z10;
                } else {
                    boolean z11 = channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleBan;
                    if (z11) {
                        z2 = z10;
                        TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                        str2 = "/";
                        if ((tL_channelAdminLogEventActionParticipantToggleBan.prev_participant instanceof TLRPC.TL_channelParticipantAdmin) && (tL_channelAdminLogEventActionParticipantToggleBan.new_participant instanceof TLRPC.TL_channelParticipant)) {
                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                            user2 = user;
                        }
                    } else {
                        str2 = "/";
                    }
                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) {
                        TLRPC.TL_channelAdminLogEventActionDefaultBannedRights tL_channelAdminLogEventActionDefaultBannedRights = (TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) channelAdminLogEventAction;
                        TLRPC.TL_message tL_message7 = new TLRPC.TL_message();
                        this.messageOwner = tL_message7;
                        tL_message7.realId = -1;
                        TLRPC.TL_chatBannedRights tL_chatBannedRights = tL_channelAdminLogEventActionDefaultBannedRights.prev_banned_rights;
                        TLRPC.TL_chatBannedRights tL_chatBannedRights2 = tL_channelAdminLogEventActionDefaultBannedRights.new_banned_rights;
                        StringBuilder sb3 = new StringBuilder(LocaleController.getString(R.string.EventLogDefaultPermissions));
                        tL_chatBannedRights = tL_chatBannedRights == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights;
                        tL_chatBannedRights2 = tL_chatBannedRights2 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights2;
                        if (tL_chatBannedRights.send_messages != tL_chatBannedRights2.send_messages) {
                            sb3.append('\n');
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.send_messages ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedSendMessages));
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (tL_chatBannedRights.send_stickers != tL_chatBannedRights2.send_stickers || tL_chatBannedRights.send_inline != tL_chatBannedRights2.send_inline || tL_chatBannedRights.send_gifs != tL_chatBannedRights2.send_gifs || tL_chatBannedRights.send_games != tL_chatBannedRights2.send_games) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.send_stickers ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedSendStickers));
                        }
                        if (tL_chatBannedRights.send_media != tL_chatBannedRights2.send_media) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.send_media ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedSendMedia));
                        }
                        if (tL_chatBannedRights.send_polls != tL_chatBannedRights2.send_polls) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.send_polls ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedSendPolls));
                        }
                        if (tL_chatBannedRights.embed_links != tL_chatBannedRights2.embed_links) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.embed_links ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedSendEmbed));
                        }
                        if (tL_chatBannedRights.change_info != tL_chatBannedRights2.change_info) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.change_info ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedChangeInfo));
                        }
                        if (tL_chatBannedRights.invite_users != tL_chatBannedRights2.invite_users) {
                            if (!z7) {
                                sb3.append('\n');
                                z7 = true;
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.invite_users ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedInviteUsers));
                        }
                        if (tL_chatBannedRights.pin_messages != tL_chatBannedRights2.pin_messages) {
                            if (!z7) {
                                sb3.append('\n');
                            }
                            sb3.append('\n');
                            sb3.append(!tL_chatBannedRights2.pin_messages ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(R.string.EventLogRestrictedPinMessages));
                        }
                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                        user2 = user;
                        tL_message = null;
                        chat2 = chat;
                        string5 = sb3.toString();
                        this.messageText = string5;
                        tL_message2 = tL_message;
                        arrayList2 = null;
                        if (this.messageOwner == null) {
                            this.messageOwner = new TLRPC.TL_messageService();
                        }
                        this.messageOwner.message = this.messageText.toString();
                        this.messageOwner.from_id = new TLRPC.TL_peerUser();
                        TLRPC.Message message = this.messageOwner;
                        message.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                        message.date = tL_channelAdminLogEvent2.date;
                        int i15 = iArr[0];
                        iArr[0] = i15 + 1;
                        message.id = i15;
                        this.eventId = tL_channelAdminLogEvent2.id;
                        message.out = false;
                        message.peer_id = new TLRPC.TL_peerChannel();
                        TLRPC.Message message2 = this.messageOwner;
                        message2.peer_id.channel_id = chat2.id;
                        message2.unread = false;
                        mediaController = MediaController.getInstance();
                        this.isOutOwnerCached = null;
                        tL_message2 = tL_message2 instanceof TLRPC.TL_messageEmpty ? null : tL_message2;
                        if (tL_message2 != null) {
                            tL_message2.out = false;
                            tL_message2.realId = tL_message2.id;
                            int i16 = iArr[0];
                            iArr[0] = i16 + 1;
                            tL_message2.id = i16;
                            tL_message2.flags &= -32769;
                            tL_message2.dialog_id = -chat2.id;
                            if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                i11 = tL_message2.date;
                                tL_message2.date = tL_channelAdminLogEvent2.date;
                            } else {
                                i11 = 0;
                            }
                            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) tL_message2, (AbstractMap<Long, TLRPC.User>) null, (AbstractMap<Long, TLRPC.Chat>) null, true, true, this.eventId);
                            messageObject.realDate = i11;
                            messageObject.currentEvent = tL_channelAdminLogEvent2;
                            if (messageObject.contentType >= 0) {
                                if (mediaController.isPlayingMessage(messageObject)) {
                                    MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
                                    messageObject.audioProgress = playingMessageObject.audioProgress;
                                    messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                                }
                                z8 = false;
                                z8 = false;
                                z9 = true;
                                z9 = true;
                                createDateArray(this.currentAccount, tL_channelAdminLogEvent, arrayList, map, z);
                                arrayList3 = arrayList;
                                if (z) {
                                    arrayList3.add(0, messageObject);
                                } else {
                                    arrayList3.add(arrayList.size() - 1, messageObject);
                                }
                            } else {
                                arrayList3 = arrayList;
                                z8 = false;
                                z9 = true;
                                this.contentType = -1;
                            }
                            if (arrayList2 != null) {
                                messageObject.webPageDescriptionEntities = arrayList2;
                                iArr2 = null;
                                messageObject.linkDescription = null;
                                messageObject.generateLinkDescription();
                                r12 = z8;
                                i10 = z9;
                            } else {
                                iArr2 = null;
                                r12 = z8;
                                i10 = z9;
                            }
                        } else {
                            arrayList3 = arrayList;
                            iArr2 = null;
                            r12 = 0;
                            i10 = 1;
                        }
                        if (!(tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) && this.contentType >= 0) {
                            createDateArray(this.currentAccount, tL_channelAdminLogEvent, arrayList, map, z);
                            if (z) {
                                arrayList3.add(arrayList.size() - i10, this);
                            } else {
                                arrayList3.add(r12, this);
                            }
                            if (this.messageText == null) {
                                this.messageText = str9;
                            }
                            TextPaint textPaint = !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) ? Theme.chat_msgGameTextPaint : Theme.chat_msgTextPaint;
                            iArr3 = !allowsBigEmoji() ? new int[i10] : iArr2;
                            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), (boolean) r12, iArr3);
                            this.messageText = charSequenceReplaceEmoji;
                            spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
                            this.messageText = spannableReplaceAnimatedEmoji;
                            if (iArr3 != null && iArr3[r12] > i10) {
                                replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr3);
                            }
                            checkEmojiOnly(iArr3);
                            setType();
                            measureInlineBotButtons();
                            generateCaption();
                            if (mediaController.isPlayingMessage(this)) {
                                MessageObject playingMessageObject2 = mediaController.getPlayingMessageObject();
                                this.audioProgress = playingMessageObject2.audioProgress;
                                this.audioProgressSec = playingMessageObject2.audioProgressSec;
                            }
                            generateLayout(user2);
                            this.layoutCreated = i10;
                            generateThumbs(r12);
                            checkMediaExistance();
                            return;
                        }
                        return;
                    }
                    if (z11) {
                        TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan2 = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                        TLRPC.TL_message tL_message8 = new TLRPC.TL_message();
                        this.messageOwner = tL_message8;
                        tL_message8.realId = -1;
                        long peerId2 = getPeerId(tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.peer);
                        TLObject user8 = peerId2 > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId2)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId2));
                        TLRPC.TL_chatBannedRights tL_chatBannedRights3 = tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.banned_rights;
                        TLRPC.TL_chatBannedRights tL_chatBannedRights4 = tL_channelAdminLogEventActionParticipantToggleBan2.new_participant.banned_rights;
                        if (!chat.megagroup || (tL_chatBannedRights4 != null && tL_chatBannedRights4.view_messages && (tL_chatBannedRights3 == null || tL_chatBannedRights4.until_date == tL_chatBannedRights3.until_date))) {
                            user6 = user;
                            str8 = "";
                            String string6 = LocaleController.getString((tL_chatBannedRights4 == null || !(tL_chatBannedRights3 == null || tL_chatBannedRights4.view_messages)) ? R.string.EventLogChannelUnrestricted : R.string.EventLogChannelRestricted);
                            string4 = String.format(string6, getUserName(user8, this.messageOwner.entities, string6.indexOf("%1$s")));
                        } else {
                            if (tL_chatBannedRights4 != null && !AndroidUtilities.isBannedForever(tL_chatBannedRights4)) {
                                sb2 = new StringBuilder();
                                int i17 = tL_chatBannedRights4.until_date - tL_channelAdminLogEvent.date;
                                int i18 = ((i17 / 60) / 60) / 24;
                                int i19 = i17 - (RemoteMessageConst.DEFAULT_TTL * i18);
                                str8 = "";
                                int i20 = (i19 / 60) / 60;
                                int i21 = (i19 - (i20 * 3600)) / 60;
                                int i22 = 3;
                                int i23 = 0;
                                int i24 = 0;
                                while (true) {
                                    if (i23 >= i22) {
                                        user6 = user;
                                        break;
                                    }
                                    user6 = user;
                                    if (i23 != 0) {
                                        i7 = i18;
                                        if (i23 == 1) {
                                            if (i20 != 0) {
                                                pluralString2 = LocaleController.formatPluralString("Hours", i20, new Object[0]);
                                                i8 = i24 + 1;
                                                i9 = i8;
                                            }
                                            i9 = i24;
                                            pluralString2 = null;
                                        } else {
                                            if (i21 != 0) {
                                                pluralString2 = LocaleController.formatPluralString("Minutes", i21, new Object[0]);
                                                i8 = i24 + 1;
                                                i9 = i8;
                                            }
                                            i9 = i24;
                                            pluralString2 = null;
                                        }
                                        if (this.messageOwner == null) {
                                        }
                                        this.messageOwner.message = this.messageText.toString();
                                        this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                        TLRPC.Message message3 = this.messageOwner;
                                        message3.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                        message3.date = tL_channelAdminLogEvent2.date;
                                        int i152 = iArr[0];
                                        iArr[0] = i152 + 1;
                                        message3.id = i152;
                                        this.eventId = tL_channelAdminLogEvent2.id;
                                        message3.out = false;
                                        message3.peer_id = new TLRPC.TL_peerChannel();
                                        TLRPC.Message message22 = this.messageOwner;
                                        message22.peer_id.channel_id = chat2.id;
                                        message22.unread = false;
                                        mediaController = MediaController.getInstance();
                                        this.isOutOwnerCached = null;
                                        if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                        }
                                        if (tL_message2 != null) {
                                        }
                                        if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                            return;
                                        }
                                        createDateArray(this.currentAccount, tL_channelAdminLogEvent, arrayList, map, z);
                                        if (z) {
                                        }
                                        if (this.messageText == null) {
                                        }
                                        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
                                        }
                                        if (!allowsBigEmoji()) {
                                        }
                                        CharSequence charSequenceReplaceEmoji2 = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), (boolean) r12, iArr3);
                                        this.messageText = charSequenceReplaceEmoji2;
                                        spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji2, textPaint.getFontMetricsInt());
                                        this.messageText = spannableReplaceAnimatedEmoji;
                                        if (iArr3 != null) {
                                            replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr3);
                                        }
                                        checkEmojiOnly(iArr3);
                                        setType();
                                        measureInlineBotButtons();
                                        generateCaption();
                                        if (mediaController.isPlayingMessage(this)) {
                                        }
                                        generateLayout(user2);
                                        this.layoutCreated = i10;
                                        generateThumbs(r12);
                                        checkMediaExistance();
                                        return;
                                    }
                                    if (i18 != 0) {
                                        i8 = i24 + 1;
                                        i7 = i18;
                                        pluralString2 = LocaleController.formatPluralString("Days", i18, new Object[0]);
                                        i9 = i8;
                                    } else {
                                        i7 = i18;
                                        i9 = i24;
                                        pluralString2 = null;
                                    }
                                    if (pluralString2 != null) {
                                        if (sb2.length() > 0) {
                                            sb2.append(", ");
                                        }
                                        sb2.append(pluralString2);
                                    }
                                    if (i9 == 2) {
                                        break;
                                    }
                                    i23++;
                                    i18 = i7;
                                    i24 = i9;
                                    user = user6;
                                    i22 = 3;
                                }
                            } else {
                                user6 = user;
                                str8 = "";
                                sb2 = new StringBuilder(LocaleController.getString(R.string.UserRestrictionsUntilForever));
                            }
                            String string7 = LocaleController.getString(R.string.EventLogRestrictedUntil);
                            StringBuilder sb4 = new StringBuilder(String.format(string7, getUserName(user8, this.messageOwner.entities, string7.indexOf("%1$s")), sb2.toString()));
                            tL_chatBannedRights3 = tL_chatBannedRights3 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights3;
                            tL_chatBannedRights4 = tL_chatBannedRights4 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights4;
                            if (tL_chatBannedRights3.view_messages != tL_chatBannedRights4.view_messages) {
                                sb4.append('\n');
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.view_messages ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedReadMessages));
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (tL_chatBannedRights3.send_messages != tL_chatBannedRights4.send_messages) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.send_messages ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedSendMessages));
                            }
                            if (tL_chatBannedRights3.send_stickers != tL_chatBannedRights4.send_stickers || tL_chatBannedRights3.send_inline != tL_chatBannedRights4.send_inline || tL_chatBannedRights3.send_gifs != tL_chatBannedRights4.send_gifs || tL_chatBannedRights3.send_games != tL_chatBannedRights4.send_games) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.send_stickers ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedSendStickers));
                            }
                            if (tL_chatBannedRights3.send_media != tL_chatBannedRights4.send_media) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.send_media ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedSendMedia));
                            }
                            if (tL_chatBannedRights3.send_polls != tL_chatBannedRights4.send_polls) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.send_polls ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedSendPolls));
                            }
                            if (tL_chatBannedRights3.embed_links != tL_chatBannedRights4.embed_links) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.embed_links ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedSendEmbed));
                            }
                            if (tL_chatBannedRights3.change_info != tL_chatBannedRights4.change_info) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.change_info ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedChangeInfo));
                            }
                            if (tL_chatBannedRights3.invite_users != tL_chatBannedRights4.invite_users) {
                                if (!z6) {
                                    sb4.append('\n');
                                    z6 = true;
                                }
                                sb4.append('\n');
                                sb4.append(!tL_chatBannedRights4.invite_users ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedInviteUsers));
                            }
                            if (tL_chatBannedRights3.pin_messages != tL_chatBannedRights4.pin_messages) {
                                if (z6) {
                                    c3 = '\n';
                                } else {
                                    c3 = '\n';
                                    sb4.append('\n');
                                }
                                sb4.append(c3);
                                sb4.append(!tL_chatBannedRights4.pin_messages ? '+' : '-');
                                sb4.append(' ');
                                sb4.append(LocaleController.getString(R.string.EventLogRestrictedPinMessages));
                            }
                            string4 = sb4.toString();
                        }
                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                        charSequence = string4;
                        str9 = str8;
                        user2 = user6;
                    } else {
                        TLRPC.User user9 = user;
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionUpdatePinned) {
                            TLRPC.TL_channelAdminLogEventActionUpdatePinned tL_channelAdminLogEventActionUpdatePinned = (TLRPC.TL_channelAdminLogEventActionUpdatePinned) channelAdminLogEventAction;
                            ?? r0 = tL_channelAdminLogEventActionUpdatePinned.message;
                            user2 = user9;
                            if (user9 == null || user2.id != 136817688 || (messageFwdHeader = r0.fwd_from) == null || !(messageFwdHeader.from_id instanceof TLRPC.TL_peerChannel)) {
                                if ((r0 instanceof TLRPC.TL_messageEmpty) || !r0.pinned) {
                                    i3 = R.string.EventLogUnpinnedMessages;
                                    tL_message4 = r0;
                                } else {
                                    i3 = R.string.EventLogPinnedMessages;
                                    tL_message4 = r0;
                                }
                                str9 = "";
                                tL_message5 = tL_message4;
                                string2 = LocaleController.getString(i3);
                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                str5 = "un1";
                                tL_message6 = tL_message5;
                                charSequenceReplaceWithLink4 = string2;
                                user5 = user2;
                                str11 = str5;
                                tL_message3 = tL_message6;
                                CharSequence charSequenceReplaceWithLink6 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                tL_message = tL_message3;
                                charSequenceReplace = charSequenceReplaceWithLink6;
                                chat2 = chat;
                                string5 = charSequenceReplace;
                            } else {
                                user5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tL_channelAdminLogEventActionUpdatePinned.message.fwd_from.from_id.channel_id));
                                TLRPC.Message message4 = tL_channelAdminLogEventActionUpdatePinned.message;
                                charSequenceReplaceWithLink4 = LocaleController.getString(((message4 instanceof TLRPC.TL_messageEmpty) || !message4.pinned) ? R.string.EventLogUnpinnedMessages : R.string.EventLogPinnedMessages);
                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                str9 = "";
                                tL_message3 = r0;
                                CharSequence charSequenceReplaceWithLink62 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                tL_message = tL_message3;
                                charSequenceReplace = charSequenceReplaceWithLink62;
                                chat2 = chat;
                                string5 = charSequenceReplace;
                            }
                        } else {
                            user2 = user9;
                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStopPoll) {
                                ?? r02 = ((TLRPC.TL_channelAdminLogEventActionStopPoll) channelAdminLogEventAction).message;
                                if ((getMedia((TLRPC.Message) r02) instanceof TLRPC.TL_messageMediaPoll) && ((TLRPC.TL_messageMediaPoll) getMedia((TLRPC.Message) r02)).poll.quiz) {
                                    i3 = R.string.EventLogStopQuiz;
                                    tL_message4 = r02;
                                } else {
                                    i3 = R.string.EventLogStopPoll;
                                    tL_message4 = r02;
                                }
                            } else {
                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatures) {
                                    i3 = ((TLRPC.TL_channelAdminLogEventActionToggleSignatures) channelAdminLogEventAction).new_value ? R.string.EventLogToggledSignaturesOn : R.string.EventLogToggledSignaturesOff;
                                } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantSubExtend) {
                                    i3 = R.string.EventLogSubExtend;
                                } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) {
                                    i3 = ((TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) channelAdminLogEventAction).value ? R.string.EventLogToggledSignaturesProfilesOn : R.string.EventLogToggledSignaturesProfilesOff;
                                } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleInvites) {
                                    i3 = ((TLRPC.TL_channelAdminLogEventActionToggleInvites) channelAdminLogEventAction).new_value ? R.string.EventLogToggledInvitesOn : R.string.EventLogToggledInvitesOff;
                                } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                    ?? r03 = ((TLRPC.TL_channelAdminLogEventActionDeleteMessage) channelAdminLogEventAction).message;
                                    if (user2 == null || user2.id != MessagesController.getInstance(this.currentAccount).telegramAntispamUserId) {
                                        i3 = R.string.EventLogDeletedMessages;
                                        tL_message4 = r03;
                                    } else {
                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                        tL_message = r03;
                                        charSequenceReplace = LocaleController.getString(R.string.EventLogDeletedMessages).replace("un1", UserObject.getUserName(user2));
                                        str9 = "";
                                        chat2 = chat;
                                        string5 = charSequenceReplace;
                                    }
                                } else {
                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) {
                                        TLRPC.TL_channelAdminLogEventActionChangeLinkedChat tL_channelAdminLogEventActionChangeLinkedChat = (TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) channelAdminLogEventAction;
                                        long j = tL_channelAdminLogEventActionChangeLinkedChat.new_value;
                                        long j2 = tL_channelAdminLogEventActionChangeLinkedChat.prev_value;
                                        if (chat.megagroup) {
                                            if (j == 0) {
                                                user5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2));
                                                i6 = R.string.EventLogRemovedLinkedChannel;
                                            } else {
                                                user5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                                                i6 = R.string.EventLogChangedLinkedChannel;
                                            }
                                        } else if (j == 0) {
                                            user5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2));
                                            i6 = R.string.EventLogRemovedLinkedGroup;
                                        } else {
                                            user5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                                            i6 = R.string.EventLogChangedLinkedGroup;
                                        }
                                        charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(i6), "un1", user2);
                                        this.messageText = charSequenceReplaceWithLink4;
                                        str11 = "un2";
                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                        str9 = "";
                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) {
                                        i3 = ((TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) channelAdminLogEventAction).new_value ? R.string.EventLogToggledInvitesHistoryOff : R.string.EventLogToggledInvitesHistoryOn;
                                        str9 = "";
                                        tL_message5 = null;
                                        string2 = LocaleController.getString(i3);
                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                        str5 = "un1";
                                        tL_message6 = tL_message5;
                                        charSequenceReplaceWithLink4 = string2;
                                        user5 = user2;
                                        str11 = str5;
                                        tL_message3 = tL_message6;
                                        CharSequence charSequenceReplaceWithLink622 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                        tL_message = tL_message3;
                                        charSequenceReplace = charSequenceReplaceWithLink622;
                                        chat2 = chat;
                                        string5 = charSequenceReplace;
                                    } else {
                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAbout) {
                                            this.messageText = replaceWithLink(LocaleController.getString(chat.megagroup ? R.string.EventLogEditedGroupDescription : R.string.EventLogEditedChannelDescription), "un1", user2);
                                            tL_message2 = new TLRPC.TL_message();
                                            tL_message2.out = false;
                                            tL_message2.unread = false;
                                            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                            tL_message2.from_id = tL_peerUser;
                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                                            tL_peerUser.user_id = tL_channelAdminLogEvent3.user_id;
                                            tL_message2.peer_id = tL_peerChannel;
                                            tL_message2.date = tL_channelAdminLogEvent3.date;
                                            TLRPC.TL_channelAdminLogEventActionChangeAbout tL_channelAdminLogEventActionChangeAbout = (TLRPC.TL_channelAdminLogEventActionChangeAbout) tL_channelAdminLogEvent3.action;
                                            tL_message2.message = tL_channelAdminLogEventActionChangeAbout.new_value;
                                            if (TextUtils.isEmpty(tL_channelAdminLogEventActionChangeAbout.prev_value)) {
                                                str9 = "";
                                                tL_messageMediaEmpty = new TLRPC.TL_messageMediaEmpty();
                                                tL_message2.media = tL_messageMediaEmpty;
                                            } else {
                                                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                                                tL_message2.media = tL_messageMediaWebPage;
                                                tL_messageMediaWebPage.webpage = new TLRPC.TL_webPage();
                                                TLRPC.WebPage webPage3 = tL_message2.media.webpage;
                                                webPage3.flags = 10;
                                                str9 = "";
                                                webPage3.display_url = str9;
                                                webPage3.url = str9;
                                                webPage3.site_name = LocaleController.getString(R.string.EventLogPreviousGroupDescription);
                                                webPage2 = tL_message2.media.webpage;
                                                str7 = ((TLRPC.TL_channelAdminLogEventActionChangeAbout) tL_channelAdminLogEvent3.action).prev_value;
                                                webPage2.description = str7;
                                            }
                                        } else {
                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                                            str9 = "";
                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTheme) {
                                                this.messageText = replaceWithLink(LocaleController.getString(chat.megagroup ? R.string.EventLogEditedGroupTheme : R.string.EventLogEditedChannelTheme), "un1", user2);
                                                tL_message2 = new TLRPC.TL_message();
                                                tL_message2.out = false;
                                                tL_message2.unread = false;
                                                TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                                                tL_message2.from_id = tL_peerUser2;
                                                tL_peerUser2.user_id = tL_channelAdminLogEvent3.user_id;
                                                tL_message2.peer_id = tL_peerChannel;
                                                tL_message2.date = tL_channelAdminLogEvent3.date;
                                                TLRPC.TL_channelAdminLogEventActionChangeTheme tL_channelAdminLogEventActionChangeTheme = (TLRPC.TL_channelAdminLogEventActionChangeTheme) tL_channelAdminLogEvent3.action;
                                                tL_message2.message = tL_channelAdminLogEventActionChangeTheme.new_value;
                                                if (TextUtils.isEmpty(tL_channelAdminLogEventActionChangeTheme.prev_value)) {
                                                    tL_messageMediaEmpty = new TLRPC.TL_messageMediaEmpty();
                                                    tL_message2.media = tL_messageMediaEmpty;
                                                } else {
                                                    TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage2 = new TLRPC.TL_messageMediaWebPage();
                                                    tL_message2.media = tL_messageMediaWebPage2;
                                                    tL_messageMediaWebPage2.webpage = new TLRPC.TL_webPage();
                                                    TLRPC.WebPage webPage4 = tL_message2.media.webpage;
                                                    webPage4.flags = 10;
                                                    webPage4.display_url = str9;
                                                    webPage4.url = str9;
                                                    webPage4.site_name = LocaleController.getString(R.string.EventLogPreviousGroupTheme);
                                                    webPage2 = tL_message2.media.webpage;
                                                    str7 = ((TLRPC.TL_channelAdminLogEventActionChangeTheme) tL_channelAdminLogEvent3.action).prev_value;
                                                    webPage2.description = str7;
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeUsername) {
                                                String str13 = ((TLRPC.TL_channelAdminLogEventActionChangeUsername) channelAdminLogEventAction).new_value;
                                                this.messageText = replaceWithLink(LocaleController.getString(!TextUtils.isEmpty(str13) ? chat.megagroup ? R.string.EventLogChangedGroupLink : R.string.EventLogChangedChannelLink : chat.megagroup ? R.string.EventLogRemovedGroupLink : R.string.EventLogRemovedChannelLink), "un1", user2);
                                                TLRPC.TL_message tL_message9 = new TLRPC.TL_message();
                                                tL_message9.out = false;
                                                tL_message9.unread = false;
                                                TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
                                                tL_message9.from_id = tL_peerUser3;
                                                tL_peerUser3.user_id = tL_channelAdminLogEvent3.user_id;
                                                tL_message9.peer_id = tL_peerChannel;
                                                tL_message9.date = tL_channelAdminLogEvent3.date;
                                                if (TextUtils.isEmpty(str13)) {
                                                    str6 = str2;
                                                    tL_message9.message = str9;
                                                } else {
                                                    StringBuilder sb5 = new StringBuilder();
                                                    sb5.append("https://");
                                                    sb5.append(MessagesController.getInstance(this.currentAccount).linkPrefix);
                                                    str6 = str2;
                                                    sb5.append(str6);
                                                    sb5.append(str13);
                                                    tL_message9.message = sb5.toString();
                                                }
                                                TLRPC.TL_messageEntityUrl tL_messageEntityUrl = new TLRPC.TL_messageEntityUrl();
                                                tL_messageEntityUrl.offset = 0;
                                                tL_messageEntityUrl.length = tL_message9.message.length();
                                                tL_message9.entities.add(tL_messageEntityUrl);
                                                if (TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent3.action).prev_value)) {
                                                    tL_message9.media = new TLRPC.TL_messageMediaEmpty();
                                                } else {
                                                    TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage3 = new TLRPC.TL_messageMediaWebPage();
                                                    tL_message9.media = tL_messageMediaWebPage3;
                                                    tL_messageMediaWebPage3.webpage = new TLRPC.TL_webPage();
                                                    TLRPC.WebPage webPage5 = tL_message9.media.webpage;
                                                    webPage5.flags = 10;
                                                    webPage5.display_url = str9;
                                                    webPage5.url = str9;
                                                    webPage5.site_name = LocaleController.getString(R.string.EventLogPreviousLink);
                                                    tL_message9.media.webpage.description = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + str6 + ((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent3.action).prev_value;
                                                }
                                                tL_message2 = tL_message9;
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditMessage) {
                                                tL_message2 = new TLRPC.TL_message();
                                                tL_message2.out = false;
                                                tL_message2.unread = false;
                                                tL_message2.peer_id = tL_peerChannel;
                                                tL_message2.date = tL_channelAdminLogEvent3.date;
                                                TLRPC.TL_channelAdminLogEventActionEditMessage tL_channelAdminLogEventActionEditMessage = (TLRPC.TL_channelAdminLogEventActionEditMessage) tL_channelAdminLogEvent3.action;
                                                ?? r2 = tL_channelAdminLogEventActionEditMessage.new_message;
                                                TLRPC.Message message5 = tL_channelAdminLogEventActionEditMessage.prev_message;
                                                if (message5 != null) {
                                                    tL_message2.reply_to = message5.reply_to;
                                                    i5 = message5.id;
                                                } else {
                                                    if (r2 != 0) {
                                                        tL_message2.reply_to = r2.reply_to;
                                                        i5 = r2.id;
                                                    }
                                                    if (r2 != 0 || (peer = r2.from_id) == null) {
                                                        TLRPC.TL_peerUser tL_peerUser4 = new TLRPC.TL_peerUser();
                                                        tL_message2.from_id = tL_peerUser4;
                                                        tL_peerUser4.user_id = tL_channelAdminLogEvent3.user_id;
                                                    } else {
                                                        tL_message2.from_id = peer;
                                                    }
                                                    if (getMedia((TLRPC.Message) r2) != null || (getMedia((TLRPC.Message) r2) instanceof TLRPC.TL_messageMediaEmpty) || (getMedia((TLRPC.Message) r2) instanceof TLRPC.TL_messageMediaWebPage)) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(R.string.EventLogEditedMessages), "un1", user2);
                                                        if (r2.action instanceof TLRPC.TL_messageActionGroupCall) {
                                                            tL_message2.message = r2.message;
                                                            tL_message2.entities = r2.entities;
                                                            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage4 = new TLRPC.TL_messageMediaWebPage();
                                                            tL_message2.media = tL_messageMediaWebPage4;
                                                            tL_messageMediaWebPage4.webpage = new TLRPC.TL_webPage();
                                                            tL_message2.media.webpage.site_name = LocaleController.getString(R.string.EventLogOriginalMessages);
                                                        } else {
                                                            r2.media = new TLRPC.TL_messageMediaEmpty();
                                                            tL_message2 = r2;
                                                            ArrayList<TLRPC.MessageEntity> arrayList4 = null;
                                                            tL_message2.reply_markup = r2.reply_markup;
                                                            webPage = tL_message2.media.webpage;
                                                            if (webPage != null) {
                                                                webPage.flags = 10;
                                                                webPage.display_url = str9;
                                                                webPage.url = str9;
                                                            }
                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                            arrayList2 = arrayList4;
                                                            chat2 = chat;
                                                        }
                                                    } else {
                                                        boolean z12 = !TextUtils.equals(r2.message, message5.message);
                                                        TLRPC.MessageMedia media = getMedia((TLRPC.Message) r2);
                                                        TLRPC.MessageMedia media2 = getMedia(message5);
                                                        if (media2 == null) {
                                                            z4 = true;
                                                        } else if (media.getClass() == media2.getClass() && (((photo = media.photo) == null || (photo2 = media2.photo) == null || photo.id == photo2.id) && (media.document == null || media2.document == null || getMedia((TLRPC.Message) r2).document.id == media2.document.id))) {
                                                            z4 = false;
                                                        } else {
                                                            z4 = false;
                                                            z5 = true;
                                                            this.messageText = replaceWithLink(LocaleController.getString(!z4 ? R.string.EventLogAddedMedia : (z5 && z12) ? R.string.EventLogEditedMediaCaption : z12 ? R.string.EventLogEditedCaption : R.string.EventLogEditedMedia), "un1", user2);
                                                            TLRPC.MessageMedia media3 = getMedia((TLRPC.Message) r2);
                                                            tL_message2.media = media3;
                                                            if (z12) {
                                                                media3.webpage = new TLRPC.TL_webPage();
                                                                tL_message2.media.webpage.site_name = LocaleController.getString(R.string.EventLogOriginalCaption);
                                                            }
                                                            ArrayList<TLRPC.MessageEntity> arrayList42 = null;
                                                            tL_message2.reply_markup = r2.reply_markup;
                                                            webPage = tL_message2.media.webpage;
                                                            if (webPage != null) {
                                                            }
                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                            arrayList2 = arrayList42;
                                                            chat2 = chat;
                                                        }
                                                        z5 = false;
                                                        this.messageText = replaceWithLink(LocaleController.getString(!z4 ? R.string.EventLogAddedMedia : (z5 && z12) ? R.string.EventLogEditedMediaCaption : z12 ? R.string.EventLogEditedCaption : R.string.EventLogEditedMedia), "un1", user2);
                                                        TLRPC.MessageMedia media32 = getMedia((TLRPC.Message) r2);
                                                        tL_message2.media = media32;
                                                        if (z12) {
                                                        }
                                                        ArrayList<TLRPC.MessageEntity> arrayList422 = null;
                                                        tL_message2.reply_markup = r2.reply_markup;
                                                        webPage = tL_message2.media.webpage;
                                                        if (webPage != null) {
                                                        }
                                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                        arrayList2 = arrayList422;
                                                        chat2 = chat;
                                                    }
                                                    if (this.messageOwner == null) {
                                                    }
                                                    this.messageOwner.message = this.messageText.toString();
                                                    this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                                    TLRPC.Message message32 = this.messageOwner;
                                                    message32.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                                    message32.date = tL_channelAdminLogEvent2.date;
                                                    int i1522 = iArr[0];
                                                    iArr[0] = i1522 + 1;
                                                    message32.id = i1522;
                                                    this.eventId = tL_channelAdminLogEvent2.id;
                                                    message32.out = false;
                                                    message32.peer_id = new TLRPC.TL_peerChannel();
                                                    TLRPC.Message message222 = this.messageOwner;
                                                    message222.peer_id.channel_id = chat2.id;
                                                    message222.unread = false;
                                                    mediaController = MediaController.getInstance();
                                                    this.isOutOwnerCached = null;
                                                    if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                                    }
                                                    if (tL_message2 != null) {
                                                    }
                                                    if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                    }
                                                }
                                                tL_message2.id = i5;
                                                if (r2 != 0) {
                                                    TLRPC.TL_peerUser tL_peerUser42 = new TLRPC.TL_peerUser();
                                                    tL_message2.from_id = tL_peerUser42;
                                                    tL_peerUser42.user_id = tL_channelAdminLogEvent3.user_id;
                                                    if (getMedia((TLRPC.Message) r2) != null) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(R.string.EventLogEditedMessages), "un1", user2);
                                                        if (r2.action instanceof TLRPC.TL_messageActionGroupCall) {
                                                        }
                                                    }
                                                }
                                                if (this.messageOwner == null) {
                                                }
                                                this.messageOwner.message = this.messageText.toString();
                                                this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                                TLRPC.Message message322 = this.messageOwner;
                                                message322.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                                message322.date = tL_channelAdminLogEvent2.date;
                                                int i15222 = iArr[0];
                                                iArr[0] = i15222 + 1;
                                                message322.id = i15222;
                                                this.eventId = tL_channelAdminLogEvent2.id;
                                                message322.out = false;
                                                message322.peer_id = new TLRPC.TL_peerChannel();
                                                TLRPC.Message message2222 = this.messageOwner;
                                                message2222.peer_id.channel_id = chat2.id;
                                                message2222.unread = false;
                                                mediaController = MediaController.getInstance();
                                                this.isOutOwnerCached = null;
                                                if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                                }
                                                if (tL_message2 != null) {
                                                }
                                                if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                }
                                            } else {
                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) {
                                                    TLRPC.InputStickerSet inputStickerSet = ((TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) channelAdminLogEventAction).new_stickerset;
                                                    i3 = (inputStickerSet == null || (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) ? R.string.EventLogRemovedEmojiPack : R.string.EventLogChangedEmojiPack;
                                                } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeStickerSet) {
                                                    TLRPC.InputStickerSet inputStickerSet2 = ((TLRPC.TL_channelAdminLogEventActionChangeStickerSet) channelAdminLogEventAction).new_stickerset;
                                                    i3 = (inputStickerSet2 == null || (inputStickerSet2 instanceof TLRPC.TL_inputStickerSetEmpty)) ? R.string.EventLogRemovedStickersSet : R.string.EventLogChangedStickersSet;
                                                } else {
                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLocation) {
                                                        TLRPC.ChannelLocation channelLocation = ((TLRPC.TL_channelAdminLogEventActionChangeLocation) channelAdminLogEventAction).new_value;
                                                        if (channelLocation instanceof TLRPC.TL_channelLocationEmpty) {
                                                            i3 = R.string.EventLogRemovedLocation;
                                                        } else {
                                                            string2 = LocaleController.formatString("EventLogChangedLocation", R.string.EventLogChangedLocation, ((TLRPC.TL_channelLocation) channelLocation).address);
                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                            str5 = "un1";
                                                            tL_message6 = null;
                                                            charSequenceReplaceWithLink4 = string2;
                                                            user5 = user2;
                                                            str11 = str5;
                                                            tL_message3 = tL_message6;
                                                            CharSequence charSequenceReplaceWithLink6222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                            tL_message = tL_message3;
                                                            charSequenceReplace = charSequenceReplaceWithLink6222;
                                                            chat2 = chat;
                                                            string5 = charSequenceReplace;
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSlowMode) {
                                                        int i25 = ((TLRPC.TL_channelAdminLogEventActionToggleSlowMode) channelAdminLogEventAction).new_value;
                                                        if (i25 == 0) {
                                                            i3 = R.string.EventLogToggledSlowmodeOff;
                                                        } else {
                                                            string2 = LocaleController.formatString(R.string.EventLogToggledSlowmodeOn, i25 < 60 ? LocaleController.formatPluralString("Seconds", i25, new Object[0]) : i25 < 3600 ? LocaleController.formatPluralString("Minutes", i25 / 60, new Object[0]) : LocaleController.formatPluralString("Hours", (i25 / 60) / 60, new Object[0]));
                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                            str5 = "un1";
                                                            tL_message6 = null;
                                                            charSequenceReplaceWithLink4 = string2;
                                                            user5 = user2;
                                                            str11 = str5;
                                                            tL_message3 = tL_message6;
                                                            CharSequence charSequenceReplaceWithLink62222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                            tL_message = tL_message3;
                                                            charSequenceReplace = charSequenceReplaceWithLink62222;
                                                            chat2 = chat;
                                                            string5 = charSequenceReplace;
                                                        }
                                                    } else {
                                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) {
                                                            string2 = LocaleController.getString(((TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) channelAdminLogEventAction).new_value ? R.string.EventLogToggledAutotranslationOn : R.string.EventLogToggledAutotranslationOff);
                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStartGroupCall) {
                                                            i3 = (!ChatObject.isChannel(chat) || (chat.megagroup && !chat.gigagroup)) ? R.string.EventLogStartedVoiceChat : R.string.EventLogStartedLiveStream;
                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDiscardGroupCall) {
                                                            i3 = (!ChatObject.isChannel(chat) || (chat.megagroup && !chat.gigagroup)) ? R.string.EventLogEndedVoiceChat : R.string.EventLogEndedLiveStream;
                                                        } else {
                                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantMute) {
                                                                long peerId3 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantMute) channelAdminLogEventAction).participant.peer);
                                                                user5 = peerId3 > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId3)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId3));
                                                                i4 = R.string.EventLogVoiceChatMuted;
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantUnmute) {
                                                                long peerId4 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantUnmute) channelAdminLogEventAction).participant.peer);
                                                                user5 = peerId4 > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId4)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId4));
                                                                i4 = R.string.EventLogVoiceChatUnmuted;
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) {
                                                                i3 = ((TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) channelAdminLogEventAction).join_muted ? R.string.EventLogVoiceChatNotAllowedToSpeak : R.string.EventLogVoiceChatAllowedToSpeak;
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) {
                                                                TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite tL_channelAdminLogEventActionParticipantJoinByInvite = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) channelAdminLogEventAction;
                                                                this.messageText = replaceWithLink(LocaleController.getString(tL_channelAdminLogEventActionParticipantJoinByInvite.via_chatlist ? ChatObject.isChannelAndNotMegaGroup(chat) ? R.string.ActionInviteChannelUserFolder : R.string.ActionInviteUserFolder : ChatObject.isChannelAndNotMegaGroup(chat) ? R.string.ActionInviteChannelUser : R.string.ActionInviteUser), "un1", user2);
                                                                TLRPC.TL_chatInviteExported tL_chatInviteExported = tL_channelAdminLogEventActionParticipantJoinByInvite.invite;
                                                                if (tL_chatInviteExported != null && !TextUtils.isEmpty(tL_chatInviteExported.link)) {
                                                                    charSequenceReplaceWithLink5 = TextUtils.concat(this.messageText, " ", tL_channelAdminLogEventActionParticipantJoinByInvite.invite.link);
                                                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                    charSequence2 = charSequenceReplaceWithLink5;
                                                                    chat2 = chat;
                                                                    string = charSequence2;
                                                                    tL_message = null;
                                                                    string5 = string;
                                                                }
                                                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                chat2 = chat;
                                                                tL_message2 = null;
                                                                arrayList2 = null;
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleNoForwards) {
                                                                TLRPC.TL_channelAdminLogEventActionToggleNoForwards tL_channelAdminLogEventActionToggleNoForwards = (TLRPC.TL_channelAdminLogEventActionToggleNoForwards) channelAdminLogEventAction;
                                                                boolean z13 = ChatObject.isChannel(chat) && !chat.megagroup;
                                                                i3 = tL_channelAdminLogEventActionToggleNoForwards.new_value ? z13 ? R.string.ActionForwardsRestrictedChannel : R.string.ActionForwardsRestrictedGroup : z13 ? R.string.ActionForwardsEnabledChannel : R.string.ActionForwardsEnabledGroup;
                                                            } else {
                                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) {
                                                                    charSequenceReplaceWithLink = replaceWithLink(LocaleController.formatString("ActionDeletedInviteLinkClickable", R.string.ActionDeletedInviteLinkClickable, new Object[0]), "un1", user2);
                                                                    this.messageText = charSequenceReplaceWithLink;
                                                                    user3 = ((TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) channelAdminLogEventAction).invite;
                                                                    str3 = "un2";
                                                                } else {
                                                                    str3 = "un2";
                                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) {
                                                                        TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke tL_channelAdminLogEventActionExportedInviteRevoke = (TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) channelAdminLogEventAction;
                                                                        charSequenceReplaceWithLink = replaceWithLink(LocaleController.formatString("ActionRevokedInviteLinkClickable", R.string.ActionRevokedInviteLinkClickable, tL_channelAdminLogEventActionExportedInviteRevoke.invite.link), "un1", user2);
                                                                        this.messageText = charSequenceReplaceWithLink;
                                                                        user3 = tL_channelAdminLogEventActionExportedInviteRevoke.invite;
                                                                    } else {
                                                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) {
                                                                            TLRPC.TL_channelAdminLogEventActionExportedInviteEdit tL_channelAdminLogEventActionExportedInviteEdit = (TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) channelAdminLogEventAction;
                                                                            String str14 = tL_channelAdminLogEventActionExportedInviteEdit.prev_invite.link;
                                                                            this.messageText = replaceWithLink((str14 == null || !str14.equals(tL_channelAdminLogEventActionExportedInviteEdit.new_invite.link)) ? LocaleController.formatString("ActionEditedInviteLinkClickable", R.string.ActionEditedInviteLinkClickable, new Object[0]) : LocaleController.formatString("ActionEditedInviteLinkToSameClickable", R.string.ActionEditedInviteLinkToSameClickable, new Object[0]), "un1", user2);
                                                                            charSequenceReplaceWithLink2 = replaceWithLink(this.messageText, str3, tL_channelAdminLogEventActionExportedInviteEdit.prev_invite);
                                                                            this.messageText = charSequenceReplaceWithLink2;
                                                                            user4 = tL_channelAdminLogEventActionExportedInviteEdit.new_invite;
                                                                            str4 = "un3";
                                                                        } else {
                                                                            str4 = "un3";
                                                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantVolume) {
                                                                                TLRPC.TL_channelAdminLogEventActionParticipantVolume tL_channelAdminLogEventActionParticipantVolume = (TLRPC.TL_channelAdminLogEventActionParticipantVolume) channelAdminLogEventAction;
                                                                                long peerId5 = getPeerId(tL_channelAdminLogEventActionParticipantVolume.participant.peer);
                                                                                user5 = peerId5 > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId5)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId5));
                                                                                double participantVolume = ChatObject.getParticipantVolume(tL_channelAdminLogEventActionParticipantVolume.participant);
                                                                                Double.isNaN(participantVolume);
                                                                                double d = participantVolume / 100.0d;
                                                                                charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.formatString("ActionVolumeChanged", R.string.ActionVolumeChanged, Integer.valueOf((int) (d > 0.0d ? Math.max(d, 1.0d) : 0.0d))), "un1", user2);
                                                                                this.messageText = charSequenceReplaceWithLink4;
                                                                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                str11 = str3;
                                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) {
                                                                                TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL tL_channelAdminLogEventActionChangeHistoryTTL = (TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) channelAdminLogEventAction;
                                                                                if (chat.megagroup) {
                                                                                    int i26 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                                                    if (i26 == 0) {
                                                                                        i3 = R.string.ActionTTLDisabled;
                                                                                    } else {
                                                                                        if (i26 > 86400) {
                                                                                            c2 = 0;
                                                                                            pluralString = LocaleController.formatPluralString("Days", i26 / RemoteMessageConst.DEFAULT_TTL, new Object[0]);
                                                                                        } else {
                                                                                            c2 = 0;
                                                                                            pluralString = i26 >= 3600 ? LocaleController.formatPluralString("Hours", i26 / 3600, new Object[0]) : i26 >= 60 ? LocaleController.formatPluralString("Minutes", i26 / 60, new Object[0]) : LocaleController.formatPluralString("Seconds", i26, new Object[0]);
                                                                                        }
                                                                                        int i27 = R.string.ActionTTLChanged;
                                                                                        Object[] objArr = new Object[1];
                                                                                        objArr[c2] = pluralString;
                                                                                        string2 = LocaleController.formatString("ActionTTLChanged", i27, objArr);
                                                                                    }
                                                                                } else {
                                                                                    int i28 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                                                    charSequenceReplaceWithLink5 = i28 != 0 ? LocaleController.formatString("ActionTTLChannelChanged", R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i28)) : LocaleController.getString(R.string.ActionTTLChannelDisabled);
                                                                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                    charSequence2 = charSequenceReplaceWithLink5;
                                                                                    chat2 = chat;
                                                                                    string = charSequence2;
                                                                                    tL_message = null;
                                                                                    string5 = string;
                                                                                }
                                                                            } else {
                                                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) {
                                                                                    TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest tL_channelAdminLogEventActionParticipantJoinByRequest = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) channelAdminLogEventAction;
                                                                                    TLRPC.ExportedChatInvite exportedChatInvite = tL_channelAdminLogEventActionParticipantJoinByRequest.invite;
                                                                                    if (((exportedChatInvite instanceof TLRPC.TL_chatInviteExported) && "https://t.me/+PublicChat".equals(((TLRPC.TL_chatInviteExported) exportedChatInvite).link)) || (tL_channelAdminLogEventActionParticipantJoinByRequest.invite instanceof TLRPC.TL_chatInvitePublicJoinRequests)) {
                                                                                        charSequenceReplaceWithLink = replaceWithLink(LocaleController.getString(R.string.JoinedViaRequestApproved), "un1", user2);
                                                                                        this.messageText = charSequenceReplaceWithLink;
                                                                                        user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by));
                                                                                    } else {
                                                                                        CharSequence charSequenceReplaceWithLink7 = replaceWithLink(LocaleController.getString(R.string.JoinedViaInviteLinkApproved), "un1", user2);
                                                                                        this.messageText = charSequenceReplaceWithLink7;
                                                                                        charSequenceReplaceWithLink2 = replaceWithLink(charSequenceReplaceWithLink7, str3, tL_channelAdminLogEventActionParticipantJoinByRequest.invite);
                                                                                        this.messageText = charSequenceReplaceWithLink2;
                                                                                        user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by));
                                                                                    }
                                                                                } else {
                                                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) {
                                                                                        TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions tL_channelAdminLogEventActionChangeAvailableReactions = (TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) channelAdminLogEventAction;
                                                                                        boolean z14 = (tL_channelAdminLogEventActionChangeAvailableReactions.prev_value instanceof TLRPC.TL_chatReactionsSome) && (tL_channelAdminLogEventActionChangeAvailableReactions.new_value instanceof TLRPC.TL_chatReactionsSome);
                                                                                        CharSequence stringFrom = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.new_value);
                                                                                        if (z14) {
                                                                                            SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString("ActionReactionsChangedList", R.string.ActionReactionsChangedList, "**new**"), "un1", user2));
                                                                                            int iIndexOf = spannableStringBuilder6.toString().indexOf("**new**");
                                                                                            charSequenceReplaceWithLink3 = spannableStringBuilder6;
                                                                                            if (iIndexOf > 0) {
                                                                                                spannableStringBuilder6.replace(iIndexOf, iIndexOf + 7, stringFrom);
                                                                                                charSequenceReplaceWithLink3 = spannableStringBuilder6;
                                                                                            }
                                                                                        } else {
                                                                                            CharSequence stringFrom2 = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.prev_value);
                                                                                            SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString("ActionReactionsChanged", R.string.ActionReactionsChanged, "**old**", "**new**"), "un1", user2));
                                                                                            int iIndexOf2 = spannableStringBuilder7.toString().indexOf("**old**");
                                                                                            if (iIndexOf2 > 0) {
                                                                                                spannableStringBuilder7.replace(iIndexOf2, iIndexOf2 + 7, stringFrom2);
                                                                                            }
                                                                                            int iIndexOf3 = spannableStringBuilder7.toString().indexOf("**new**");
                                                                                            if (iIndexOf3 > 0) {
                                                                                                spannableStringBuilder7.replace(iIndexOf3, iIndexOf3 + 7, stringFrom);
                                                                                            }
                                                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                            charSequence2 = spannableStringBuilder7;
                                                                                            chat2 = chat;
                                                                                            string = charSequence2;
                                                                                            tL_message = null;
                                                                                            string5 = string;
                                                                                        }
                                                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeUsernames) {
                                                                                        TLRPC.TL_channelAdminLogEventActionChangeUsernames tL_channelAdminLogEventActionChangeUsernames = (TLRPC.TL_channelAdminLogEventActionChangeUsernames) channelAdminLogEventAction;
                                                                                        ArrayList arrayList5 = tL_channelAdminLogEventActionChangeUsernames.prev_value;
                                                                                        ArrayList arrayList6 = tL_channelAdminLogEventActionChangeUsernames.new_value;
                                                                                        this.messageText = null;
                                                                                        if (arrayList5 != null && arrayList6 != null) {
                                                                                            if (arrayList6.size() + 1 == arrayList5.size()) {
                                                                                                int i29 = 0;
                                                                                                String str15 = null;
                                                                                                while (true) {
                                                                                                    if (i29 >= arrayList5.size()) {
                                                                                                        break;
                                                                                                    }
                                                                                                    String str16 = (String) arrayList5.get(i29);
                                                                                                    if (!arrayList6.contains(str16)) {
                                                                                                        if (str15 != null) {
                                                                                                            str15 = null;
                                                                                                            break;
                                                                                                        }
                                                                                                        str15 = str16;
                                                                                                    }
                                                                                                    i29++;
                                                                                                }
                                                                                                if (str15 != null) {
                                                                                                    string3 = LocaleController.formatString("EventLogDeactivatedUsername", R.string.EventLogDeactivatedUsername, "@" + str15);
                                                                                                    this.messageText = replaceWithLink(string3, "un1", user2);
                                                                                                }
                                                                                            } else if (arrayList5.size() + 1 == arrayList6.size()) {
                                                                                                int i30 = 0;
                                                                                                String str17 = null;
                                                                                                while (true) {
                                                                                                    if (i30 >= arrayList6.size()) {
                                                                                                        break;
                                                                                                    }
                                                                                                    String str18 = (String) arrayList6.get(i30);
                                                                                                    if (!arrayList5.contains(str18)) {
                                                                                                        if (str17 != null) {
                                                                                                            str17 = null;
                                                                                                            break;
                                                                                                        }
                                                                                                        str17 = str18;
                                                                                                    }
                                                                                                    i30++;
                                                                                                }
                                                                                                if (str17 != null) {
                                                                                                    string3 = LocaleController.formatString("EventLogActivatedUsername", R.string.EventLogActivatedUsername, "@" + str17);
                                                                                                    this.messageText = replaceWithLink(string3, "un1", user2);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        if (this.messageText == null) {
                                                                                            string2 = LocaleController.formatString("EventLogChangeUsernames", R.string.EventLogChangeUsernames, getUsernamesString(arrayList5), getUsernamesString(arrayList6));
                                                                                        }
                                                                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                        chat2 = chat;
                                                                                        tL_message2 = null;
                                                                                        arrayList2 = null;
                                                                                    } else {
                                                                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleForum) {
                                                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                            string2 = ((TLRPC.TL_channelAdminLogEventActionToggleForum) channelAdminLogEventAction).new_value ? LocaleController.formatString("EventLogSwitchToForum", R.string.EventLogSwitchToForum, new Object[0]) : LocaleController.formatString("EventLogSwitchToGroup", R.string.EventLogSwitchToGroup, new Object[0]);
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionCreateTopic) {
                                                                                            charSequenceReplaceWithLink = replaceWithLink(LocaleController.formatString("EventLogCreateTopic", R.string.EventLogCreateTopic, new Object[0]), "un1", user2);
                                                                                            this.messageText = charSequenceReplaceWithLink;
                                                                                            user3 = ((TLRPC.TL_channelAdminLogEventActionCreateTopic) channelAdminLogEventAction).topic;
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditTopic) {
                                                                                            TLRPC.TL_channelAdminLogEventActionEditTopic tL_channelAdminLogEventActionEditTopic = (TLRPC.TL_channelAdminLogEventActionEditTopic) channelAdminLogEventAction;
                                                                                            TLRPC.ForumTopic forumTopic = tL_channelAdminLogEventActionEditTopic.prev_topic;
                                                                                            boolean z15 = forumTopic instanceof TLRPC.TL_forumTopic;
                                                                                            if (z15) {
                                                                                                TLRPC.ForumTopic forumTopic2 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                                                                if (forumTopic2 instanceof TLRPC.TL_forumTopic) {
                                                                                                    boolean z16 = ((TLRPC.TL_forumTopic) forumTopic).hidden;
                                                                                                    boolean z17 = ((TLRPC.TL_forumTopic) forumTopic2).hidden;
                                                                                                    if (z16 != z17) {
                                                                                                        charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.getString(z17 ? R.string.TopicHidden2 : R.string.TopicShown2), "%s", user2);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            if (z15) {
                                                                                                TLRPC.ForumTopic forumTopic3 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                                                                if (forumTopic3 instanceof TLRPC.TL_forumTopic) {
                                                                                                    boolean z18 = ((TLRPC.TL_forumTopic) forumTopic).closed;
                                                                                                    boolean z19 = ((TLRPC.TL_forumTopic) forumTopic3).closed;
                                                                                                    if (z18 != z19) {
                                                                                                        this.messageText = replaceWithLink(LocaleController.getString(z19 ? R.string.EventLogClosedTopic : R.string.EventLogReopenedTopic), "%s", user2);
                                                                                                        charSequenceReplaceWithLink = this.messageText;
                                                                                                        user3 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            CharSequence charSequenceReplaceWithLink8 = replaceWithLink(LocaleController.getString(R.string.EventLogEditTopic), "un1", user2);
                                                                                            this.messageText = charSequenceReplaceWithLink8;
                                                                                            charSequenceReplaceWithLink2 = replaceWithLink(charSequenceReplaceWithLink8, str3, tL_channelAdminLogEventActionEditTopic.prev_topic);
                                                                                            this.messageText = charSequenceReplaceWithLink2;
                                                                                            user4 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteTopic) {
                                                                                            charSequenceReplaceWithLink = replaceWithLink(LocaleController.getString(R.string.EventLogDeleteTopic), "un1", user2);
                                                                                            this.messageText = charSequenceReplaceWithLink;
                                                                                            user3 = ((TLRPC.TL_channelAdminLogEventActionDeleteTopic) channelAdminLogEventAction).topic;
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionPinTopic) {
                                                                                            TLRPC.TL_channelAdminLogEventActionPinTopic tL_channelAdminLogEventActionPinTopic = (TLRPC.TL_channelAdminLogEventActionPinTopic) channelAdminLogEventAction;
                                                                                            TLRPC.ForumTopic forumTopic4 = tL_channelAdminLogEventActionPinTopic.new_topic;
                                                                                            if ((forumTopic4 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic4).pinned) {
                                                                                                CharSequence charSequenceReplaceWithLink9 = replaceWithLink(LocaleController.formatString("EventLogPinTopic", R.string.EventLogPinTopic, new Object[0]), "un1", user2);
                                                                                                this.messageText = charSequenceReplaceWithLink9;
                                                                                                charSequenceReplaceWithLink3 = replaceWithLink(charSequenceReplaceWithLink9, str3, tL_channelAdminLogEventActionPinTopic.new_topic);
                                                                                            } else {
                                                                                                charSequenceReplaceWithLink = replaceWithLink(LocaleController.formatString("EventLogUnpinTopic", R.string.EventLogUnpinTopic, new Object[0]), "un1", user2);
                                                                                                this.messageText = charSequenceReplaceWithLink;
                                                                                                user3 = tL_channelAdminLogEventActionPinTopic.new_topic;
                                                                                            }
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) {
                                                                                            charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.getString(((TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) channelAdminLogEventAction).new_value ? R.string.EventLogEnabledAntiSpam : R.string.EventLogDisabledAntiSpam), "un1", user2);
                                                                                        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeColor) {
                                                                                            boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                            TLRPC.TL_channelAdminLogEventActionChangeColor tL_channelAdminLogEventActionChangeColor = (TLRPC.TL_channelAdminLogEventActionChangeColor) tL_channelAdminLogEvent2.action;
                                                                                            string2 = LocaleController.formatString(zIsChannelAndNotMegaGroup ? R.string.EventLogChangedColor : R.string.EventLogChangedColorGroup, AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.prev_value).toLowerCase(), AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.new_value).toLowerCase());
                                                                                        } else {
                                                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePeerColor) {
                                                                                                boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                                TLRPC.TL_channelAdminLogEventActionChangePeerColor tL_channelAdminLogEventActionChangePeerColor = (TLRPC.TL_channelAdminLogEventActionChangePeerColor) tL_channelAdminLogEvent2.action;
                                                                                                SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup2 ? R.string.EventLogChangedPeerColorIcon : R.string.EventLogChangedPeerColorIconGroup));
                                                                                                spannableStringBuilder = new SpannableStringBuilder();
                                                                                                if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 1) != 0) {
                                                                                                    spannableStringBuilder.append((CharSequence) "c");
                                                                                                    spannableStringBuilder5 = spannableStringBuilder8;
                                                                                                    spannableStringBuilder.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.prev_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                                                                                } else {
                                                                                                    spannableStringBuilder5 = spannableStringBuilder8;
                                                                                                }
                                                                                                if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 2) != 0) {
                                                                                                    if (spannableStringBuilder.length() > 0) {
                                                                                                        spannableStringBuilder.append((CharSequence) ", ");
                                                                                                    }
                                                                                                    spannableStringBuilder.append((CharSequence) "e");
                                                                                                    spannableStringBuilder.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                                                                                }
                                                                                                if (spannableStringBuilder.length() == 0) {
                                                                                                    spannableStringBuilder.append((CharSequence) LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                }
                                                                                                spannableStringBuilder3 = new SpannableStringBuilder();
                                                                                                if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 1) != 0) {
                                                                                                    spannableStringBuilder3.append((CharSequence) "c");
                                                                                                    spannableStringBuilder3.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.new_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder3.length() - 1, spannableStringBuilder3.length(), 33);
                                                                                                }
                                                                                                if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 2) != 0) {
                                                                                                    if (spannableStringBuilder3.length() > 0) {
                                                                                                        spannableStringBuilder3.append((CharSequence) ", ");
                                                                                                    }
                                                                                                    spannableStringBuilder3.append((CharSequence) "e");
                                                                                                    spannableStringBuilder3.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder3.length() - 1, spannableStringBuilder3.length(), 33);
                                                                                                }
                                                                                                spannableStringBuilder4 = spannableStringBuilder5;
                                                                                                if (spannableStringBuilder3.length() == 0) {
                                                                                                    spannableStringBuilder3.append((CharSequence) LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                }
                                                                                                string2 = AndroidUtilities.replaceCharSequence(str10, AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder4, spannableStringBuilder), spannableStringBuilder3);
                                                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) {
                                                                                                boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                                TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor tL_channelAdminLogEventActionChangeProfilePeerColor = (TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) tL_channelAdminLogEvent2.action;
                                                                                                SpannableStringBuilder spannableStringBuilder9 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup3 ? R.string.EventLogChangedProfileColorIcon : R.string.EventLogChangedProfileColorIconGroup));
                                                                                                spannableStringBuilder = new SpannableStringBuilder();
                                                                                                if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 1) != 0) {
                                                                                                    spannableStringBuilder.append((CharSequence) "c");
                                                                                                    spannableStringBuilder2 = spannableStringBuilder9;
                                                                                                    spannableStringBuilder.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                                                                                } else {
                                                                                                    spannableStringBuilder2 = spannableStringBuilder9;
                                                                                                }
                                                                                                if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 2) != 0) {
                                                                                                    if (spannableStringBuilder.length() > 0) {
                                                                                                        spannableStringBuilder.append((CharSequence) ", ");
                                                                                                    }
                                                                                                    spannableStringBuilder.append((CharSequence) "e");
                                                                                                    spannableStringBuilder.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                                                                                                }
                                                                                                if (spannableStringBuilder.length() == 0) {
                                                                                                    spannableStringBuilder.append((CharSequence) LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                }
                                                                                                SpannableStringBuilder spannableStringBuilder10 = new SpannableStringBuilder();
                                                                                                if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 1) != 0) {
                                                                                                    spannableStringBuilder10.append((CharSequence) "c");
                                                                                                    spannableStringBuilder10.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder10.length() - 1, spannableStringBuilder10.length(), 33);
                                                                                                }
                                                                                                if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 2) != 0) {
                                                                                                    if (spannableStringBuilder10.length() > 0) {
                                                                                                        spannableStringBuilder10.append((CharSequence) ", ");
                                                                                                    }
                                                                                                    spannableStringBuilder10.append((CharSequence) "e");
                                                                                                    spannableStringBuilder10.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder10.length() - 1, spannableStringBuilder10.length(), 33);
                                                                                                }
                                                                                                if (spannableStringBuilder10.length() == 0) {
                                                                                                    spannableStringBuilder3 = spannableStringBuilder10;
                                                                                                    spannableStringBuilder4 = spannableStringBuilder2;
                                                                                                    spannableStringBuilder3.append((CharSequence) LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                    string2 = AndroidUtilities.replaceCharSequence(str10, AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder4, spannableStringBuilder), spannableStringBuilder3);
                                                                                                } else {
                                                                                                    spannableStringBuilder3 = spannableStringBuilder10;
                                                                                                    spannableStringBuilder4 = spannableStringBuilder2;
                                                                                                    string2 = AndroidUtilities.replaceCharSequence(str10, AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder4, spannableStringBuilder), spannableStringBuilder3);
                                                                                                }
                                                                                            } else {
                                                                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) {
                                                                                                    boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                                    TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus tL_channelAdminLogEventActionChangeEmojiStatus = (TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) tL_channelAdminLogEvent2.action;
                                                                                                    if (tL_channelAdminLogEventActionChangeEmojiStatus.prev_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                                                                        spannableString3 = new SpannableString(LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                        z3 = true;
                                                                                                    } else {
                                                                                                        spannableString3 = new SpannableString("e");
                                                                                                        spannableString3.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.prev_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                                                        z3 = false;
                                                                                                    }
                                                                                                    int emojiStatusUntil = DialogObject.getEmojiStatusUntil(tL_channelAdminLogEventActionChangeEmojiStatus.new_value);
                                                                                                    if (tL_channelAdminLogEventActionChangeEmojiStatus.new_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                                                                        spannableString4 = new SpannableString(LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                        str5 = "un1";
                                                                                                    } else {
                                                                                                        SpannableString spannableString5 = new SpannableString("e");
                                                                                                        str5 = "un1";
                                                                                                        spannableString5.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.new_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                                                        spannableString4 = spannableString5;
                                                                                                    }
                                                                                                    SpannableStringBuilder spannableStringBuilderReplaceCharSequence = AndroidUtilities.replaceCharSequence(str10, AndroidUtilities.replaceCharSequence("%1$s", new SpannableStringBuilder(LocaleController.getString(z3 ? emojiStatusUntil != 0 ? zIsChannelAndNotMegaGroup4 ? R.string.EventLogChangedEmojiStatusFor : R.string.EventLogChangedEmojiStatusForGroup : zIsChannelAndNotMegaGroup4 ? R.string.EventLogChangedEmojiStatus : R.string.EventLogChangedEmojiStatusGroup : emojiStatusUntil != 0 ? zIsChannelAndNotMegaGroup4 ? R.string.EventLogChangedEmojiStatusFromFor : R.string.EventLogChangedEmojiStatusFromForGroup : zIsChannelAndNotMegaGroup4 ? R.string.EventLogChangedEmojiStatusFrom : R.string.EventLogChangedEmojiStatusFromGroup)), spannableString3), spannableString4);
                                                                                                    string2 = emojiStatusUntil != 0 ? AndroidUtilities.replaceCharSequence("%3$s", spannableStringBuilderReplaceCharSequence, LocaleController.formatTTLString((int) ((emojiStatusUntil - tL_channelAdminLogEvent2.date) * 1.05f))) : spannableStringBuilderReplaceCharSequence;
                                                                                                } else {
                                                                                                    str5 = "un1";
                                                                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                                                                                                        TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                                                                                                        boolean zIsChannelAndNotMegaGroup5 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                                        TLRPC.WallPaper wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                                                                                                        if ((wallPaper instanceof TLRPC.TL_wallPaperNoFile) && wallPaper.id == 0 && wallPaper.settings == null) {
                                                                                                            i2 = zIsChannelAndNotMegaGroup5 ? R.string.EventLogRemovedWallpaper : R.string.EventLogRemovedWallpaperGroup;
                                                                                                        } else {
                                                                                                            ArrayList<TLRPC.PhotoSize> arrayList7 = new ArrayList<>();
                                                                                                            this.photoThumbs = arrayList7;
                                                                                                            TLRPC.Document document = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                                                                            if (document != null) {
                                                                                                                arrayList7.addAll(document.thumbs);
                                                                                                                this.photoThumbsObject = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                                                                            }
                                                                                                            i2 = zIsChannelAndNotMegaGroup5 ? R.string.EventLogChangedWallpaper : R.string.EventLogChangedWallpaperGroup;
                                                                                                        }
                                                                                                        string2 = LocaleController.getString(i2);
                                                                                                    } else {
                                                                                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) {
                                                                                                            boolean zIsChannelAndNotMegaGroup6 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                                                            TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji tL_channelAdminLogEventActionChangeBackgroundEmoji = (TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) tL_channelAdminLogEvent2.action;
                                                                                                            this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup6 ? R.string.EventLogChangedEmoji : R.string.EventLogChangedEmojiGroup), str5, user2);
                                                                                                            if (tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value == 0) {
                                                                                                                spannableString = new SpannableString(LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                            } else {
                                                                                                                spannableString = new SpannableString("e");
                                                                                                                spannableString.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                                                            }
                                                                                                            this.messageText = AndroidUtilities.replaceCharSequence("%1$s", this.messageText, spannableString);
                                                                                                            if (tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value == 0) {
                                                                                                                spannableString2 = new SpannableString(LocaleController.getString(R.string.EventLogEmojiNone));
                                                                                                            } else {
                                                                                                                spannableString2 = new SpannableString("e");
                                                                                                                spannableString2.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                                                            }
                                                                                                            charSequenceReplaceCharSequence = AndroidUtilities.replaceCharSequence(str10, this.messageText, spannableString2);
                                                                                                        } else {
                                                                                                            charSequenceReplaceCharSequence = "unsupported " + tL_channelAdminLogEvent2.action;
                                                                                                        }
                                                                                                        charSequence = charSequenceReplaceCharSequence;
                                                                                                    }
                                                                                                }
                                                                                                tL_message6 = null;
                                                                                                charSequenceReplaceWithLink4 = string2;
                                                                                                user5 = user2;
                                                                                                str11 = str5;
                                                                                                tL_message3 = tL_message6;
                                                                                                CharSequence charSequenceReplaceWithLink622222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                                                                tL_message = tL_message3;
                                                                                                charSequenceReplace = charSequenceReplaceWithLink622222;
                                                                                                chat2 = chat;
                                                                                                string5 = charSequenceReplace;
                                                                                            }
                                                                                        }
                                                                                        str5 = "un1";
                                                                                        tL_message6 = null;
                                                                                        charSequenceReplaceWithLink4 = string2;
                                                                                        user5 = user2;
                                                                                        str11 = str5;
                                                                                        tL_message3 = tL_message6;
                                                                                        CharSequence charSequenceReplaceWithLink6222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                                                        tL_message = tL_message3;
                                                                                        charSequenceReplace = charSequenceReplaceWithLink6222222;
                                                                                        chat2 = chat;
                                                                                        string5 = charSequenceReplace;
                                                                                    }
                                                                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                    charSequence2 = charSequenceReplaceWithLink3;
                                                                                    chat2 = chat;
                                                                                    string = charSequence2;
                                                                                    tL_message = null;
                                                                                    string5 = string;
                                                                                }
                                                                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                                charSequence2 = charSequenceReplaceWithLink5;
                                                                                chat2 = chat;
                                                                                string = charSequence2;
                                                                                tL_message = null;
                                                                                string5 = string;
                                                                            }
                                                                        }
                                                                        charSequenceReplaceWithLink5 = replaceWithLink(charSequenceReplaceWithLink2, str4, user4);
                                                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                        charSequence2 = charSequenceReplaceWithLink5;
                                                                        chat2 = chat;
                                                                        string = charSequence2;
                                                                        tL_message = null;
                                                                        string5 = string;
                                                                    }
                                                                }
                                                                charSequenceReplaceWithLink5 = replaceWithLink(charSequenceReplaceWithLink, str3, user3);
                                                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                                charSequence2 = charSequenceReplaceWithLink5;
                                                                chat2 = chat;
                                                                string = charSequence2;
                                                                tL_message = null;
                                                                string5 = string;
                                                            }
                                                            charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(i4), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink4;
                                                            str11 = "un2";
                                                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                        }
                                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                        str5 = "un1";
                                                        tL_message6 = null;
                                                        charSequenceReplaceWithLink4 = string2;
                                                        user5 = user2;
                                                        str11 = str5;
                                                        tL_message3 = tL_message6;
                                                        CharSequence charSequenceReplaceWithLink62222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                        tL_message = tL_message3;
                                                        charSequenceReplace = charSequenceReplaceWithLink62222222;
                                                        chat2 = chat;
                                                        string5 = charSequenceReplace;
                                                    }
                                                    if (this.messageOwner == null) {
                                                    }
                                                    this.messageOwner.message = this.messageText.toString();
                                                    this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                                    TLRPC.Message message3222 = this.messageOwner;
                                                    message3222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                                    message3222.date = tL_channelAdminLogEvent2.date;
                                                    int i152222 = iArr[0];
                                                    iArr[0] = i152222 + 1;
                                                    message3222.id = i152222;
                                                    this.eventId = tL_channelAdminLogEvent2.id;
                                                    message3222.out = false;
                                                    message3222.peer_id = new TLRPC.TL_peerChannel();
                                                    TLRPC.Message message22222 = this.messageOwner;
                                                    message22222.peer_id.channel_id = chat2.id;
                                                    message22222.unread = false;
                                                    mediaController = MediaController.getInstance();
                                                    this.isOutOwnerCached = null;
                                                    if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                                    }
                                                    if (tL_message2 != null) {
                                                    }
                                                    if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                    }
                                                }
                                                tL_message5 = null;
                                                string2 = LocaleController.getString(i3);
                                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                                str5 = "un1";
                                                tL_message6 = tL_message5;
                                                charSequenceReplaceWithLink4 = string2;
                                                user5 = user2;
                                                str11 = str5;
                                                tL_message3 = tL_message6;
                                                CharSequence charSequenceReplaceWithLink622222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                                tL_message = tL_message3;
                                                charSequenceReplace = charSequenceReplaceWithLink622222222;
                                                chat2 = chat;
                                                string5 = charSequenceReplace;
                                            }
                                        }
                                        chat2 = chat;
                                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent3;
                                        arrayList2 = null;
                                        if (this.messageOwner == null) {
                                        }
                                        this.messageOwner.message = this.messageText.toString();
                                        this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                        TLRPC.Message message32222 = this.messageOwner;
                                        message32222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                        message32222.date = tL_channelAdminLogEvent2.date;
                                        int i1522222 = iArr[0];
                                        iArr[0] = i1522222 + 1;
                                        message32222.id = i1522222;
                                        this.eventId = tL_channelAdminLogEvent2.id;
                                        message32222.out = false;
                                        message32222.peer_id = new TLRPC.TL_peerChannel();
                                        TLRPC.Message message222222 = this.messageOwner;
                                        message222222.peer_id.channel_id = chat2.id;
                                        message222222.unread = false;
                                        mediaController = MediaController.getInstance();
                                        this.isOutOwnerCached = null;
                                        if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                        }
                                        if (tL_message2 != null) {
                                        }
                                        if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                        }
                                    }
                                    tL_message3 = null;
                                    CharSequence charSequenceReplaceWithLink6222222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                    tL_message = tL_message3;
                                    charSequenceReplace = charSequenceReplaceWithLink6222222222;
                                    chat2 = chat;
                                    string5 = charSequenceReplace;
                                }
                                str9 = "";
                                tL_message5 = null;
                                string2 = LocaleController.getString(i3);
                                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                str5 = "un1";
                                tL_message6 = tL_message5;
                                charSequenceReplaceWithLink4 = string2;
                                user5 = user2;
                                str11 = str5;
                                tL_message3 = tL_message6;
                                CharSequence charSequenceReplaceWithLink62222222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                                tL_message = tL_message3;
                                charSequenceReplace = charSequenceReplaceWithLink62222222222;
                                chat2 = chat;
                                string5 = charSequenceReplace;
                            }
                            str9 = "";
                            tL_message5 = tL_message4;
                            string2 = LocaleController.getString(i3);
                            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                            str5 = "un1";
                            tL_message6 = tL_message5;
                            charSequenceReplaceWithLink4 = string2;
                            user5 = user2;
                            str11 = str5;
                            tL_message3 = tL_message6;
                            CharSequence charSequenceReplaceWithLink622222222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
                            tL_message = tL_message3;
                            charSequenceReplace = charSequenceReplaceWithLink622222222222;
                            chat2 = chat;
                            string5 = charSequenceReplace;
                        }
                        this.messageText = string5;
                        tL_message2 = tL_message;
                        arrayList2 = null;
                        if (this.messageOwner == null) {
                        }
                        this.messageOwner.message = this.messageText.toString();
                        this.messageOwner.from_id = new TLRPC.TL_peerUser();
                        TLRPC.Message message322222 = this.messageOwner;
                        message322222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                        message322222.date = tL_channelAdminLogEvent2.date;
                        int i15222222 = iArr[0];
                        iArr[0] = i15222222 + 1;
                        message322222.id = i15222222;
                        this.eventId = tL_channelAdminLogEvent2.id;
                        message322222.out = false;
                        message322222.peer_id = new TLRPC.TL_peerChannel();
                        TLRPC.Message message2222222 = this.messageOwner;
                        message2222222.peer_id.channel_id = chat2.id;
                        message2222222.unread = false;
                        mediaController = MediaController.getInstance();
                        this.isOutOwnerCached = null;
                        if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                        }
                        if (tL_message2 != null) {
                        }
                        if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                        }
                    }
                    tL_message = null;
                    charSequenceReplace = charSequence;
                    chat2 = chat;
                    string5 = charSequenceReplace;
                    this.messageText = string5;
                    tL_message2 = tL_message;
                    arrayList2 = null;
                    if (this.messageOwner == null) {
                    }
                    this.messageOwner.message = this.messageText.toString();
                    this.messageOwner.from_id = new TLRPC.TL_peerUser();
                    TLRPC.Message message3222222 = this.messageOwner;
                    message3222222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                    message3222222.date = tL_channelAdminLogEvent2.date;
                    int i152222222 = iArr[0];
                    iArr[0] = i152222222 + 1;
                    message3222222.id = i152222222;
                    this.eventId = tL_channelAdminLogEvent2.id;
                    message3222222.out = false;
                    message3222222.peer_id = new TLRPC.TL_peerChannel();
                    TLRPC.Message message22222222 = this.messageOwner;
                    message22222222.peer_id.channel_id = chat2.id;
                    message22222222.unread = false;
                    mediaController = MediaController.getInstance();
                    this.isOutOwnerCached = null;
                    if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                    }
                    if (tL_message2 != null) {
                    }
                    if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                    }
                }
                if (z2) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin tL_channelAdminLogEventActionParticipantToggleAdmin = (TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) channelAdminLogEventAction;
                    channelParticipant = tL_channelAdminLogEventActionParticipantToggleAdmin.prev_participant;
                    channelParticipant2 = tL_channelAdminLogEventActionParticipantToggleAdmin.new_participant;
                } else {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan3 = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                    channelParticipant = tL_channelAdminLogEventActionParticipantToggleBan3.prev_participant;
                    channelParticipant2 = tL_channelAdminLogEventActionParticipantToggleBan3.new_participant;
                }
                TLRPC.TL_message tL_message10 = new TLRPC.TL_message();
                this.messageOwner = tL_message10;
                tL_message10.realId = -1;
                long peerId6 = getPeerId(channelParticipant.peer);
                if (peerId6 > 0) {
                    messagesController = MessagesController.getInstance(this.currentAccount);
                } else {
                    messagesController = MessagesController.getInstance(this.currentAccount);
                    peerId6 = -peerId6;
                }
                TLRPC.User user10 = messagesController.getUser(Long.valueOf(peerId6));
                if ((channelParticipant instanceof TLRPC.TL_channelParticipantCreator) || !(channelParticipant2 instanceof TLRPC.TL_channelParticipantCreator)) {
                    TLRPC.TL_chatAdminRights tL_chatAdminRights = channelParticipant.admin_rights;
                    TLRPC.TL_chatAdminRights tL_chatAdminRights2 = channelParticipant2.admin_rights;
                    tL_chatAdminRights = tL_chatAdminRights == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights;
                    tL_chatAdminRights2 = tL_chatAdminRights2 == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights2;
                    String string8 = LocaleController.getString(tL_chatAdminRights2.other ? R.string.EventLogPromotedNoRights : R.string.EventLogPromoted);
                    StringBuilder sb6 = new StringBuilder(String.format(string8, getUserName(user10, this.messageOwner.entities, string8.indexOf("%1$s"))));
                    sb6.append("\n");
                    if (TextUtils.equals(channelParticipant.rank, channelParticipant2.rank)) {
                        c = '+';
                    } else if (TextUtils.isEmpty(channelParticipant2.rank)) {
                        sb6.append('\n');
                        sb6.append('-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedRemovedTitle));
                        c = '+';
                    } else {
                        sb6.append('\n');
                        c = '+';
                        sb6.append('+');
                        sb6.append(' ');
                        sb6.append(LocaleController.formatString("EventLogPromotedTitle", R.string.EventLogPromotedTitle, channelParticipant2.rank));
                    }
                    if (tL_chatAdminRights.change_info != tL_chatAdminRights2.change_info) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.change_info ? '+' : '-');
                        sb6.append(' ');
                        chat2 = chat;
                        sb6.append(LocaleController.getString(chat2.megagroup ? R.string.EventLogPromotedChangeGroupInfo : R.string.EventLogPromotedChangeChannelInfo));
                    } else {
                        chat2 = chat;
                    }
                    if (!chat2.megagroup) {
                        if (tL_chatAdminRights.post_messages != tL_chatAdminRights2.post_messages) {
                            sb6.append('\n');
                            sb6.append(tL_chatAdminRights2.post_messages ? '+' : '-');
                            sb6.append(' ');
                            sb6.append(LocaleController.getString(R.string.EventLogPromotedPostMessages));
                        }
                        if (tL_chatAdminRights.edit_messages != tL_chatAdminRights2.edit_messages) {
                            sb6.append('\n');
                            sb6.append(tL_chatAdminRights2.edit_messages ? '+' : '-');
                            sb6.append(' ');
                            sb6.append(LocaleController.getString(R.string.EventLogPromotedEditMessages));
                        }
                    }
                    if (tL_chatAdminRights.post_stories != tL_chatAdminRights2.post_stories) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.post_stories ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedPostStories));
                    }
                    if (tL_chatAdminRights.edit_stories != tL_chatAdminRights2.edit_stories) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.edit_stories ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedEditStories));
                    }
                    if (tL_chatAdminRights.delete_stories != tL_chatAdminRights2.delete_stories) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.delete_stories ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedDeleteStories));
                    }
                    if (tL_chatAdminRights.delete_messages != tL_chatAdminRights2.delete_messages) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.delete_messages ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedDeleteMessages));
                    }
                    if (tL_chatAdminRights.add_admins != tL_chatAdminRights2.add_admins) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.add_admins ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedAddAdmins));
                    }
                    if (tL_chatAdminRights.anonymous != tL_chatAdminRights2.anonymous) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.anonymous ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedSendAnonymously));
                    }
                    if (chat2.megagroup) {
                        if (tL_chatAdminRights.ban_users != tL_chatAdminRights2.ban_users) {
                            sb6.append('\n');
                            sb6.append(tL_chatAdminRights2.ban_users ? '+' : '-');
                            sb6.append(' ');
                            sb6.append(LocaleController.getString(R.string.EventLogPromotedBanUsers));
                        }
                        if (tL_chatAdminRights.manage_call != tL_chatAdminRights2.manage_call) {
                            sb6.append('\n');
                            sb6.append(tL_chatAdminRights2.manage_call ? '+' : '-');
                            sb6.append(' ');
                            sb6.append(LocaleController.getString(R.string.EventLogPromotedManageCall));
                        }
                    }
                    if (tL_chatAdminRights.invite_users != tL_chatAdminRights2.invite_users) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.invite_users ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedAddUsers));
                    }
                    if (chat2.megagroup && tL_chatAdminRights.pin_messages != tL_chatAdminRights2.pin_messages) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.pin_messages ? '+' : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedPinMessages));
                    }
                    if (tL_chatAdminRights.manage_direct_messages != tL_chatAdminRights2.manage_direct_messages) {
                        sb6.append('\n');
                        sb6.append(tL_chatAdminRights2.manage_direct_messages ? c : '-');
                        sb6.append(' ');
                        sb6.append(LocaleController.getString(R.string.EventLogPromotedManageDirect));
                    }
                    sb = sb6;
                } else {
                    String string9 = LocaleController.getString(R.string.EventLogChangedOwnership);
                    sb = new StringBuilder(String.format(string9, getUserName(user10, this.messageOwner.entities, string9.indexOf("%1$s"))));
                    chat2 = chat;
                }
                string = sb.toString();
                tL_message = null;
                string5 = string;
                this.messageText = string5;
                tL_message2 = tL_message;
                arrayList2 = null;
                if (this.messageOwner == null) {
                }
                this.messageOwner.message = this.messageText.toString();
                this.messageOwner.from_id = new TLRPC.TL_peerUser();
                TLRPC.Message message32222222 = this.messageOwner;
                message32222222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                message32222222.date = tL_channelAdminLogEvent2.date;
                int i1522222222 = iArr[0];
                iArr[0] = i1522222222 + 1;
                message32222222.id = i1522222222;
                this.eventId = tL_channelAdminLogEvent2.id;
                message32222222.out = false;
                message32222222.peer_id = new TLRPC.TL_peerChannel();
                TLRPC.Message message222222222 = this.messageOwner;
                message222222222.peer_id.channel_id = chat2.id;
                message222222222.unread = false;
                mediaController = MediaController.getInstance();
                this.isOutOwnerCached = null;
                if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                }
                if (tL_message2 != null) {
                }
                if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                }
            }
            user2 = user;
            tL_message5 = null;
            string2 = LocaleController.getString(i3);
            tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
            str5 = "un1";
            tL_message6 = tL_message5;
            charSequenceReplaceWithLink4 = string2;
            user5 = user2;
            str11 = str5;
            tL_message3 = tL_message6;
            CharSequence charSequenceReplaceWithLink6222222222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
            tL_message = tL_message3;
            charSequenceReplace = charSequenceReplaceWithLink6222222222222;
            chat2 = chat;
            string5 = charSequenceReplace;
            this.messageText = string5;
            tL_message2 = tL_message;
            arrayList2 = null;
            if (this.messageOwner == null) {
            }
            this.messageOwner.message = this.messageText.toString();
            this.messageOwner.from_id = new TLRPC.TL_peerUser();
            TLRPC.Message message322222222 = this.messageOwner;
            message322222222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
            message322222222.date = tL_channelAdminLogEvent2.date;
            int i15222222222 = iArr[0];
            iArr[0] = i15222222222 + 1;
            message322222222.id = i15222222222;
            this.eventId = tL_channelAdminLogEvent2.id;
            message322222222.out = false;
            message322222222.peer_id = new TLRPC.TL_peerChannel();
            TLRPC.Message message2222222222 = this.messageOwner;
            message2222222222.peer_id.channel_id = chat2.id;
            message2222222222.unread = false;
            mediaController = MediaController.getInstance();
            this.isOutOwnerCached = null;
            if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
            }
            if (tL_message2 != null) {
            }
            if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
            }
        }
        str5 = "un1";
        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
        user2 = user;
        tL_message6 = null;
        charSequenceReplaceWithLink4 = string2;
        user5 = user2;
        str11 = str5;
        tL_message3 = tL_message6;
        CharSequence charSequenceReplaceWithLink62222222222222 = replaceWithLink(charSequenceReplaceWithLink4, str11, user5);
        tL_message = tL_message3;
        charSequenceReplace = charSequenceReplaceWithLink62222222222222;
        chat2 = chat;
        string5 = charSequenceReplace;
        this.messageText = string5;
        tL_message2 = tL_message;
        arrayList2 = null;
        if (this.messageOwner == null) {
        }
        this.messageOwner.message = this.messageText.toString();
        this.messageOwner.from_id = new TLRPC.TL_peerUser();
        TLRPC.Message message3222222222 = this.messageOwner;
        message3222222222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
        message3222222222.date = tL_channelAdminLogEvent2.date;
        int i152222222222 = iArr[0];
        iArr[0] = i152222222222 + 1;
        message3222222222.id = i152222222222;
        this.eventId = tL_channelAdminLogEvent2.id;
        message3222222222.out = false;
        message3222222222.peer_id = new TLRPC.TL_peerChannel();
        TLRPC.Message message22222222222 = this.messageOwner;
        message22222222222.peer_id.channel_id = chat2.id;
        message22222222222.unread = false;
        mediaController = MediaController.getInstance();
        this.isOutOwnerCached = null;
        if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
        }
        if (tL_message2 != null) {
        }
        if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
        }
    }

    public MessageObject(int i, TL_stories$StoryItem tL_stories$StoryItem) {
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.currentAccount = i;
        this.storyItem = tL_stories$StoryItem;
        if (tL_stories$StoryItem != null) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            this.messageOwner = tL_message;
            tL_message.id = tL_stories$StoryItem.messageId;
            tL_message.realId = tL_stories$StoryItem.id;
            tL_message.date = tL_stories$StoryItem.date;
            tL_message.dialog_id = tL_stories$StoryItem.dialogId;
            tL_message.message = tL_stories$StoryItem.caption;
            tL_message.entities = tL_stories$StoryItem.entities;
            tL_message.media = tL_stories$StoryItem.media;
            tL_message.attachPath = tL_stories$StoryItem.attachPath;
        }
        this.photoThumbs = new ArrayList<>();
        this.photoThumbs2 = new ArrayList<>();
    }

    public static boolean addEntitiesToText(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, boolean z, boolean z2, boolean z3, boolean z4) {
        return addEntitiesToText(charSequence, arrayList, z, z2, z3, z4, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x013c, code lost:
    
        if (r22 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0144, code lost:
    
        if (r22 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0148, code lost:
    
        r4.flags = 64;
        r4.urlEntity = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0489 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0236 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean addEntitiesToText(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, boolean z, boolean z2, boolean z3, boolean z4, int i) {
        int i2;
        String strReplaceAll;
        int i3;
        TextStyleSpan.TextStyleRun textStyleRun;
        int i4;
        int i5;
        int i6;
        Object uRLSpanNoUnderline;
        boolean z5;
        boolean z6;
        Object uRLSpanUserMention;
        int i7;
        int i8;
        int i9;
        int size;
        int i10;
        TextStyleSpan.TextStyleRun textStyleRun2;
        CharSequence charSequence2 = charSequence;
        int i11 = i;
        if (!(charSequence2 instanceof Spannable)) {
            return false;
        }
        Spannable spannable = (Spannable) charSequence2;
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, charSequence.length(), URLSpan.class);
        boolean z7 = uRLSpanArr != null && uRLSpanArr.length > 0;
        if (arrayList == null || arrayList.isEmpty()) {
            return z7;
        }
        byte b = z3 ? (byte) 2 : z ? (byte) 1 : (byte) 0;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList);
        Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda11
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MessageObject.lambda$addEntitiesToText$2((TLRPC.MessageEntity) obj, (TLRPC.MessageEntity) obj2);
            }
        });
        int size2 = arrayList3.size();
        int i12 = 0;
        while (i12 < size2) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList3.get(i12);
            if (messageEntity.length <= 0 || (i8 = messageEntity.offset) < 0 || i8 >= charSequence.length()) {
                i7 = size2;
            } else {
                if (messageEntity.offset + messageEntity.length > charSequence.length()) {
                    messageEntity.length = charSequence.length() - messageEntity.offset;
                }
                if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityBold) || (messageEntity instanceof TLRPC.TL_messageEntityItalic) || (messageEntity instanceof TLRPC.TL_messageEntityStrike) || (messageEntity instanceof TLRPC.TL_messageEntityUnderline) || (messageEntity instanceof TLRPC.TL_messageEntityBlockquote) || (messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityMentionName) || (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) || (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji)) && uRLSpanArr != null && uRLSpanArr.length > 0) {
                    for (int i13 = 0; i13 < uRLSpanArr.length; i13++) {
                        URLSpan uRLSpan = uRLSpanArr[i13];
                        if (uRLSpan != null) {
                            int spanStart = spannable.getSpanStart(uRLSpan);
                            int spanEnd = spannable.getSpanEnd(uRLSpanArr[i13]);
                            int i14 = messageEntity.offset;
                            if ((i14 <= spanStart && messageEntity.length + i14 >= spanStart) || (i14 <= spanEnd && i14 + messageEntity.length >= spanEnd)) {
                                spannable.removeSpan(uRLSpanArr[i13]);
                                uRLSpanArr[i13] = null;
                            }
                        }
                    }
                }
                if ((i11 != 1 || (messageEntity instanceof TLRPC.TL_messageEntityHashtag)) && !(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) && !(messageEntity instanceof TLRPC.TL_messageEntityBlockquote) && !(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                    TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun();
                    int i15 = messageEntity.offset;
                    textStyleRun3.start = i15;
                    textStyleRun3.end = i15 + messageEntity.length;
                    if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                        i9 = 256;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                        i9 = 8;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                        i9 = 16;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                        i9 = 1;
                    } else {
                        if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                            textStyleRun3.flags = 2;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityCode) {
                            textStyleRun3.flags = 4;
                        } else if (!(messageEntity instanceof TLRPC.TL_messageEntityMentionName)) {
                            if (!(messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName)) {
                                if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) && (((!(messageEntity instanceof TLRPC.TL_messageEntityUrl) && !(messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) || !Browser.isPassportUrl(messageEntity.url)) && (!(messageEntity instanceof TLRPC.TL_messageEntityMention) || z2))) {
                                    textStyleRun3.flags = 128;
                                    textStyleRun3.urlEntity = messageEntity;
                                    if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                                        textStyleRun3.flags = 1152;
                                    }
                                }
                            }
                            i7 = size2;
                        }
                        size = arrayList2.size();
                        i10 = 0;
                        while (i10 < size) {
                            TextStyleSpan.TextStyleRun textStyleRun4 = (TextStyleSpan.TextStyleRun) arrayList2.get(i10);
                            int i16 = size2;
                            if ((textStyleRun4.flags & 256) == 0 || textStyleRun3.start < textStyleRun4.start || textStyleRun3.end > textStyleRun4.end) {
                                int i17 = textStyleRun3.start;
                                int i18 = textStyleRun4.start;
                                if (i17 > i18) {
                                    int i19 = textStyleRun4.end;
                                    if (i17 < i19) {
                                        if (textStyleRun3.end < i19) {
                                            TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun(textStyleRun3);
                                            textStyleRun5.merge(textStyleRun4);
                                            arrayList2.add(i10 + 1, textStyleRun5);
                                            textStyleRun2 = new TextStyleSpan.TextStyleRun(textStyleRun4);
                                            textStyleRun2.start = textStyleRun3.end;
                                            i10 += 2;
                                            size += 2;
                                        } else {
                                            textStyleRun2 = new TextStyleSpan.TextStyleRun(textStyleRun3);
                                            textStyleRun2.merge(textStyleRun4);
                                            textStyleRun2.end = textStyleRun4.end;
                                            i10++;
                                            size++;
                                        }
                                        arrayList2.add(i10, textStyleRun2);
                                        int i20 = textStyleRun3.start;
                                        textStyleRun3.start = textStyleRun4.end;
                                        textStyleRun4.end = i20;
                                    }
                                } else {
                                    int i21 = textStyleRun3.end;
                                    if (i18 < i21) {
                                        int i22 = textStyleRun4.end;
                                        if (i21 == i22) {
                                            textStyleRun4.merge(textStyleRun3);
                                            textStyleRun3.end = i18;
                                        } else if (i21 < i22) {
                                            TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun(textStyleRun4);
                                            textStyleRun6.merge(textStyleRun3);
                                            textStyleRun6.end = textStyleRun3.end;
                                            i10++;
                                            size++;
                                            arrayList2.add(i10, textStyleRun6);
                                            textStyleRun4.start = textStyleRun3.end;
                                            textStyleRun3.end = i18;
                                        } else {
                                            TextStyleSpan.TextStyleRun textStyleRun7 = new TextStyleSpan.TextStyleRun(textStyleRun3);
                                            textStyleRun7.start = textStyleRun4.end;
                                            i10++;
                                            size++;
                                            arrayList2.add(i10, textStyleRun7);
                                            textStyleRun4.merge(textStyleRun3);
                                            textStyleRun3.end = i18;
                                        }
                                    }
                                }
                            }
                            i10++;
                            size2 = i16;
                        }
                        i7 = size2;
                        if (textStyleRun3.start >= textStyleRun3.end) {
                            arrayList2.add(textStyleRun3);
                        }
                    }
                    textStyleRun3.flags = i9;
                    size = arrayList2.size();
                    i10 = 0;
                    while (i10 < size) {
                    }
                    i7 = size2;
                    if (textStyleRun3.start >= textStyleRun3.end) {
                    }
                }
            }
            i12++;
            size2 = i7;
        }
        int iMin = Math.min(1000, arrayList2.size());
        boolean z8 = z7;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (i24 < iMin) {
            TextStyleSpan.TextStyleRun textStyleRun8 = (TextStyleSpan.TextStyleRun) arrayList2.get(i24);
            if (i11 != 1 || (textStyleRun8.urlEntity instanceof TLRPC.TL_messageEntityHashtag)) {
                TLRPC.MessageEntity messageEntity2 = textStyleRun8.urlEntity;
                if (messageEntity2 != null) {
                    int i26 = messageEntity2.offset;
                    strReplaceAll = TextUtils.substring(charSequence2, i26, messageEntity2.length + i26);
                } else {
                    strReplaceAll = null;
                }
                TLRPC.MessageEntity messageEntity3 = textStyleRun8.urlEntity;
                if (messageEntity3 instanceof TLRPC.TL_messageEntityBotCommand) {
                    if (i25 < 250) {
                        i25++;
                        spannable.setSpan(new URLSpanBotCommand(strReplaceAll, b, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                        i3 = iMin;
                        z5 = z8;
                        textStyleRun = textStyleRun8;
                        i4 = i23;
                        i5 = 33;
                        z6 = false;
                        if (z6 || (textStyleRun.flags & 256) == 0 || i4 >= 100) {
                            i23 = i4;
                        } else {
                            i23 = i4 + 1;
                            spannable.setSpan(new TextStyleSpan(textStyleRun), textStyleRun.start, textStyleRun.end, i5);
                        }
                        z8 = z5;
                    }
                    i3 = iMin;
                    i4 = i23;
                    i23 = i4;
                } else {
                    if ((messageEntity3 instanceof TLRPC.TL_messageEntityHashtag) || (messageEntity3 instanceof TLRPC.TL_messageEntityMention)) {
                        i3 = iMin;
                        textStyleRun = textStyleRun8;
                        i4 = i23;
                        i5 = 33;
                        i6 = MediaDataController.MAX_LINKS_COUNT;
                    } else if (messageEntity3 instanceof TLRPC.TL_messageEntityCashtag) {
                        i3 = iMin;
                        textStyleRun = textStyleRun8;
                        i4 = i23;
                        i6 = MediaDataController.MAX_LINKS_COUNT;
                        i5 = 33;
                    } else if (messageEntity3 instanceof TLRPC.TL_messageEntityEmail) {
                        if (i25 < 250) {
                            i25++;
                            uRLSpanUserMention = new URLSpanReplacement("mailto:" + strReplaceAll, textStyleRun8);
                            i3 = iMin;
                            i5 = 33;
                            spannable.setSpan(uRLSpanUserMention, textStyleRun8.start, textStyleRun8.end, 33);
                            z5 = z8;
                            textStyleRun = textStyleRun8;
                            i4 = i23;
                            z6 = false;
                            if (z6) {
                            }
                            i23 = i4;
                            z8 = z5;
                        }
                        i3 = iMin;
                        i4 = i23;
                        i23 = i4;
                    } else if (messageEntity3 instanceof TLRPC.TL_messageEntityUrl) {
                        if (i25 < 250) {
                            i25++;
                            if (!strReplaceAll.toLowerCase().contains("://")) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(BotWebViewContainer.isTonsite(strReplaceAll) ? "tonsite://" : "http://");
                                sb.append(strReplaceAll);
                                strReplaceAll = sb.toString();
                            }
                            if (strReplaceAll != null) {
                                strReplaceAll = strReplaceAll.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                            }
                            if (Browser.isTonsitePunycode(strReplaceAll)) {
                                i3 = iMin;
                                z8 = true;
                            } else {
                                spannable.setSpan(new URLSpanBrowser(strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                i3 = iMin;
                                textStyleRun = textStyleRun8;
                                i4 = i23;
                                i5 = 33;
                                z6 = false;
                                z5 = true;
                                if (z6) {
                                }
                                i23 = i4;
                                z8 = z5;
                            }
                        }
                        i3 = iMin;
                        i4 = i23;
                        i23 = i4;
                    } else {
                        if (messageEntity3 instanceof TLRPC.TL_messageEntityBankCard) {
                            uRLSpanUserMention = new URLSpanNoUnderline("card:" + strReplaceAll, textStyleRun8);
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityPhone) {
                            String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(strReplaceAll);
                            if (strReplaceAll.startsWith("+")) {
                                strStripExceptNumbers = "+" + strStripExceptNumbers;
                            }
                            uRLSpanUserMention = new URLSpanNoUnderline("tel:" + strStripExceptNumbers, textStyleRun8);
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityTextUrl) {
                            if (i25 < 250) {
                                i25++;
                                String strReplaceAll2 = messageEntity3.url;
                                if (strReplaceAll2 != null) {
                                    strReplaceAll2 = strReplaceAll2.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                }
                                if (Browser.isTonsitePunycode(strReplaceAll2)) {
                                    i3 = iMin;
                                } else {
                                    spannable.setSpan(new URLSpanReplacement(strReplaceAll2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                    i3 = iMin;
                                    z5 = z8;
                                    textStyleRun = textStyleRun8;
                                    i4 = i23;
                                    i5 = 33;
                                    z6 = false;
                                    if (z6) {
                                    }
                                    i23 = i4;
                                    z8 = z5;
                                }
                            }
                            i3 = iMin;
                            i4 = i23;
                            i23 = i4;
                        } else {
                            if (messageEntity3 instanceof TLRPC.TL_messageEntityMentionName) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("");
                                i3 = iMin;
                                sb2.append(((TLRPC.TL_messageEntityMentionName) textStyleRun8.urlEntity).user_id);
                                uRLSpanUserMention = new URLSpanUserMention(sb2.toString(), b, textStyleRun8);
                            } else {
                                i3 = iMin;
                                if (messageEntity3 instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                    uRLSpanUserMention = new URLSpanUserMention("" + ((TLRPC.TL_inputMessageEntityMentionName) textStyleRun8.urlEntity).user_id.user_id, b, textStyleRun8);
                                } else {
                                    i5 = 33;
                                    if ((textStyleRun8.flags & 4) != 0) {
                                        i4 = i23;
                                        uRLSpanNoUnderline = new URLSpanMono(spannable, textStyleRun8.start, textStyleRun8.end, b, textStyleRun8);
                                        textStyleRun = textStyleRun8;
                                        spannable.setSpan(uRLSpanNoUnderline, textStyleRun.start, textStyleRun.end, i5);
                                        z5 = z8;
                                        z6 = false;
                                        if (z6) {
                                        }
                                        i23 = i4;
                                        z8 = z5;
                                    } else {
                                        textStyleRun = textStyleRun8;
                                        i4 = i23;
                                        spannable.setSpan(new TextStyleSpan(textStyleRun), textStyleRun.start, textStyleRun.end, 33);
                                        z5 = z8;
                                        z6 = true;
                                        if (z6) {
                                        }
                                        i23 = i4;
                                        z8 = z5;
                                    }
                                }
                            }
                            i5 = 33;
                            spannable.setSpan(uRLSpanUserMention, textStyleRun8.start, textStyleRun8.end, 33);
                            z5 = z8;
                            textStyleRun = textStyleRun8;
                            i4 = i23;
                            z6 = false;
                            if (z6) {
                            }
                            i23 = i4;
                            z8 = z5;
                        }
                        i3 = iMin;
                        z8 = true;
                        i5 = 33;
                        spannable.setSpan(uRLSpanUserMention, textStyleRun8.start, textStyleRun8.end, 33);
                        z5 = z8;
                        textStyleRun = textStyleRun8;
                        i4 = i23;
                        z6 = false;
                        if (z6) {
                        }
                        i23 = i4;
                        z8 = z5;
                    }
                    if (i25 < i6) {
                        i25++;
                        uRLSpanNoUnderline = new URLSpanNoUnderline(strReplaceAll, textStyleRun);
                        spannable.setSpan(uRLSpanNoUnderline, textStyleRun.start, textStyleRun.end, i5);
                        z5 = z8;
                        z6 = false;
                        if (z6) {
                        }
                        i23 = i4;
                        z8 = z5;
                    }
                    i23 = i4;
                }
            } else {
                i3 = iMin;
                i4 = i23;
                i23 = i4;
            }
            i24++;
            charSequence2 = charSequence;
            iMin = i3;
            i11 = i;
        }
        int size3 = arrayList3.size();
        int i27 = 0;
        for (int i28 = 0; i28 < size3; i28++) {
            TLRPC.MessageEntity messageEntity4 = (TLRPC.MessageEntity) arrayList3.get(i28);
            if (messageEntity4.length > 0 && (i2 = messageEntity4.offset) >= 0 && i2 < charSequence.length()) {
                if (messageEntity4.offset + messageEntity4.length > charSequence.length()) {
                    messageEntity4.length = charSequence.length() - messageEntity4.offset;
                }
                if (messageEntity4 instanceof TLRPC.TL_messageEntityBlockquote) {
                    int i29 = messageEntity4.offset;
                    QuoteSpan.putQuote(spannable, i29, messageEntity4.length + i29, messageEntity4.collapsed);
                } else if ((messageEntity4 instanceof TLRPC.TL_messageEntityPre) && i27 < 50) {
                    i27++;
                    int i30 = messageEntity4.offset;
                    int i31 = messageEntity4.length + i30;
                    spannable.setSpan(new CodeHighlighting.Span(true, 0, null, messageEntity4.language, spannable.subSequence(i30, i31).toString()), i30, i31, 33);
                }
            }
        }
        return z8;
    }

    private boolean addEntitiesToText(CharSequence charSequence, boolean z) {
        return addEntitiesToText(charSequence, false, z);
    }

    public static void addLinks(boolean z, CharSequence charSequence) {
        addLinks(z, charSequence, true, false);
    }

    public static void addLinks(boolean z, CharSequence charSequence, boolean z2, boolean z3) {
        addLinks(z, charSequence, z2, z3, false);
    }

    public static void addLinks(boolean z, CharSequence charSequence, boolean z2, boolean z3, boolean z4) {
        if ((charSequence instanceof Spannable) && containsUrls(charSequence)) {
            try {
                AndroidUtilities.addLinksSafe((Spannable) charSequence, 1, z4, false);
            } catch (Exception e) {
                FileLog.e(e);
            }
            addPhoneLinks(charSequence);
            addUrlsByPattern(z, charSequence, z2, 0, 0, z3);
        }
    }

    public static void addPaidReactions(int i, TLRPC.MessageReactions messageReactions, int i2, long j, boolean z) {
        TLRPC.MessageReactor tL_messageReactor = null;
        TLRPC.ReactionCount tL_reactionCount = null;
        for (int i3 = 0; i3 < messageReactions.results.size(); i3++) {
            if (((TLRPC.ReactionCount) messageReactions.results.get(i3)).reaction instanceof TLRPC.TL_reactionPaid) {
                tL_reactionCount = (TLRPC.ReactionCount) messageReactions.results.get(i3);
            }
        }
        int i4 = 0;
        while (true) {
            if (i4 >= messageReactions.top_reactors.size()) {
                break;
            }
            if (((TLRPC.MessageReactor) messageReactions.top_reactors.get(i4)).my) {
                tL_messageReactor = (TLRPC.MessageReactor) messageReactions.top_reactors.get(i4);
                break;
            }
            i4++;
        }
        if (tL_reactionCount == null && i2 > 0) {
            tL_reactionCount = new TLRPC.TL_reactionCount();
            tL_reactionCount.reaction = new TLRPC.TL_reactionPaid();
            messageReactions.results.add(0, tL_reactionCount);
        }
        if (tL_reactionCount != null) {
            tL_reactionCount.chosen = z;
            int iMax = Math.max(0, tL_reactionCount.count + i2);
            tL_reactionCount.count = iMax;
            if (iMax <= 0) {
                messageReactions.results.remove(tL_reactionCount);
            }
        }
        if (tL_messageReactor == null && i2 > 0) {
            tL_messageReactor = new TLRPC.TL_messageReactor();
            tL_messageReactor.my = true;
            messageReactions.top_reactors.add(tL_messageReactor);
        }
        if (tL_messageReactor != null) {
            tL_messageReactor.count = Math.max(0, tL_messageReactor.count + i2);
            tL_messageReactor.anonymous = j == UserObject.ANONYMOUS;
            tL_messageReactor.peer_id = (j == 0 || j == UserObject.ANONYMOUS) ? MessagesController.getInstance(i).getPeer(UserConfig.getInstance(i).getClientUserId()) : MessagesController.getInstance(i).getPeer(j);
            if (tL_messageReactor.count <= 0) {
                messageReactions.top_reactors.remove(tL_messageReactor);
            }
        }
    }

    public static void addPhoneLinks(CharSequence charSequence) {
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0240  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void addUrlsByPattern(boolean z, CharSequence charSequence, boolean z2, int i, int i2, boolean z3) {
        Pattern pattern;
        URLSpanNoUnderline uRLSpanNoUnderline;
        Object[] objArr;
        if (charSequence == null) {
            return;
        }
        int i3 = 3;
        int i4 = 1;
        try {
            if (i == 3 || i == 4) {
                if (videoTimeUrlPattern == null) {
                    videoTimeUrlPattern = Pattern.compile("\\b(?:(\\d{1,2}):)?(\\d{1,3}):([0-5][0-9])\\b(?: - |)([^\\n]*)");
                }
                pattern = videoTimeUrlPattern;
            } else if (i == 1) {
                if (instagramUrlPattern == null) {
                    instagramUrlPattern = Pattern.compile("(^|\\s|\\()@[a-zA-Z\\d_.]{1,32}|(^|\\s|\\()#[\\w.]+");
                }
                pattern = instagramUrlPattern;
            } else {
                if (urlPattern == null) {
                    urlPattern = Pattern.compile("(^|\\s)/[a-zA-Z@\\d_]{1,255}|(^|\\s|\\()@[a-zA-Z\\d_]{1,32}|(^|\\s|\\()#[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s|\\()\\$[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s)\\$[A-Z]{3,8}([ ,.]|$)");
                }
                pattern = urlPattern;
            }
            Matcher matcher = pattern.matcher(charSequence);
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                int i5 = 0;
                while (matcher.find() && i5 < 100) {
                    int iStart = matcher.start();
                    int iEnd = matcher.end();
                    if (i == i3 || i == 4) {
                        matcher.groupCount();
                        int iStart2 = matcher.start(i4);
                        int iEnd2 = matcher.end(i4);
                        int iStart3 = matcher.start(2);
                        int iEnd3 = matcher.end(2);
                        int iStart4 = matcher.start(i3);
                        int iEnd4 = matcher.end(i3);
                        int iStart5 = matcher.start(4);
                        int iEnd5 = matcher.end(4);
                        int iIntValue = Utilities.parseInt(charSequence.subSequence(iStart3, iEnd3)).intValue();
                        int iIntValue2 = Utilities.parseInt(charSequence.subSequence(iStart4, iEnd4)).intValue();
                        int iIntValue3 = (iStart2 < 0 || iEnd2 < 0) ? -1 : Utilities.parseInt(charSequence.subSequence(iStart2, iEnd2)).intValue();
                        String string = (iStart5 < 0 || iEnd5 < 0) ? null : charSequence.subSequence(iStart5, iEnd5).toString();
                        iEnd = (iStart5 >= 0 || iEnd5 >= 0) ? iEnd4 : iEnd;
                        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(iStart, iEnd, URLSpan.class);
                        if (uRLSpanArr == null || uRLSpanArr.length <= 0) {
                            int i6 = iIntValue2 + (iIntValue * 60);
                            if (iIntValue3 > 0) {
                                i6 += iIntValue3 * 3600;
                            }
                            if (i6 <= i2) {
                                if (i == 3) {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("video?" + i6);
                                } else {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("audio?" + i6);
                                }
                                uRLSpanNoUnderline.label = string;
                                if (uRLSpanNoUnderline != null) {
                                    if (z3 && (objArr = (ClickableSpan[]) spannable.getSpans(iStart, iEnd, ClickableSpan.class)) != null && objArr.length > 0) {
                                        spannable.removeSpan(objArr[0]);
                                    }
                                    spannable.setSpan(uRLSpanNoUnderline, iStart, iEnd, 0);
                                    i5++;
                                }
                            }
                        }
                    } else {
                        char cCharAt = charSequence.charAt(iStart);
                        if (i != 0) {
                            if (cCharAt != '@' && cCharAt != '#') {
                                iStart++;
                            }
                            cCharAt = charSequence.charAt(iStart);
                            if (cCharAt != '@' && cCharAt != '#') {
                            }
                        } else if (cCharAt != '@' && cCharAt != '#' && cCharAt != '/' && cCharAt != '$') {
                            iStart++;
                        }
                        if (i == i4) {
                            if (cCharAt == '@') {
                                uRLSpanNoUnderline = new URLSpanNoUnderline("https://instagram.com/" + charSequence.subSequence(iStart + 1, iEnd).toString());
                            } else {
                                uRLSpanNoUnderline = new URLSpanNoUnderline("https://www.instagram.com/explore/tags/" + charSequence.subSequence(iStart + 1, iEnd).toString());
                            }
                        } else if (i == 2) {
                            if (cCharAt == '@') {
                                uRLSpanNoUnderline = new URLSpanNoUnderline("https://twitter.com/" + charSequence.subSequence(iStart + 1, iEnd).toString());
                            } else {
                                uRLSpanNoUnderline = new URLSpanNoUnderline("https://twitter.com/hashtag/" + charSequence.subSequence(iStart + 1, iEnd).toString());
                            }
                        } else if (charSequence.charAt(iStart) != '/') {
                            String string2 = charSequence.subSequence(iStart, iEnd).toString();
                            if (string2 != null) {
                                string2 = string2.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                            }
                            uRLSpanNoUnderline = new URLSpanNoUnderline(string2);
                            if (uRLSpanNoUnderline != null) {
                            }
                        } else if (z2) {
                            uRLSpanNoUnderline = new URLSpanBotCommand(charSequence.subSequence(iStart, iEnd).toString(), z ? 1 : 0);
                            if (uRLSpanNoUnderline != null) {
                            }
                        } else {
                            uRLSpanNoUnderline = null;
                            if (uRLSpanNoUnderline != null) {
                            }
                        }
                        if (uRLSpanNoUnderline != null) {
                        }
                    }
                    i3 = 3;
                    i4 = 1;
                }
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    private boolean allowsBigEmoji() {
        TLRPC.Peer peer;
        if (!SharedConfig.allowBigEmoji) {
            return false;
        }
        TLRPC.Message message = this.messageOwner;
        if (message == null || (peer = message.peer_id) == null || (peer.channel_id == 0 && peer.chat_id == 0)) {
            return true;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        TLRPC.Peer peer2 = this.messageOwner.peer_id;
        long j = peer2.channel_id;
        if (j == 0) {
            j = peer2.chat_id;
        }
        TLRPC.Chat chat = messagesController.getChat(Long.valueOf(j));
        return (chat != null && chat.gigagroup) || !ChatObject.isActionBanned(chat, 8) || ChatObject.hasAdminRights(chat);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean applyEntities() {
        TLRPC.TL_textWithEntities tL_textWithEntities;
        generateLinkDescription();
        ArrayList arrayList = (!this.translated || (tL_textWithEntities = this.messageOwner.translatedText) == null) ? this.messageOwner.entities : tL_textWithEntities.entities;
        spoilLoginCode();
        boolean z = false;
        if (!(this.messageOwner.send_state != 0 ? false : !arrayList.isEmpty())) {
            if (this.eventId == 0) {
                TLRPC.Message message = this.messageOwner;
                if ((message instanceof TLRPC.TL_message_old) || (message instanceof TLRPC.TL_message_old2) || (message instanceof TLRPC.TL_message_old3) || (message instanceof TLRPC.TL_message_old4) || (message instanceof TLRPC.TL_messageForwarded_old) || (message instanceof TLRPC.TL_messageForwarded_old2) || (message instanceof TLRPC.TL_message_secret) || (getMedia(message) instanceof TLRPC.TL_messageMediaInvoice) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.id < 0)) {
                    z = true;
                }
            }
        }
        if (z) {
            addLinks(isOutOwner(), this.messageText, true, true);
        } else {
            addPhoneLinks(this.messageText);
        }
        if (isYouTubeVideo()) {
            addUrlsByPattern(isOutOwner(), this.messageText, false, 3, Integer.MAX_VALUE, false);
        } else {
            applyTimestampsHighlightForReplyMsg();
        }
        if (!(this.messageText instanceof Spannable)) {
            this.messageText = new SpannableStringBuilder(this.messageText);
        }
        return addEntitiesToText(this.messageText, z);
    }

    public static boolean canAutoplayAnimatedSticker(TLRPC.Document document) {
        return (isAnimatedStickerDocument(document, true) || isVideoStickerDocument(document)) && LiteMode.isEnabled(1);
    }

    public static boolean canCreateStripedThubms() {
        return SharedConfig.getDevicePerformanceClass() == 2;
    }

    public static boolean canDeleteMessage(int i, boolean z, TLRPC.Message message, TLRPC.Chat chat) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.Peer peer;
        if (message == null) {
            return false;
        }
        if (ChatObject.isChannelAndNotMegaGroup(chat) && (message.action instanceof TLRPC.TL_messageActionChatJoinedByRequest)) {
            return false;
        }
        if (message.id < 0) {
            return true;
        }
        if (chat == null && (peer = message.peer_id) != null && peer.channel_id != 0) {
            chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id));
        }
        if (!ChatObject.isChannel(chat)) {
            return z || isOut(message) || !ChatObject.isChannel(chat);
        }
        if (z && !chat.megagroup) {
            if (!chat.creator) {
                TLRPC.TL_chatAdminRights tL_chatAdminRights2 = chat.admin_rights;
                if (tL_chatAdminRights2 == null) {
                    return false;
                }
                if (!tL_chatAdminRights2.delete_messages && !message.out) {
                    return false;
                }
            }
            return true;
        }
        boolean z2 = message.out;
        if (z2 && (message instanceof TLRPC.TL_messageService)) {
            return message.id != 1 && ChatObject.canUserDoAdminAction(chat, 13);
        }
        if (!z) {
            if (message.id == 1) {
                return false;
            }
            if (!chat.creator && (((tL_chatAdminRights = chat.admin_rights) == null || (!tL_chatAdminRights.delete_messages && (!z2 || (!chat.megagroup && !tL_chatAdminRights.post_messages)))) && (!chat.megagroup || !z2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean canEditMessage(int i, TLRPC.Message message, TLRPC.Chat chat, boolean z) {
        TLRPC.MessageAction messageAction;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights3;
        if (z && message.date < ConnectionsManager.getInstance(i).getCurrentTime() - 60) {
            return false;
        }
        if (chat != null && ((chat.left || chat.kicked) && (!chat.megagroup || !chat.has_link))) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(message);
        if (message != null && message.peer_id != null && ((media == null || (!isRoundVideoDocument(media.document) && !isStickerDocument(media.document) && !isAnimatedStickerDocument(media.document, true) && !isLocationMessage(message))) && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.id >= 0 && !message.paid_suggested_post_stars && !message.paid_suggested_post_ton))) {
            TLRPC.Peer peer = message.from_id;
            if (peer instanceof TLRPC.TL_peerUser) {
                long j = peer.user_id;
                if (j == message.peer_id.user_id && j == UserConfig.getInstance(i).getClientUserId() && !isLiveLocationMessage(message) && !(media instanceof TLRPC.TL_messageMediaContact)) {
                    return true;
                }
            }
            if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
                return false;
            }
            if (media != null && !(media instanceof TLRPC.TL_messageMediaEmpty) && !(media instanceof TLRPC.TL_messageMediaPhoto) && !(media instanceof TLRPC.TL_messageMediaDocument) && !(media instanceof TLRPC.TL_messageMediaWebPage) && !(media instanceof TLRPC.TL_messageMediaPaidMedia) && !(media instanceof TLRPC.TL_messageMediaToDo)) {
                return false;
            }
            if (ChatObject.isChannel(chat) && !chat.megagroup && (chat.creator || ((tL_chatAdminRights3 = chat.admin_rights) != null && tL_chatAdminRights3.edit_messages))) {
                return true;
            }
            if (message.out && chat != null && chat.megagroup && (chat.creator || (((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.pin_messages) || ((tL_chatBannedRights = chat.default_banned_rights) != null && !tL_chatBannedRights.pin_messages)))) {
                return true;
            }
            if (!z && Math.abs(message.date - ConnectionsManager.getInstance(i).getCurrentTime()) > MessagesController.getInstance(i).maxEditTime) {
                return false;
            }
            if (message.peer_id.channel_id == 0) {
                if (!message.out) {
                    TLRPC.Peer peer2 = message.from_id;
                    if (!(peer2 instanceof TLRPC.TL_peerUser) || peer2.user_id != UserConfig.getInstance(i).getClientUserId()) {
                        return false;
                    }
                }
                return (media instanceof TLRPC.TL_messageMediaPhoto) || !(!(media instanceof TLRPC.TL_messageMediaDocument) || isStickerMessage(message) || isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null;
            }
            if (((chat != null && chat.megagroup && message.out) || (chat != null && !chat.megagroup && ((chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && (tL_chatAdminRights.edit_messages || (message.out && tL_chatAdminRights.post_messages)))) && message.post))) && ((media instanceof TLRPC.TL_messageMediaPhoto) || (((media instanceof TLRPC.TL_messageMediaDocument) && !isStickerMessage(message) && !isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null))) {
                return true;
            }
        }
        return false;
    }

    public static boolean canEditMessageAnytime(int i, TLRPC.Message message, TLRPC.Chat chat) {
        TLRPC.MessageAction messageAction;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        if (message != null && message.peer_id != null && ((getMedia(message) == null || (!isRoundVideoDocument(getMedia(message).document) && !isStickerDocument(getMedia(message).document) && !isAnimatedStickerDocument(getMedia(message).document, true))) && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.id >= 0))) {
            TLRPC.Peer peer = message.from_id;
            if (peer instanceof TLRPC.TL_peerUser) {
                long j = peer.user_id;
                if (j == message.peer_id.user_id && j == UserConfig.getInstance(i).getClientUserId() && !isLiveLocationMessage(message)) {
                    return true;
                }
            }
            if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
                return false;
            }
            if (ChatObject.isChannel(chat) && !chat.megagroup && (chat.creator || ((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.edit_messages))) {
                return true;
            }
            if (message.out && chat != null && chat.megagroup && (chat.creator || (((tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.pin_messages) || ((tL_chatBannedRights = chat.default_banned_rights) != null && !tL_chatBannedRights.pin_messages)))) {
                return true;
            }
        }
        return false;
    }

    public static boolean canEditMessageScheduleTime(int i, TLRPC.Message message, TLRPC.Chat chat) {
        if (message.video_processing_pending) {
            return false;
        }
        if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
            return false;
        }
        if (!ChatObject.isChannel(chat) || chat.megagroup || chat.creator) {
            return true;
        }
        TLRPC.TL_chatAdminRights tL_chatAdminRights = chat.admin_rights;
        return tL_chatAdminRights != null && (tL_chatAdminRights.edit_messages || message.out);
    }

    public static boolean canPreviewDocument(TLRPC.Document document) {
        String str;
        if (document != null && (str = document.mime_type) != null) {
            if ((isDocumentHasThumb(document) && (str.equalsIgnoreCase("image/png") || str.equalsIgnoreCase("image/jpg") || str.equalsIgnoreCase("image/jpeg"))) || (Build.VERSION.SDK_INT >= 26 && str.equalsIgnoreCase("image/heic"))) {
                for (int i = 0; i < document.attributes.size(); i++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                        TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = (TLRPC.TL_documentAttributeImageSize) documentAttribute;
                        return tL_documentAttributeImageSize.w < 6000 && tL_documentAttributeImageSize.h < 6000;
                    }
                }
            } else if (BuildVars.DEBUG_PRIVATE_VERSION) {
                String documentFileName = FileLoader.getDocumentFileName(document);
                if ((documentFileName.startsWith("tg_secret_sticker") && documentFileName.endsWith("json")) || documentFileName.endsWith(".svg")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static CharSequence channelSpan() {
        if (channelSpan == null) {
            channelSpan = new SpannableStringBuilder("c");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.msg_folders_channels);
            coloredImageSpan.setScale(0.7f, 0.7f);
            ((SpannableStringBuilder) channelSpan).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return channelSpan;
    }

    private void checkEmojiOnly(Integer num) {
        TextPaint textPaint;
        if (num == null || num.intValue() < 1 || this.messageOwner == null || hasNonEmojiEntities()) {
            CharSequence charSequence = this.messageText;
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class);
            if (animatedEmojiSpanArr == null || animatedEmojiSpanArr.length <= 0) {
                this.totalAnimatedEmojiCount = 0;
                return;
            }
            this.totalAnimatedEmojiCount = animatedEmojiSpanArr.length;
            for (int i = 0; i < animatedEmojiSpanArr.length; i++) {
                animatedEmojiSpanArr[i].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.dp(4.0f)), -1);
                animatedEmojiSpanArr[i].full = false;
            }
            return;
        }
        CharSequence charSequence2 = this.messageText;
        Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) ((Spannable) charSequence2).getSpans(0, charSequence2.length(), Emoji.EmojiSpan.class);
        CharSequence charSequence3 = this.messageText;
        AnimatedEmojiSpan[] animatedEmojiSpanArr2 = (AnimatedEmojiSpan[]) ((Spannable) charSequence3).getSpans(0, charSequence3.length(), AnimatedEmojiSpan.class);
        this.emojiOnlyCount = Math.max(num.intValue(), (emojiSpanArr == null ? 0 : emojiSpanArr.length) + (animatedEmojiSpanArr2 == null ? 0 : animatedEmojiSpanArr2.length));
        this.totalAnimatedEmojiCount = animatedEmojiSpanArr2 == null ? 0 : animatedEmojiSpanArr2.length;
        this.animatedEmojiCount = 0;
        if (animatedEmojiSpanArr2 != null) {
            for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr2) {
                if (!animatedEmojiSpan.standard) {
                    this.animatedEmojiCount++;
                }
            }
        }
        int i2 = this.emojiOnlyCount;
        boolean z = (i2 - (emojiSpanArr == null ? 0 : emojiSpanArr.length)) - (animatedEmojiSpanArr2 == null ? 0 : animatedEmojiSpanArr2.length) > 0;
        this.hasUnwrappedEmoji = z;
        if (i2 == 0 || z) {
            if (animatedEmojiSpanArr2 == null || animatedEmojiSpanArr2.length <= 0) {
                return;
            }
            for (int i3 = 0; i3 < animatedEmojiSpanArr2.length; i3++) {
                animatedEmojiSpanArr2[i3].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.dp(4.0f)), -1);
                animatedEmojiSpanArr2[i3].full = false;
            }
            return;
        }
        int i4 = this.animatedEmojiCount;
        boolean z2 = i2 == i4;
        int i5 = 2;
        switch (Math.max(i2, i4)) {
            case 0:
            case 1:
            case 2:
                TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                textPaint = z2 ? textPaintArr[0] : textPaintArr[2];
                i5 = 1;
                break;
            case 3:
                TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                textPaint = z2 ? textPaintArr2[1] : textPaintArr2[3];
                i5 = 1;
                break;
            case 4:
                TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                textPaint = z2 ? textPaintArr3[2] : textPaintArr3[4];
                i5 = 1;
                break;
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
                int i6 = this.emojiOnlyCount > 9 ? 0 : -1;
                textPaint = Theme.chat_msgTextPaintEmoji[5];
                i5 = i6;
                break;
        }
        int textSize = (int) (textPaint.getTextSize() + AndroidUtilities.dp(4.0f));
        if (emojiSpanArr != null && emojiSpanArr.length > 0) {
            for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                emojiSpan.replaceFontMetrics(textPaint.getFontMetricsInt(), textSize);
            }
        }
        if (animatedEmojiSpanArr2 == null || animatedEmojiSpanArr2.length <= 0) {
            return;
        }
        for (int i7 = 0; i7 < animatedEmojiSpanArr2.length; i7++) {
            animatedEmojiSpanArr2[i7].replaceFontMetrics(textPaint.getFontMetricsInt(), textSize, i5);
            animatedEmojiSpanArr2[i7].full = true;
        }
    }

    private void checkEmojiOnly(int[] iArr) {
        checkEmojiOnly(iArr == null ? null : Integer.valueOf(iArr[0]));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean containsUrls(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() >= 2 && charSequence.length() <= 20480) {
            int length = charSequence.length();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            char c = 0;
            while (i < length) {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    i2++;
                    if (i2 >= 6) {
                        return true;
                    }
                    i3 = 0;
                    i4 = 0;
                } else if (cCharAt == ' ' || i2 <= 0) {
                    i2 = 0;
                }
                if ((cCharAt != '@' && cCharAt != '#' && cCharAt != '/' && cCharAt != '$') || i != 0) {
                    if (i != 0) {
                        int i5 = i - 1;
                        if (charSequence.charAt(i5) == ' ' || charSequence.charAt(i5) == '\n') {
                        }
                    }
                    if (cCharAt == ':') {
                        i3 = i3 == 0 ? 1 : 0;
                    } else if (cCharAt != '/') {
                        if (cCharAt == '.') {
                            if (i4 == 0 && c != ' ') {
                                i4++;
                            }
                        } else if (cCharAt != ' ' && c == '.' && i4 == 1) {
                            return true;
                        }
                        i4 = 0;
                    } else {
                        if (i3 == 2) {
                            return true;
                        }
                        if (i3 == 1) {
                            i3++;
                        }
                    }
                    i++;
                    c = cCharAt;
                }
                return true;
            }
        }
        return false;
    }

    private void createDateArray(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, boolean z) {
        if (map.get(this.dateKey) == null) {
            map.put(this.dateKey, new ArrayList<>());
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.message = LocaleController.formatDateChat(tL_channelAdminLogEvent.date);
            tL_message.id = 0;
            tL_message.date = tL_channelAdminLogEvent.date;
            MessageObject messageObject = new MessageObject(i, tL_message, false, false);
            messageObject.type = 10;
            messageObject.contentType = 1;
            messageObject.isDateObject = true;
            if (z) {
                arrayList.add(0, messageObject);
            } else {
                arrayList.add(messageObject);
            }
        }
    }

    private void createPathThumb() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return;
        }
        this.pathThumb = DocumentObject.getSvgThumb(document, Theme.key_chat_serviceBackground, 1.0f);
    }

    public static void cutIntoRanges(CharSequence charSequence, ArrayList<TextRange> arrayList) {
        String str;
        int i;
        if (charSequence == null) {
            return;
        }
        if (!(charSequence instanceof Spanned)) {
            arrayList.add(new TextRange(0, charSequence.length()));
            return;
        }
        TreeSet treeSet = new TreeSet();
        HashMap map = new HashMap();
        Spanned spanned = (Spanned) charSequence;
        QuoteSpan.QuoteStyleSpan[] quoteStyleSpanArr = (QuoteSpan.QuoteStyleSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.QuoteStyleSpan.class);
        for (int i2 = 0; i2 < quoteStyleSpanArr.length; i2++) {
            QuoteSpan.QuoteStyleSpan quoteStyleSpan = quoteStyleSpanArr[i2];
            quoteStyleSpan.span.adaptLineHeight = false;
            int spanStart = spanned.getSpanStart(quoteStyleSpan);
            int spanEnd = spanned.getSpanEnd(quoteStyleSpanArr[i2]);
            treeSet.add(Integer.valueOf(spanStart));
            map.put(Integer.valueOf(spanStart), Integer.valueOf((map.containsKey(Integer.valueOf(spanStart)) ? ((Integer) map.get(Integer.valueOf(spanStart))).intValue() : 0) | (quoteStyleSpanArr[i2].span.isCollapsing ? 16 : 1)));
            treeSet.add(Integer.valueOf(spanEnd));
            map.put(Integer.valueOf(spanEnd), Integer.valueOf((map.containsKey(Integer.valueOf(spanEnd)) ? ((Integer) map.get(Integer.valueOf(spanEnd))).intValue() : 0) | 2));
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            if (iIntValue >= 0 && iIntValue < spanned.length() && map.containsKey(num)) {
                int iIntValue2 = ((Integer) map.get(num)).intValue();
                if ((iIntValue2 & 17) != 0 && (iIntValue2 & 2) != 0 && spanned.charAt(iIntValue) != '\n' && (iIntValue - 1 <= 0 || spanned.charAt(i) != '\n')) {
                    it.remove();
                    map.remove(num);
                }
            }
        }
        CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
        for (int i3 = 0; i3 < spanArr.length; i3++) {
            int spanStart2 = spanned.getSpanStart(spanArr[i3]);
            int spanEnd2 = spanned.getSpanEnd(spanArr[i3]);
            treeSet.add(Integer.valueOf(spanStart2));
            map.put(Integer.valueOf(spanStart2), Integer.valueOf((map.containsKey(Integer.valueOf(spanStart2)) ? ((Integer) map.get(Integer.valueOf(spanStart2))).intValue() : 0) | 4));
            treeSet.add(Integer.valueOf(spanEnd2));
            map.put(Integer.valueOf(spanEnd2), Integer.valueOf((map.containsKey(Integer.valueOf(spanEnd2)) ? ((Integer) map.get(Integer.valueOf(spanEnd2))).intValue() : 0) | 8));
        }
        Iterator it2 = treeSet.iterator();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (it2.hasNext()) {
            Integer num2 = (Integer) it2.next();
            int iIntValue3 = num2.intValue();
            int iIntValue4 = ((Integer) map.get(num2)).intValue();
            if (i6 != iIntValue3) {
                int i8 = iIntValue3 - 1;
                if (i8 >= 0 && i8 < charSequence.length() && charSequence.charAt(i8) == '\n') {
                    iIntValue3--;
                }
                int i9 = iIntValue3;
                if ((iIntValue4 & 8) == 0 || i5 >= spanArr.length) {
                    str = null;
                } else {
                    str = spanArr[i5].lng;
                    i5++;
                }
                int i10 = i5;
                arrayList.add(new TextRange(i6, i9, i4 > 0, i7 > 0, z, str));
                i6 = i9 + 1;
                if (i6 >= charSequence.length() || charSequence.charAt(i9) != '\n') {
                    i6 = i9;
                }
                i5 = i10;
            }
            if ((iIntValue4 & 2) != 0) {
                i4--;
            }
            if ((iIntValue4 & 1) != 0 || (iIntValue4 & 16) != 0) {
                i4++;
                z = (iIntValue4 & 16) != 0;
            }
            if ((iIntValue4 & 8) != 0) {
                i7--;
            }
            if ((iIntValue4 & 4) != 0) {
                i7++;
            }
        }
        if (i6 < charSequence.length()) {
            arrayList.add(new TextRange(i6, charSequence.length(), i4 > 0, i7 > 0, z, null));
        }
    }

    public static boolean expandedQuotesEquals(HashSet<Integer> hashSet, HashSet<Integer> hashSet2) {
        if (hashSet == null && hashSet2 == null) {
            return true;
        }
        return (hashSet == null ? 0 : hashSet.size()) == (hashSet2 == null ? 0 : hashSet2.size()) && hashSet != null && hashSet.equals(hashSet2);
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document) {
        return findAnimatedEmojiEmoticon(document, "😀");
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document, String str) {
        return findAnimatedEmojiEmoticon(document, str, null);
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document, String str, Integer num) {
        if (document == null) {
            return str;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) || (documentAttribute instanceof TLRPC.TL_documentAttributeSticker)) {
                if (num != null) {
                    TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(num.intValue()).getStickerSet(documentAttribute.stickerset, true);
                    StringBuilder sb = new StringBuilder("");
                    if (stickerSet != null && stickerSet.packs != null) {
                        for (int i2 = 0; i2 < stickerSet.packs.size(); i2++) {
                            TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) stickerSet.packs.get(i2);
                            if (tL_stickerPack.documents.contains(Long.valueOf(document.id))) {
                                sb.append(tL_stickerPack.emoticon);
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(sb)) {
                        return sb.toString();
                    }
                }
                return documentAttribute.alt;
            }
        }
        return str;
    }

    public static int findQuoteStart(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return -1;
        }
        if (i == -1) {
            return str.indexOf(str2);
        }
        if (str2.length() + i < str.length() && str.startsWith(str2, i)) {
            return i;
        }
        int iIndexOf = str.indexOf(str2, i);
        int iLastIndexOf = str.lastIndexOf(str2, i);
        return iIndexOf == -1 ? iLastIndexOf : (iLastIndexOf != -1 && iIndexOf - i >= i - iLastIndexOf) ? iLastIndexOf : iIndexOf;
    }

    public static ArrayList<String> findStickerEmoticons(TLRPC.Document document, Integer num) {
        if (document == null) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) || (documentAttribute instanceof TLRPC.TL_documentAttributeSticker)) {
                if (num != null) {
                    TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(num.intValue()).getStickerSet(documentAttribute.stickerset, true);
                    if (stickerSet != null && stickerSet.packs != null) {
                        for (int i2 = 0; i2 < stickerSet.packs.size(); i2++) {
                            TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) stickerSet.packs.get(i2);
                            if (tL_stickerPack.documents.contains(Long.valueOf(document.id)) && Emoji.getEmojiDrawable(tL_stickerPack.emoticon) != null) {
                                arrayList.add(tL_stickerPack.emoticon);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        return arrayList;
                    }
                }
                if (!TextUtils.isEmpty(documentAttribute.alt) && Emoji.getEmojiDrawable(documentAttribute.alt) != null) {
                    arrayList.add(documentAttribute.alt);
                    return arrayList;
                }
            }
        }
        return null;
    }

    public static TLRPC.TodoItem findTodoItem(MessageObject messageObject, int i) {
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo;
        TLRPC.TodoList todoList;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if ((media instanceof TLRPC.TL_messageMediaToDo) && (todoList = (tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media).todo) != null && todoList.list != null) {
            for (int i2 = 0; i2 < tL_messageMediaToDo.todo.list.size(); i2++) {
                TLRPC.TodoItem todoItem = (TLRPC.TodoItem) tL_messageMediaToDo.todo.list.get(i2);
                if (todoItem.id == i) {
                    return todoItem;
                }
            }
        }
        return null;
    }

    public static void fixMessagePeer(ArrayList<TLRPC.Message> arrayList, long j) {
        if (arrayList == null || arrayList.isEmpty() || j == 0) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.Message message = arrayList.get(i);
            if (message instanceof TLRPC.TL_messageEmpty) {
                TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
                message.peer_id = tL_peerChannel;
                tL_peerChannel.channel_id = j;
            }
        }
    }

    private CharSequence formatTaskTitle(TLRPC.TodoItem todoItem) {
        CharSequence textWithEntities = formatTextWithEntities(todoItem.title, isOutOwner());
        if (!(textWithEntities instanceof Spannable)) {
            textWithEntities = new SpannableStringBuilder(textWithEntities);
        }
        ((Spannable) textWithEntities).setSpan(new URLSpanNoUnderline("task?" + todoItem.id, true), 0, textWithEntities.length(), 33);
        return textWithEntities;
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z) {
        Theme.createCommonChatResources();
        TextPaint textPaint = Theme.chat_actionTextPaint;
        if (textPaint == null) {
            textPaint = new TextPaint(1);
            textPaint.setTypeface(AndroidUtilities.bold());
            textPaint.setTextSize(AndroidUtilities.dp(Math.max(16, SharedConfig.fontSize) - 2));
        }
        return formatTextWithEntities(tL_textWithEntities, z, textPaint);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z, TextPaint textPaint) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities.text);
        addEntitiesToText(spannableStringBuilder, tL_textWithEntities.entities, z, false, false, false);
        return replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false), tL_textWithEntities.entities, textPaint.getFontMetricsInt());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CharSequence getActionSuggestionApprovalText(String str, String str2) {
        TLRPC.TL_messageActionSuggestedPostApproval tL_messageActionSuggestedPostApproval;
        String string;
        String string2;
        boolean z;
        TLRPC.Message message;
        TLRPC.Message message2 = this.messageOwner;
        if (message2 != null) {
            TLRPC.MessageAction messageAction = message2.action;
            tL_messageActionSuggestedPostApproval = messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval ? (TLRPC.TL_messageActionSuggestedPostApproval) messageAction : null;
        }
        if (tL_messageActionSuggestedPostApproval == null) {
            return null;
        }
        MessageSuggestionParams messageSuggestionParamsOf = MessageSuggestionParams.of(tL_messageActionSuggestedPostApproval);
        boolean zCanManageMonoForum = ChatObject.canManageMonoForum(this.currentAccount, DialogObject.getPeerDialogId(this.messageOwner.peer_id));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (!tL_messageActionSuggestedPostApproval.balance_too_low) {
            if (tL_messageActionSuggestedPostApproval.rejected) {
                MessageObject messageObject = this.replyMessageObject;
                if (messageObject == null || (message = messageObject.messageOwner) == null) {
                    z = true;
                } else {
                    long peerDialogId = DialogObject.getPeerDialogId(message.from_id);
                    z = peerDialogId == DialogObject.getPeerDialogId(this.replyMessageObject.messageOwner.saved_peer_id);
                    boolean z2 = peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                    spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment) ? z2 ? R.string.SuggestionAgreementDeclinedYou : R.string.SuggestionAgreementDeclinedThis : z2 ? R.string.SuggestionAgreementDeclinedYouComment : R.string.SuggestionAgreementDeclinedThisComment, !z ? str : str2)));
                    if (!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                        spannableStringBuilder.append((CharSequence) "\n\n");
                        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.8f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                        int length = spannableStringBuilder.length();
                        spannableStringBuilder.append('\"');
                        spannableStringBuilder.append((CharSequence) tL_messageActionSuggestedPostApproval.reject_comment);
                        spannableStringBuilder.append('\"');
                        spannableStringBuilder.setSpan(new EllipsizeSpanAnimator.TextAlphaSpan(217), length, spannableStringBuilder.length(), 33);
                    }
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment) ? z2 ? R.string.SuggestionAgreementDeclinedYou : R.string.SuggestionAgreementDeclinedThis : z2 ? R.string.SuggestionAgreementDeclinedYouComment : R.string.SuggestionAgreementDeclinedThisComment, !z ? str : str2)));
                if (!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                }
            } else {
                int i = (int) MessagesController.getInstance(this.currentAccount).config.starsSuggestedPostAgeMin.get(TimeUnit.HOURS);
                int i2 = tL_messageActionSuggestedPostApproval.schedule_date;
                if (i2 > 0) {
                    string = LocaleController.formatString(tL_messageActionSuggestedPostApproval.schedule_date > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() ? zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin1 : R.string.SuggestionAgreementReachedUser1 : zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin1PastSimple : R.string.SuggestionAgreementReachedUser1PastSimple, str, LocaleController.formatDateTime(i2, true));
                } else {
                    string = LocaleController.formatString(zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin1PresentPerfect : R.string.SuggestionAgreementReachedUser1PresentPerfect, str);
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(string));
                AmountUtils$Amount amountUtils$Amount = messageSuggestionParamsOf.amount;
                if (amountUtils$Amount != null && !amountUtils$Amount.isZero()) {
                    AmountUtils$Amount amountUtils$Amount2 = messageSuggestionParamsOf.amount;
                    AmountUtils$Currency amountUtils$Currency = amountUtils$Amount2.currency;
                    AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
                    boolean z3 = amountUtils$Currency == amountUtils$Currency2;
                    String string3 = zCanManageMonoForum ? LocaleController.formatString(R.string.SuggestionAgreementReachedAdmin2, str2, amountUtils$Amount2.asDecimalString()) : LocaleController.formatString(R.string.SuggestionAgreementReachedUser2, amountUtils$Amount2.asDecimalString());
                    spannableStringBuilder.append((CharSequence) "\n\n");
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.append((CharSequence) StarsIntroActivity.replaceStars(messageSuggestionParamsOf.amount.currency == amountUtils$Currency2, AndroidUtilities.replaceTags(string3)));
                    int i3 = z3 ? zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin3TON : R.string.SuggestionAgreementReachedUser3TON : zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin3Stars : R.string.SuggestionAgreementReachedUser3Stars;
                    spannableStringBuilder.append((CharSequence) "\n\n");
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i3, str, Integer.valueOf(i))));
                    int i4 = z3 ? zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin4TON : R.string.SuggestionAgreementReachedUser4TON : zCanManageMonoForum ? R.string.SuggestionAgreementReachedAdmin4Stars : R.string.SuggestionAgreementReachedUser4Stars;
                    spannableStringBuilder.append((CharSequence) "\n\n");
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                    string2 = LocaleController.formatString(i4, str, Integer.valueOf(i));
                }
            }
            return spannableStringBuilder;
        }
        string2 = LocaleController.formatString(R.string.SuggestionAgreementNotEnoughStars, str2);
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(string2));
        return spannableStringBuilder;
    }

    public static long getChannelId(TLRPC.Message message) {
        TLRPC.Peer peer = message.peer_id;
        if (peer != null) {
            return peer.channel_id;
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TLRPC.Chat getChat(AbstractMap<Long, TLRPC.Chat> abstractMap, LongSparseArray longSparseArray, long j) {
        TLRPC.Chat chat;
        Object obj;
        if (abstractMap != null) {
            obj = abstractMap.get(Long.valueOf(j));
        } else {
            if (longSparseArray == null) {
                chat = null;
                return chat != null ? MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j)) : chat;
            }
            obj = longSparseArray.get(j);
        }
        chat = (TLRPC.Chat) obj;
        if (chat != null) {
        }
    }

    public static long getChatId(TLRPC.Message message) {
        if (message == null) {
            return 0L;
        }
        TLRPC.Peer peer = message.peer_id;
        if (peer instanceof TLRPC.TL_peerChat) {
            return peer.chat_id;
        }
        if (peer instanceof TLRPC.TL_peerChannel) {
            return peer.channel_id;
        }
        return 0L;
    }

    public static int getCompletionsCount(TLRPC.TL_messageMediaToDo tL_messageMediaToDo) {
        TLRPC.TodoList todoList;
        if (tL_messageMediaToDo == null || (todoList = tL_messageMediaToDo.todo) == null || todoList.list == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < tL_messageMediaToDo.completions.size(); i2++) {
            TLRPC.TodoCompletion todoCompletion = (TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= tL_messageMediaToDo.todo.list.size()) {
                    break;
                }
                if (((TLRPC.TodoItem) tL_messageMediaToDo.todo.list.get(i3)).id == todoCompletion.id) {
                    i++;
                    break;
                }
                i3++;
            }
        }
        return i;
    }

    public static long getDialogId(TLRPC.Message message) {
        TLRPC.Peer peer;
        long j;
        if (message.dialog_id == 0 && (peer = message.peer_id) != null) {
            long j2 = peer.chat_id;
            if (j2 != 0) {
                j = -j2;
            } else {
                long j3 = peer.channel_id;
                if (j3 != 0) {
                    j = -j3;
                } else {
                    j = ((message.from_id == null || isOut(message)) ? message.peer_id : message.from_id).user_id;
                }
            }
            message.dialog_id = j;
        }
        return message.dialog_id;
    }

    public static TLRPC.Document getDocument(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia;
        TLRPC.Document document;
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return getMedia(message).webpage.document;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaGame) {
            return getMedia(message).game.document;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaStory) {
            TL_stories$StoryItem tL_stories$StoryItem = ((TLRPC.TL_messageMediaStory) getMedia(message)).storyItem;
            if (tL_stories$StoryItem != null && (messageMedia = tL_stories$StoryItem.media) != null && (document = messageMedia.document) != null) {
                return document;
            }
        } else if (getMedia(message) instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) getMedia(message);
            if (tL_messageMediaPaidMedia.extended_media.size() == 1 && (tL_messageMediaPaidMedia.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) {
                return ((TLRPC.TL_messageExtendedMedia) tL_messageMediaPaidMedia.extended_media.get(0)).media.document;
            }
        }
        if (getMedia(message) != null) {
            return getMedia(message).document;
        }
        return null;
    }

    public static double getDocumentDuration(TLRPC.Document document) {
        int i;
        if (document == null) {
            return 0.0d;
        }
        int size = document.attributes.size();
        while (i < size) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            i = ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) || (documentAttribute instanceof TLRPC.TL_documentAttributeAudio)) ? 0 : i + 1;
            return documentAttribute.duration;
        }
        return 0.0d;
    }

    public static TLRPC.VideoSize getDocumentVideoThumb(TLRPC.Document document) {
        if (document == null || document.video_thumbs.isEmpty()) {
            return null;
        }
        return document.video_thumbs.get(0);
    }

    private TLRPC.Document getDocumentWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Document document = webPage.document;
            if (document != null && document.id == j) {
                return document;
            }
            for (int i = 0; i < webPage.cached_page.documents.size(); i++) {
                TLRPC.Document document2 = (TLRPC.Document) webPage.cached_page.documents.get(i);
                if (document2.id == j) {
                    return document2;
                }
            }
        }
        return null;
    }

    public static String getFileName(TLRPC.Document document) {
        return FileLoader.getAttachFileName(document);
    }

    public static String getFileName(TLRPC.Message message) {
        TLRPC.Document document;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        if (getMedia(message) instanceof TLRPC.TL_messageMediaDocument) {
            document = getDocument(message);
        } else {
            if (getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) {
                ArrayList arrayList = getMedia(message).photo.sizes;
                return (arrayList.size() <= 0 || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) == null) ? "" : FileLoader.getAttachFileName(closestPhotoSizeWithSize);
            }
            if (!(getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(message).webpage == null) {
                return "";
            }
            document = getMedia(message).webpage.document;
        }
        return getFileName(document);
    }

    public static String getFileName(TLRPC.MessageMedia messageMedia) {
        TLRPC.WebPage webPage;
        TLRPC.Document document;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            document = messageMedia.document;
        } else {
            if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                ArrayList arrayList = messageMedia.photo.sizes;
                return (arrayList.size() <= 0 || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) == null) ? "" : FileLoader.getAttachFileName(closestPhotoSizeWithSize);
            }
            if (!(messageMedia instanceof TLRPC.TL_messageMediaWebPage) || (webPage = messageMedia.webpage) == null) {
                return "";
            }
            document = webPage.document;
        }
        return FileLoader.getAttachFileName(document);
    }

    public static long getFromChatId(TLRPC.Message message) {
        return getPeerId(message.from_id);
    }

    public static int getInlineResultDuration(TLRPC.BotInlineResult botInlineResult) {
        int webDocumentDuration = (int) getWebDocumentDuration(botInlineResult.content);
        return webDocumentDuration == 0 ? (int) getWebDocumentDuration(botInlineResult.thumb) : webDocumentDuration;
    }

    public static int[] getInlineResultWidthAndHeight(TLRPC.BotInlineResult botInlineResult) {
        int[] webDocumentWidthAndHeight = getWebDocumentWidthAndHeight(botInlineResult.content);
        if (webDocumentWidthAndHeight != null) {
            return webDocumentWidthAndHeight;
        }
        int[] webDocumentWidthAndHeight2 = getWebDocumentWidthAndHeight(botInlineResult.thumb);
        return webDocumentWidthAndHeight2 == null ? new int[]{0, 0} : webDocumentWidthAndHeight2;
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return null;
                }
                return inputStickerSet;
            }
        }
        return null;
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.Message message) {
        TLRPC.Document document = getDocument(message);
        if (document != null) {
            return getInputStickerSet(document);
        }
        return null;
    }

    public static TLRPC.MessageMedia getMedia(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return null;
        }
        TLRPC.MessageMedia messageMedia = messageObject.sponsoredMedia;
        return messageMedia != null ? messageMedia : getMedia(message);
    }

    public static TLRPC.MessageMedia getMedia(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia = message.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty() || !(message.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) ? message.media : ((TLRPC.TL_messageExtendedMedia) message.media.extended_media.get(0)).media;
    }

    public static long getMediaSize(TLRPC.MessageMedia messageMedia) {
        TLRPC.WebPage webPage;
        TLRPC.Document document = (!(messageMedia instanceof TLRPC.TL_messageMediaWebPage) || (webPage = messageMedia.webpage) == null) ? messageMedia instanceof TLRPC.TL_messageMediaGame ? messageMedia.game.document : messageMedia != null ? messageMedia.document : null : webPage.document;
        if (document != null) {
            return document.size;
        }
        return 0L;
    }

    private MessageObject getMessageObjectForBlock(TLRPC.WebPage webPage, TLRPC.PageBlock pageBlock) {
        TLRPC.TL_message tL_message;
        if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
            TLRPC.Photo photoWithId = getPhotoWithId(webPage, ((TLRPC.TL_pageBlockPhoto) pageBlock).photo_id);
            if (photoWithId == webPage.photo) {
                return this;
            }
            tL_message = new TLRPC.TL_message();
            TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
            tL_message.media = tL_messageMediaPhoto;
            tL_messageMediaPhoto.photo = photoWithId;
        } else if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
            TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
            if (getDocumentWithId(webPage, tL_pageBlockVideo.video_id) == webPage.document) {
                return this;
            }
            TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
            tL_message2.media = tL_messageMediaDocument;
            tL_messageMediaDocument.document = getDocumentWithId(webPage, tL_pageBlockVideo.video_id);
            tL_message = tL_message2;
        } else {
            tL_message = null;
        }
        tL_message.message = "";
        tL_message.realId = getId();
        tL_message.id = Utilities.random.nextInt();
        TLRPC.Message message = this.messageOwner;
        tL_message.date = message.date;
        tL_message.peer_id = message.peer_id;
        tL_message.out = message.out;
        tL_message.from_id = message.from_id;
        return new MessageObject(this.currentAccount, tL_message, false, true);
    }

    public static long getMessageSize(TLRPC.Message message) {
        return getMediaSize(getMedia(message));
    }

    public static long getMonoForumTopicId(TLRPC.Message message) {
        TLRPC.Peer peer;
        if (message == null || (peer = message.saved_peer_id) == null) {
            return 0L;
        }
        long j = peer.chat_id;
        if (j != 0) {
            return -j;
        }
        long j2 = peer.channel_id;
        return j2 != 0 ? -j2 : peer.user_id;
    }

    public static Long getMyPaidReactionPeer(TLRPC.MessageReactions messageReactions) {
        ArrayList arrayList;
        long peerDialogId;
        if (messageReactions == null || (arrayList = messageReactions.top_reactors) == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) it.next();
            if (messageReactor != null && messageReactor.my) {
                if (messageReactor.anonymous) {
                    peerDialogId = UserObject.ANONYMOUS;
                } else {
                    TLRPC.Peer peer = messageReactor.peer_id;
                    if (peer != null) {
                        peerDialogId = DialogObject.getPeerDialogId(peer);
                    }
                }
                return Long.valueOf(peerDialogId);
            }
        }
        return null;
    }

    public static long getObjectPeerId(TLObject tLObject) {
        if (tLObject == null) {
            return 0L;
        }
        if (tLObject instanceof TLRPC.Chat) {
            return -((TLRPC.Chat) tLObject).id;
        }
        if (tLObject instanceof TLRPC.User) {
            return ((TLRPC.User) tLObject).id;
        }
        return 0L;
    }

    private int getParentWidth() {
        int i;
        return (!this.preview || (i = this.parentWidth) <= 0) ? AndroidUtilities.displaySize.x : i;
    }

    public static long getPeerId(TLRPC.Peer peer) {
        long j;
        if (peer == null) {
            return 0L;
        }
        if (peer instanceof TLRPC.TL_peerChat) {
            j = peer.chat_id;
        } else {
            if (!(peer instanceof TLRPC.TL_peerChannel)) {
                return peer.user_id;
            }
            j = peer.channel_id;
        }
        return -j;
    }

    public static String getPeerObjectName(TLObject tLObject) {
        return tLObject instanceof TLRPC.User ? UserObject.getUserName((TLRPC.User) tLObject) : tLObject instanceof TLRPC.Chat ? ((TLRPC.Chat) tLObject).title : "DELETED";
    }

    public static TLRPC.Photo getPhoto(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return getMedia(message).webpage.photo;
        }
        if (getMedia(message) != null) {
            return getMedia(message).photo;
        }
        return null;
    }

    private TLRPC.Photo getPhotoWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Photo photo = webPage.photo;
            if (photo != null && photo.id == j) {
                return photo;
            }
            for (int i = 0; i < webPage.cached_page.photos.size(); i++) {
                TLRPC.Photo photo2 = (TLRPC.Photo) webPage.cached_page.photos.get(i);
                if (photo2.id == j) {
                    return photo2;
                }
            }
        }
        return null;
    }

    public static TLRPC.VideoSize getPremiumStickerAnimation(TLRPC.Document document) {
        if (document != null && document.thumbs != null) {
            for (int i = 0; i < document.video_thumbs.size(); i++) {
                if ("f".equals(document.video_thumbs.get(i).type)) {
                    return document.video_thumbs.get(i);
                }
            }
        }
        return null;
    }

    public static int getQuickReplyId(int i, TLRPC.Message message) {
        QuickRepliesController.QuickReply quickReplyFindReply;
        if (message == null) {
            return 0;
        }
        if ((message.flags & 1073741824) != 0) {
            return message.quick_reply_shortcut_id;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcutId) {
            return ((TLRPC.TL_inputQuickReplyShortcutId) inputQuickReplyShortcut).shortcut_id;
        }
        String quickReplyName = getQuickReplyName(message);
        if (quickReplyName == null || (quickReplyFindReply = QuickRepliesController.getInstance(i).findReply(quickReplyName)) == null) {
            return 0;
        }
        return quickReplyFindReply.id;
    }

    public static int getQuickReplyId(TLRPC.Message message) {
        if (message == null) {
            return 0;
        }
        if ((message.flags & 1073741824) != 0) {
            return message.quick_reply_shortcut_id;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcutId) {
            return ((TLRPC.TL_inputQuickReplyShortcutId) inputQuickReplyShortcut).shortcut_id;
        }
        return 0;
    }

    public static String getQuickReplyName(TLRPC.Message message) {
        if (message == null) {
            return null;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcut) {
            return ((TLRPC.TL_inputQuickReplyShortcut) inputQuickReplyShortcut).shortcut;
        }
        return null;
    }

    public static long getReplyToDialogId(TLRPC.Message message) {
        TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
        if (messageReplyHeader == null) {
            return 0L;
        }
        TLRPC.Peer peer = messageReplyHeader.reply_to_peer_id;
        return peer != null ? getPeerId(peer) : getDialogId(message);
    }

    public static long getSavedDialogId(long j, TLRPC.Message message) {
        TLRPC.Peer peer;
        TLRPC.Peer peer2 = message.saved_peer_id;
        if (peer2 == null) {
            if (message.from_id.user_id != j) {
                return 0L;
            }
            TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
            return (messageFwdHeader == null || (peer = messageFwdHeader.saved_from_peer) == null) ? ((messageFwdHeader == null || messageFwdHeader.from_id == null) && messageFwdHeader != null) ? UserObject.ANONYMOUS : j : DialogObject.getPeerDialogId(peer);
        }
        long j2 = peer2.chat_id;
        if (j2 != 0) {
            return -j2;
        }
        long j3 = peer2.channel_id;
        return j3 != 0 ? -j3 : peer2.user_id;
    }

    public static TLRPC.Peer getSavedDialogPeer(long j, TLRPC.Message message) {
        TLRPC.Peer peer;
        TLRPC.Peer peer2;
        TLRPC.Peer peer3 = message.saved_peer_id;
        if (peer3 != null) {
            return peer3;
        }
        TLRPC.Peer peer4 = message.peer_id;
        if (peer4 == null || peer4.user_id != j || (peer = message.from_id) == null || peer.user_id != j) {
            return null;
        }
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader != null && (peer2 = messageFwdHeader.saved_from_peer) != null) {
            return peer2;
        }
        if ((messageFwdHeader == null || messageFwdHeader.from_id == null) && messageFwdHeader != null) {
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_peerUser.user_id = UserObject.ANONYMOUS;
            return tL_peerUser;
        }
        TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
        tL_peerUser2.user_id = j;
        return tL_peerUser2;
    }

    public static long getStickerSetId(TLRPC.Document document) {
        if (document == null) {
            return -1L;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return -1L;
                }
                return inputStickerSet.id;
            }
        }
        return -1L;
    }

    public static String getStickerSetName(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return null;
                }
                return inputStickerSet.short_name;
            }
        }
        return null;
    }

    private CharSequence getStringFrom(TLRPC.ChatReactions chatReactions) {
        int i;
        if (chatReactions instanceof TLRPC.TL_chatReactionsAll) {
            i = R.string.AllReactions;
        } else {
            if (chatReactions instanceof TLRPC.TL_chatReactionsSome) {
                TLRPC.TL_chatReactionsSome tL_chatReactionsSome = (TLRPC.TL_chatReactionsSome) chatReactions;
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                for (int i2 = 0; i2 < tL_chatReactionsSome.reactions.size(); i2++) {
                    if (i2 != 0) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    spannableStringBuilder.append(Emoji.replaceEmoji(ReactionsUtils.reactionToCharSequence((TLRPC.Reaction) tL_chatReactionsSome.reactions.get(i2)), null, false));
                }
                return spannableStringBuilder;
            }
            i = R.string.NoReactions;
        }
        return LocaleController.getString(i);
    }

    private static long getTopicId(int i, TLRPC.Message message) {
        return getTopicId(i, message, false);
    }

    public static long getTopicId(int i, TLRPC.Message message, boolean z) {
        return getTopicId(i, message, z, false);
    }

    public static long getTopicId(int i, TLRPC.Message message, boolean z, boolean z2) {
        int i2;
        long clientUserId = UserConfig.getInstance(i).getClientUserId();
        if (z2) {
            return getMonoForumTopicId(message);
        }
        if ((message.flags & 1073741824) != 0 && DialogObject.getPeerDialogId(message.peer_id) == clientUserId) {
            i2 = message.quick_reply_shortcut_id;
        } else {
            if (!z && i >= 0 && DialogObject.getPeerDialogId(message.peer_id) == clientUserId) {
                return getSavedDialogId(clientUserId, message);
            }
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionTopicCreate)) {
                TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
                if (messageReplyHeader == null || !messageReplyHeader.forum_topic) {
                    return z ? 1L : 0L;
                }
                if (!(message instanceof TLRPC.TL_messageService) || (messageAction instanceof TLRPC.TL_messageActionPinMessage)) {
                    int i3 = messageReplyHeader.reply_to_top_id;
                    if (i3 == 0) {
                        i3 = messageReplyHeader.reply_to_msg_id;
                    }
                    return i3;
                }
                int i4 = messageReplyHeader.reply_to_msg_id;
                if (i4 == 0) {
                    i4 = messageReplyHeader.reply_to_top_id;
                }
                return i4;
            }
            i2 = message.id;
        }
        return i2;
    }

    private static long getTopicId(MessageObject messageObject) {
        if (messageObject == null) {
            return 0L;
        }
        return getTopicId(messageObject.currentAccount, messageObject.messageOwner, false);
    }

    public static int getUnreadFlags(TLRPC.Message message) {
        int i = !message.unread ? 1 : 0;
        return !message.media_unread ? i | 2 : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TLRPC.User getUser(AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray longSparseArray, long j) {
        TLRPC.User user;
        Object obj;
        if (abstractMap != null) {
            obj = abstractMap.get(Long.valueOf(j));
        } else {
            if (longSparseArray == null) {
                user = null;
                return user != null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)) : user;
            }
            obj = longSparseArray.get(j);
        }
        user = (TLRPC.User) obj;
        if (user != null) {
        }
    }

    private String getUserName(TLObject tLObject, ArrayList<TLRPC.MessageEntity> arrayList, int i) {
        String string;
        String publicUsername;
        long j;
        String str;
        String str2;
        long j2;
        if (tLObject == null) {
            str = "";
            str2 = null;
            j2 = 0;
        } else {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                string = user.deleted ? LocaleController.getString(R.string.HiddenName) : ContactsController.formatName(user.first_name, user.last_name);
                publicUsername = UserObject.getPublicUsername(user);
                j = user.id;
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                string = chat.title;
                publicUsername = ChatObject.getPublicUsername(chat);
                j = -chat.id;
            }
            str = string;
            str2 = publicUsername;
            j2 = j;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName.user_id = j2;
            tL_messageEntityMentionName.offset = i;
            tL_messageEntityMentionName.length = str.length();
            arrayList.add(tL_messageEntityMentionName);
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName2 = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName2.user_id = j2;
            tL_messageEntityMentionName2.offset = i + str.length() + 2;
            tL_messageEntityMentionName2.length = str2.length() + 1;
            arrayList.add(tL_messageEntityMentionName2);
        }
        return String.format("%1$s (@%2$s)", str, str2);
    }

    private String getUsernamesString(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return LocaleController.getString(R.string.UsernameEmpty).toLowerCase();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append("@");
            sb.append(arrayList.get(i));
            if (i < arrayList.size() - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static String getVideoCodec(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return ((TLRPC.TL_documentAttributeVideo) documentAttribute).video_codec;
            }
        }
        return null;
    }

    public static int getVideoHeight(TLRPC.Document document) {
        if (document == null) {
            return 0;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.h;
            }
        }
        return 0;
    }

    public static int getVideoWidth(TLRPC.Document document) {
        if (document == null) {
            return 0;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.w;
            }
        }
        return 0;
    }

    public static double getWebDocumentDuration(TLRPC.WebDocument webDocument) {
        int i;
        if (webDocument == null) {
            return 0.0d;
        }
        int size = webDocument.attributes.size();
        while (i < size) {
            TLRPC.DocumentAttribute documentAttribute = (TLRPC.DocumentAttribute) webDocument.attributes.get(i);
            i = ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) || (documentAttribute instanceof TLRPC.TL_documentAttributeAudio)) ? 0 : i + 1;
            return documentAttribute.duration;
        }
        return 0.0d;
    }

    public static int[] getWebDocumentWidthAndHeight(TLRPC.WebDocument webDocument) {
        if (webDocument == null) {
            return null;
        }
        int size = webDocument.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = (TLRPC.DocumentAttribute) webDocument.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                return new int[]{documentAttribute.w, documentAttribute.h};
            }
        }
        return null;
    }

    public static CharSequence groupSpan() {
        if (groupSpan == null) {
            groupSpan = new SpannableStringBuilder(ImageLoader.AUTOPLAY_FILTER);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.msg_folders_groups);
            coloredImageSpan.setScale(0.7f, 0.7f);
            ((SpannableStringBuilder) groupSpan).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return groupSpan;
    }

    private void handleFoundWords(ArrayList<String> arrayList, String[] strArr, boolean z) {
        handleFoundWords(arrayList, strArr, z, true);
    }

    private void handleFoundWords(ArrayList<String> arrayList, String[] strArr, boolean z, boolean z2) {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        boolean z3;
        if (arrayList.isEmpty()) {
            return;
        }
        boolean z4 = false;
        for (int i = 0; i < arrayList.size(); i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    break;
                }
                if (arrayList.get(i).contains(strArr[i2])) {
                    z4 = true;
                    break;
                }
                i2++;
            }
            if (z4) {
                break;
            }
        }
        if (z4) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int i4 = 0;
                while (true) {
                    if (i4 >= strArr.length) {
                        z3 = false;
                        break;
                    } else {
                        if (arrayList.get(i3).contains(strArr[i4])) {
                            z3 = true;
                            break;
                        }
                        i4++;
                    }
                }
                if (!z3) {
                    arrayList.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (arrayList.size() > 0) {
                Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda9
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return MessageObject.lambda$handleFoundWords$3((String) obj, (String) obj2);
                    }
                });
                String str = arrayList.get(0);
                arrayList.clear();
                arrayList.add(str);
            }
        }
        this.highlightedWords = arrayList;
        if (this.messageOwner.message != null) {
            applyEntities();
            CharSequence charSequenceReplaceMultipleCharSequence = AndroidUtilities.replaceMultipleCharSequence("\n", !TextUtils.isEmpty(this.caption) ? this.caption : this.messageText, " ");
            if (z && (message = this.messageOwner) != null && (messageReplyHeader = message.reply_to) != null && messageReplyHeader.quote_text != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.messageOwner.reply_to.quote_text);
                addEntitiesToText(spannableStringBuilder, this.messageOwner.reply_to.quote_entities, isOutOwner(), false, false, false);
                SpannableString spannableString = new SpannableString("q ");
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.mini_quote);
                coloredImageSpan.setOverrideColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
                spannableString.setSpan(coloredImageSpan, 0, 1, 33);
                charSequenceReplaceMultipleCharSequence = new SpannableStringBuilder(spannableString).append((CharSequence) spannableStringBuilder).append('\n').append(charSequenceReplaceMultipleCharSequence);
            }
            String string = charSequenceReplaceMultipleCharSequence.toString();
            int length = string.length();
            int iIndexOf = string.toLowerCase().indexOf(arrayList.get(0));
            if (iIndexOf < 0) {
                iIndexOf = 0;
            }
            if (length > 120 && z2) {
                float f = R.styleable.AppCompatTheme_windowFixedHeightMajor;
                int iMax = Math.max(0, iIndexOf - ((int) (0.1f * f)));
                charSequenceReplaceMultipleCharSequence = charSequenceReplaceMultipleCharSequence.subSequence(iMax, Math.min(length, (iIndexOf - iMax) + iIndexOf + ((int) (f * 0.9f))));
            }
            this.messageTrimmedToHighlight = charSequenceReplaceMultipleCharSequence;
            this.messageTrimmedToHighlightCut = z2;
        }
    }

    private boolean hasNonEmojiEntities() {
        TLRPC.Message message = this.messageOwner;
        if (message != null && message.entities != null) {
            for (int i = 0; i < this.messageOwner.entities.size(); i++) {
                if (!(this.messageOwner.entities.get(i) instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hasUnreadReactions(TLRPC.Message message) {
        if (message == null) {
            return false;
        }
        return hasUnreadReactions(message.reactions);
    }

    public static boolean hasUnreadReactions(TLRPC.TL_messageReactions tL_messageReactions) {
        if (tL_messageReactions == null) {
            return false;
        }
        for (int i = 0; i < tL_messageReactions.recent_reactions.size(); i++) {
            if (((TLRPC.MessagePeerReaction) tL_messageReactions.recent_reactions.get(i)).unread) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAnimatedEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAnimatedStickerDocument(TLRPC.Document document) {
        return document != null && document.mime_type.equals("video/webm");
    }

    public static boolean isAnimatedStickerDocument(TLRPC.Document document, boolean z) {
        if (document != null && (("application/x-tgsticker".equals(document.mime_type) && !document.thumbs.isEmpty()) || "application/x-tgsdice".equals(document.mime_type))) {
            if (z) {
                return true;
            }
            int size = document.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                    return documentAttribute.stickerset instanceof TLRPC.TL_inputStickerSetShortName;
                }
                if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isAnimatedStickerMessage(TLRPC.Message message) {
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(message.dialog_id);
        if ((!zIsEncryptedDialog || message.stickerVerified == 1) && getMedia(message) != null) {
            return isAnimatedStickerDocument(getMedia(message).document, !zIsEncryptedDialog || message.out);
        }
        return false;
    }

    public static boolean isCompleted(MessageObject messageObject, int i) {
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo;
        TLRPC.TodoList todoList;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if (!(media instanceof TLRPC.TL_messageMediaToDo) || (todoList = (tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media).todo) == null || todoList.list == null) {
            return false;
        }
        return isCompleted(tL_messageMediaToDo, i);
    }

    public static boolean isCompleted(TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i) {
        for (int i2 = 0; i2 < tL_messageMediaToDo.completions.size(); i2++) {
            if (((TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i2)).id == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isContentUnread(TLRPC.Message message) {
        return message.media_unread;
    }

    public static boolean isDocumentHasAttachedStickers(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeHasStickers) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isDocumentHasThumb(TLRPC.Document document) {
        if (document != null && !document.thumbs.isEmpty()) {
            int size = document.thumbs.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = document.thumbs.get(i);
                if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoSizeEmpty) && (!(photoSize.location instanceof TLRPC.TL_fileLocationUnavailable) || photoSize.bytes != null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isExtendedVideo(TLRPC.MessageExtendedMedia messageExtendedMedia) {
        if (!(messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia)) {
            return (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) && (((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0;
        }
        TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
        return (messageMedia instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia.document);
    }

    public static boolean isForwardedMessage(TLRPC.Message message) {
        return ((message.flags & 4) == 0 || message.fwd_from == null) ? false : true;
    }

    public static boolean isFreeEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                return ((TLRPC.TL_documentAttributeCustomEmoji) documentAttribute).free;
            }
        }
        return false;
    }

    public static boolean isGameMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaGame;
    }

    public static boolean isGifDocument(WebFile webFile) {
        return webFile != null && (webFile.mime_type.equals("image/gif") || isNewGifDocument(webFile));
    }

    public static boolean isGifDocument(TLRPC.Document document) {
        return isGifDocument(document, false);
    }

    public static boolean isGifDocument(TLRPC.Document document, boolean z) {
        String str;
        return (document == null || (str = document.mime_type) == null || ((!str.equals("image/gif") || z) && !isNewGifDocument(document))) ? false : true;
    }

    public static boolean isGifMessage(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isGifDocument(getMedia(message).webpage.document);
        }
        if (getMedia(message) != null) {
            return isGifDocument(getMedia(message).document, (message.grouped_id > 0L ? 1 : (message.grouped_id == 0L ? 0 : -1)) != 0);
        }
        return false;
    }

    public static boolean isImageWebDocument(WebFile webFile) {
        return (webFile == null || isGifDocument(webFile) || !webFile.mime_type.startsWith("image/")) ? false : true;
    }

    public static boolean isInvoiceMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaInvoice;
    }

    public static boolean isLiveLocationMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaGeoLive;
    }

    public static boolean isLocationMessage(TLRPC.Message message) {
        return (getMedia(message) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(message) instanceof TLRPC.TL_messageMediaGeoLive) || (getMedia(message) instanceof TLRPC.TL_messageMediaVenue);
    }

    public static boolean isMaskDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && documentAttribute.mask) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isMaskMessage(TLRPC.Message message) {
        return getMedia(message) != null && isMaskDocument(getMedia(message).document);
    }

    public static boolean isMediaEmpty(TLRPC.Message message) {
        return isMediaEmpty(message, true);
    }

    public static boolean isMediaEmpty(TLRPC.Message message, boolean z) {
        return message == null || getMedia(message) == null || (getMedia(message) instanceof TLRPC.TL_messageMediaEmpty) || (z && (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage));
    }

    public static boolean isMediaEmptyWebpage(TLRPC.Message message) {
        return message == null || getMedia(message) == null || (getMedia(message) instanceof TLRPC.TL_messageMediaEmpty);
    }

    public static boolean isMusicDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeAudio) {
                    return !r2.voice;
                }
            }
            if (!TextUtils.isEmpty(document.mime_type)) {
                String lowerCase = document.mime_type.toLowerCase();
                if (lowerCase.equals("audio/flac") || lowerCase.equals("audio/ogg") || lowerCase.equals("audio/opus") || lowerCase.equals("audio/x-opus+ogg") || (lowerCase.equals("application/octet-stream") && FileLoader.getDocumentFileName(document).endsWith(".opus"))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isMusicMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaWebPage ? isMusicDocument(getMedia(message).webpage.document) : getMedia(message) != null && isMusicDocument(getMedia(message).document);
    }

    public static boolean isNewGifDocument(WebFile webFile) {
        if (webFile != null && "video/mp4".equals(webFile.mime_type)) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < webFile.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = webFile.attributes.get(i3);
                if (!(documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) && (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                    i = documentAttribute.w;
                    i2 = documentAttribute.h;
                }
            }
            if (i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNewGifDocument(TLRPC.Document document) {
        if (document != null && "video/mp4".equals(document.mime_type)) {
            boolean z = false;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < document.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                    z = true;
                } else if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    i = documentAttribute.w;
                    i2 = documentAttribute.h;
                }
            }
            if (z && i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNewGifMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaWebPage ? isNewGifDocument(getMedia(message).webpage.document) : getMedia(message) != null && isNewGifDocument(getMedia(message).document);
    }

    public static boolean isOut(TLRPC.Message message) {
        return message.out;
    }

    public static boolean isPaidVideo(TLRPC.MessageMedia messageMedia) {
        return (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) && messageMedia.extended_media.size() == 1 && isExtendedVideo(messageMedia.extended_media.get(0));
    }

    public static boolean isPhoto(TLRPC.Message message) {
        TLRPC.MessageAction messageAction;
        TLRPC.Photo photo;
        return getMedia(message) instanceof TLRPC.TL_messageMediaWebPage ? (getMedia(message).webpage.photo instanceof TLRPC.TL_photo) && !(getMedia(message).webpage.document instanceof TLRPC.TL_document) : (message == null || (messageAction = message.action) == null || (photo = messageAction.photo) == null) ? getMedia(message) instanceof TLRPC.TL_messageMediaPhoto : photo instanceof TLRPC.TL_photo;
    }

    public static boolean isPremiumEmojiPack(TLRPC.StickerSetCovered stickerSetCovered) {
        TLRPC.StickerSet stickerSet;
        if (stickerSetCovered != null && (stickerSet = stickerSetCovered.set) != null && !stickerSet.emojis) {
            return false;
        }
        ArrayList arrayList = stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered ? ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents : stickerSetCovered.covers;
        if (stickerSetCovered != null && arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (!isFreeEmoji((TLRPC.Document) arrayList.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPremiumEmojiPack(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if ((tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null || stickerSet.emojis) && tL_messages_stickerSet != null && tL_messages_stickerSet.documents != null) {
            for (int i = 0; i < tL_messages_stickerSet.documents.size(); i++) {
                if (!isFreeEmoji((TLRPC.Document) tL_messages_stickerSet.documents.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPremiumSticker(TLRPC.Document document) {
        if (document != null && document.thumbs != null) {
            for (int i = 0; i < document.video_thumbs.size(); i++) {
                if ("f".equals(document.video_thumbs.get(i).type)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isQuickReply(TLRPC.Message message) {
        return (message == null || ((message.flags & 1073741824) == 0 && message.quick_reply_shortcut == null)) ? false : true;
    }

    public static boolean isRoundVideoDocument(TLRPC.Document document) {
        if (document != null && "video/mp4".equals(document.mime_type)) {
            boolean z = false;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < document.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    i = documentAttribute.w;
                    i2 = documentAttribute.h;
                    z = documentAttribute.round_message;
                }
            }
            if (z && i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRoundVideoMessage(TLRPC.Message message) {
        return (!(getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(message).webpage == null) ? getMedia(message) != null && isRoundVideoDocument(getMedia(message).document) : isRoundVideoDocument(getMedia(message).webpage.document);
    }

    public static boolean isSecretMedia(TLRPC.Message message) {
        if (message instanceof TLRPC.TL_message_secret) {
            return ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isRoundVideoMessage(message) || isVideoMessage(message)) && getMedia(message).ttl_seconds != 0;
        }
        if (message instanceof TLRPC.TL_message) {
            return ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
        }
        return false;
    }

    public static boolean isSecretPhotoOrVideo(TLRPC.Message message) {
        int i;
        if (message instanceof TLRPC.TL_message_secret) {
            return ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isRoundVideoMessage(message) || isVideoMessage(message)) && (i = message.ttl) > 0 && i <= 60;
        }
        if (message instanceof TLRPC.TL_message) {
            return ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
        }
        return false;
    }

    public static boolean isStaticStickerDocument(TLRPC.Document document) {
        return document != null && document.mime_type.equals("image/webp");
    }

    public static boolean isStickerDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeSticker) {
                    return "image/webp".equals(document.mime_type) || "video/webm".equals(document.mime_type);
                }
            }
        }
        return false;
    }

    public static boolean isStickerHasSet(TLRPC.Document document) {
        TLRPC.InputStickerSet inputStickerSet;
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute.stickerset) != null && !(inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isStickerMessage(TLRPC.Message message) {
        return getMedia(message) != null && isStickerDocument(getMedia(message).document);
    }

    public static boolean isSystemSignUp(MessageObject messageObject) {
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if ((message instanceof TLRPC.TL_messageService) && (((TLRPC.TL_messageService) message).action instanceof TLRPC.TL_messageActionContactSignUp)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTextColorEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        getInputStickerSet(document);
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if ((inputStickerSet instanceof TLRPC.TL_inputStickerSetID) && inputStickerSet.id == 1269403972611866647L) {
                    return true;
                }
                return ((TLRPC.TL_documentAttributeCustomEmoji) documentAttribute).text_color;
            }
        }
        return false;
    }

    public static boolean isTextColorSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if (tL_messages_stickerSet != null && (stickerSet = tL_messages_stickerSet.set) != null) {
            if (stickerSet.text_color) {
                return true;
            }
            ArrayList arrayList = tL_messages_stickerSet.documents;
            if (arrayList != null && !arrayList.isEmpty()) {
                return isTextColorEmoji((TLRPC.Document) tL_messages_stickerSet.documents.get(0));
            }
        }
        return false;
    }

    public static boolean isTopicActionMessage(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return false;
        }
        TLRPC.MessageAction messageAction = message.action;
        return (messageAction instanceof TLRPC.TL_messageActionTopicCreate) || (messageAction instanceof TLRPC.TL_messageActionTopicEdit);
    }

    public static boolean isUnread(TLRPC.Message message) {
        return message.unread;
    }

    public static boolean isV(String str) {
        if (str == null) {
            return true;
        }
        switch (str.toLowerCase().hashCode()) {
            case -1535907675:
            case -1422950858:
            case -1253501876:
            case -907685685:
            case -788047292:
            case -338481545:
            case 3106:
            case 3184:
            case 3215:
            case 3401:
            case 3479:
            case 3494:
            case 3580:
            case 3581:
            case 3593:
            case 3632:
            case 3669:
            case 3756:
            case 3804:
            case 96400:
            case 96586:
            case 96796:
            case 96801:
            case 96894:
            case 97013:
            case 97300:
            case 97301:
            case 97543:
            case 98437:
            case 98472:
            case 98618:
            case 98689:
            case 98719:
            case 98789:
            case 98808:
            case 98819:
            case 99338:
            case 99351:
            case 99548:
            case 99556:
            case 99582:
            case 99640:
            case 99752:
            case 100208:
            case 100511:
            case 100542:
            case 100730:
            case 100882:
            case 100958:
            case 101460:
            case 101671:
            case 101854:
            case 102556:
            case 102572:
            case 103404:
            case 103438:
            case 103637:
            case 103649:
            case 104074:
            case 104269:
            case 104417:
            case 104430:
            case 104435:
            case 104474:
            case 104479:
            case 104582:
            case 104587:
            case 104987:
            case 105532:
            case 105543:
            case 105551:
            case 106202:
            case 106496:
            case 107141:
            case 107305:
            case 107932:
            case 107988:
            case 107989:
            case 108341:
            case 108382:
            case 108413:
            case 108419:
            case 108426:
            case 108430:
            case 108570:
            case 109824:
            case 109860:
            case 110754:
            case 110801:
            case 110834:
            case 110883:
            case 110968:
            case 110989:
            case 111052:
            case 111220:
            case 111265:
            case 111269:
            case 111390:
            case 111420:
            case 111482:
            case 111494:
            case 112185:
            case 112712:
            case 112788:
            case 112862:
            case 113115:
            case 113132:
            case 113291:
            case 113698:
            case 113700:
            case 113837:
            case 113854:
            case 114101:
            case 114130:
            case 114276:
            case 114381:
            case 114809:
            case 114922:
            case 114970:
            case 115161:
            case 115312:
            case 115639:
            case 116079:
            case 116537:
            case 116551:
            case 116609:
            case 117218:
            case 117537:
            case 117840:
            case 117938:
            case 118023:
            case 118026:
            case 118028:
            case 118439:
            case 118783:
            case 118807:
            case 118939:
            case 120703:
            case 3003834:
            case 3016404:
            case 3088960:
            case 3213227:
            case 3271912:
            case 3358271:
            case 3444044:
            case 3446979:
            case 3447940:
            case 3524225:
            case 3524692:
            case 3526257:
            case 3682393:
            case 35379135:
            case 114035747:
                break;
        }
        return true;
    }

    public static boolean isVideoDocument(TLRPC.Document document) {
        int iLastIndexOf;
        if (document == null) {
            return false;
        }
        String str = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < document.attributes.size(); i3++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                if (documentAttribute.round_message) {
                    return false;
                }
                i = documentAttribute.w;
                i2 = documentAttribute.h;
                z2 = true;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                z = true;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeFilename) {
                str = documentAttribute.file_name;
            }
        }
        if (str != null && (iLastIndexOf = str.lastIndexOf(".")) >= 0 && isV(str.substring(iLastIndexOf + 1))) {
            return false;
        }
        if (z && (i > 1280 || i2 > 1280)) {
            z = false;
        }
        if (SharedConfig.streamMkv && !z2 && "video/x-matroska".equals(document.mime_type)) {
            z2 = true;
        }
        return z2 && !z;
    }

    public static boolean isVideoMessage(TLRPC.Message message) {
        if (getMedia(message) == null || !isVideoSticker(getMedia(message).document)) {
            return getMedia(message) instanceof TLRPC.TL_messageMediaWebPage ? isVideoDocument(getMedia(message).webpage.document) : getMedia(message) != null && isVideoDocument(getMedia(message).document);
        }
        return false;
    }

    public static boolean isVideoSticker(TLRPC.Document document) {
        return document != null && isVideoStickerDocument(document);
    }

    public static boolean isVideoStickerDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                    return "video/webm".equals(document.mime_type);
                }
            }
        }
        return false;
    }

    public static boolean isVideoWebDocument(WebFile webFile) {
        return webFile != null && webFile.mime_type.startsWith("video/");
    }

    public static boolean isVoiceDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    return documentAttribute.voice;
                }
            }
        }
        return false;
    }

    public static boolean isVoiceMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaWebPage ? isVoiceDocument(getMedia(message).webpage.document) : getMedia(message) != null && isVoiceDocument(getMedia(message).document);
    }

    public static boolean isVoiceWebDocument(WebFile webFile) {
        return webFile != null && webFile.mime_type.equals("audio/ogg");
    }

    public static boolean isWebM(TLRPC.Document document) {
        return document != null && "video/webm".equals(document.mime_type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$addEntitiesToText$2(TLRPC.MessageEntity messageEntity, TLRPC.MessageEntity messageEntity2) {
        int i = messageEntity.offset;
        int i2 = messageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$handleFoundWords$3(String str, String str2) {
        return str2.length() - str.length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAnimatedEmojiDocument$0(TLRPC.Document document) {
        this.emojiAnimatedSticker = document;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.animatedEmojiDocumentLoaded, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAnimatedEmojiDocument$1(final TLRPC.Document document) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAnimatedEmojiDocument$0(document);
            }
        });
    }

    public static StaticLayout makeStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, float f, float f2, boolean z) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 24) {
            return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, f, f2, false);
        }
        StaticLayout.Builder alignment = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL);
        if (z) {
            alignment.setIncludePad(false);
            if (i2 >= 28) {
                alignment.setUseLineSpacingFromFallbacks(false);
            }
        }
        StaticLayout staticLayoutBuild = alignment.build();
        for (int i3 = 0; i3 < staticLayoutBuild.getLineCount(); i3++) {
            if (staticLayoutBuild.getLineRight(i3) > i) {
                StaticLayout.Builder alignment2 = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL);
                if (z) {
                    alignment2.setIncludePad(false);
                    if (Build.VERSION.SDK_INT >= 28) {
                        alignment2.setUseLineSpacingFromFallbacks(false);
                    }
                }
                return alignment2.build();
            }
        }
        return staticLayoutBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needDrawAvatarInternal() {
        TLRPC.Chat chat;
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || this.searchType != 0) {
            return true;
        }
        boolean z = getDialogId() >= 0 ? getDialogId() == UserObject.VERIFY : !((chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) == null || !chat.signature_profiles);
        if (!isSponsored()) {
            if ((isFromChat() && isFromUser()) || isFromGroup() || z || this.eventId != 0) {
                return true;
            }
            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
            if (messageFwdHeader != null && messageFwdHeader.saved_from_peer != null) {
                return true;
            }
        }
        return false;
    }

    public static void normalizeFlags(TLRPC.Message message) {
        TLRPC.Peer peer = message.from_id;
        if (peer == null) {
            message.flags &= -257;
        }
        if (peer == null) {
            message.flags &= -5;
        }
        if (message.reply_to == null) {
            message.flags &= -9;
        }
        if (message.media == null) {
            message.flags &= -513;
        }
        if (message.reply_markup == null) {
            message.flags &= -65;
        }
        if (message.replies == null) {
            message.flags &= -8388609;
        }
        if (message.reactions == null) {
            message.flags &= -1048577;
        }
    }

    public static CharSequence peerNameWithIcon(int i, long j) {
        return peerNameWithIcon(i, j, false);
    }

    public static CharSequence peerNameWithIcon(int i, long j, boolean z) {
        MessagesController messagesController = MessagesController.getInstance(i);
        if (j >= 0) {
            TLRPC.User user = messagesController.getUser(Long.valueOf(j));
            return user != null ? AndroidUtilities.removeDiacritics(UserObject.getUserName(user)) : "";
        }
        TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j));
        if (chat != null) {
            return new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? channelSpan() : groupSpan()).append((CharSequence) " ").append((CharSequence) AndroidUtilities.removeDiacritics(chat.title));
        }
        return "";
    }

    public static CharSequence peerNameWithIcon(int i, TLRPC.Peer peer) {
        return peerNameWithIcon(i, peer, !(peer instanceof TLRPC.TL_peerUser));
    }

    public static CharSequence peerNameWithIcon(int i, TLRPC.Peer peer, boolean z) {
        TLRPC.Chat chat;
        SpannableStringBuilder spannableStringBuilder;
        SpannableStringBuilder spannableStringBuilderAppend;
        String userName;
        if (peer instanceof TLRPC.TL_peerUser) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peer.user_id));
            if (user == null) {
                return "";
            }
            if (!z) {
                return UserObject.getUserName(user);
            }
            spannableStringBuilderAppend = new SpannableStringBuilder(userSpan()).append((CharSequence) " ");
            userName = UserObject.getUserName(user);
        } else {
            if (peer instanceof TLRPC.TL_peerChat) {
                chat = MessagesController.getInstance(i).getChat(Long.valueOf(peer.chat_id));
                if (chat == null) {
                    return "";
                }
                if (!z) {
                    return chat.title;
                }
                spannableStringBuilder = new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? channelSpan() : groupSpan());
            } else {
                if (!(peer instanceof TLRPC.TL_peerChannel) || (chat = MessagesController.getInstance(i).getChat(Long.valueOf(peer.channel_id))) == null) {
                    return "";
                }
                if (!z) {
                    return chat.title;
                }
                spannableStringBuilder = new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? channelSpan() : groupSpan());
            }
            spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) " ");
            userName = chat.title;
        }
        return spannableStringBuilderAppend.append((CharSequence) userName);
    }

    public static boolean peersEqual(TLRPC.Chat chat, TLRPC.Peer peer) {
        if (chat == null && peer == null) {
            return true;
        }
        if (chat != null && peer != null) {
            return (ChatObject.isChannel(chat) && (peer instanceof TLRPC.TL_peerChannel)) ? chat.id == peer.channel_id : !ChatObject.isChannel(chat) && (peer instanceof TLRPC.TL_peerChat) && chat.id == peer.chat_id;
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.InputPeer inputPeer, TLRPC.InputPeer inputPeer2) {
        if (inputPeer == null && inputPeer2 == null) {
            return true;
        }
        if (inputPeer != null && inputPeer2 != null) {
            if ((inputPeer instanceof TLRPC.TL_inputPeerChat) && (inputPeer2 instanceof TLRPC.TL_inputPeerChat)) {
                return inputPeer.chat_id == inputPeer2.chat_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerChannel) && (inputPeer2 instanceof TLRPC.TL_inputPeerChannel)) {
                return inputPeer.channel_id == inputPeer2.channel_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerUser) && (inputPeer2 instanceof TLRPC.TL_inputPeerUser)) {
                return inputPeer.user_id == inputPeer2.user_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerSelf) && (inputPeer2 instanceof TLRPC.TL_inputPeerSelf)) {
                return true;
            }
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.InputPeer inputPeer, TLRPC.Peer peer) {
        if (inputPeer == null && peer == null) {
            return true;
        }
        if (inputPeer != null && peer != null) {
            return ((inputPeer instanceof TLRPC.TL_inputPeerChat) && (peer instanceof TLRPC.TL_peerChat)) ? inputPeer.chat_id == peer.chat_id : ((inputPeer instanceof TLRPC.TL_inputPeerChannel) && (peer instanceof TLRPC.TL_peerChannel)) ? inputPeer.channel_id == peer.channel_id : (inputPeer instanceof TLRPC.TL_inputPeerUser) && (peer instanceof TLRPC.TL_peerUser) && inputPeer.user_id == peer.user_id;
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.Peer peer, TLRPC.Peer peer2) {
        if (peer == null && peer2 == null) {
            return true;
        }
        if (peer != null && peer2 != null) {
            return ((peer instanceof TLRPC.TL_peerChat) && (peer2 instanceof TLRPC.TL_peerChat)) ? peer.chat_id == peer2.chat_id : ((peer instanceof TLRPC.TL_peerChannel) && (peer2 instanceof TLRPC.TL_peerChannel)) ? peer.channel_id == peer2.channel_id : (peer instanceof TLRPC.TL_peerUser) && (peer2 instanceof TLRPC.TL_peerUser) && peer.user_id == peer2.user_id;
        }
        return false;
    }

    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt) {
        return replaceAnimatedEmoji(charSequence, arrayList, fontMetricsInt, false);
    }

    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return replaceAnimatedEmoji(charSequence, arrayList, fontMetricsInt, z, 1.2f);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt, boolean z, float f) {
        if (charSequence == null) {
            return null;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        if (arrayList == null) {
            return spannableString;
        }
        Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannableString.getSpans(0, spannableString.length(), Emoji.EmojiSpan.class);
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.MessageEntity messageEntity = arrayList.get(i);
            if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = (TLRPC.TL_messageEntityCustomEmoji) messageEntity;
                for (int i2 = 0; i2 < emojiSpanArr.length; i2++) {
                    Emoji.EmojiSpan emojiSpan = emojiSpanArr[i2];
                    if (emojiSpan != null) {
                        int spanStart = spannableString.getSpanStart(emojiSpan);
                        int spanEnd = spannableString.getSpanEnd(emojiSpan);
                        int i3 = tL_messageEntityCustomEmoji.offset;
                        if (AndroidUtilities.intersect1d(i3, tL_messageEntityCustomEmoji.length + i3, spanStart, spanEnd)) {
                            spannableString.removeSpan(emojiSpan);
                            emojiSpanArr[i2] = null;
                        }
                    }
                }
                if (messageEntity.offset + messageEntity.length <= spannableString.length()) {
                    int i4 = messageEntity.offset;
                    AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableString.getSpans(i4, messageEntity.length + i4, AnimatedEmojiSpan.class);
                    if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                        for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                            spannableString.removeSpan(animatedEmojiSpan);
                        }
                    }
                    AnimatedEmojiSpan animatedEmojiSpan2 = tL_messageEntityCustomEmoji.document != null ? new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document, f, fontMetricsInt) : new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document_id, f, fontMetricsInt);
                    animatedEmojiSpan2.top = z;
                    int i5 = messageEntity.offset;
                    spannableString.setSpan(animatedEmojiSpan2, i5, messageEntity.length + i5, 33);
                }
            }
        }
        return spannableString;
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, TLObject tLObject) {
        String string;
        CharSequence topicSpannedName;
        String str2;
        StringBuilder sb;
        long j;
        TLObject tLObject2;
        int iIndexOf = TextUtils.indexOf(charSequence, str);
        if (iIndexOf < 0) {
            return charSequence;
        }
        if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            topicSpannedName = UserObject.getUserName(user).replace('\n', ' ');
            sb = new StringBuilder();
            sb.append("");
            j = user.id;
        } else {
            if (!(tLObject instanceof TLRPC.Chat)) {
                if (!(tLObject instanceof TLRPC.TL_game)) {
                    if (tLObject instanceof TLRPC.TL_chatInviteExported) {
                        TLRPC.TL_chatInviteExported tL_chatInviteExported = (TLRPC.TL_chatInviteExported) tLObject;
                        topicSpannedName = tL_chatInviteExported.link.replace('\n', ' ');
                        str2 = "invite";
                        tLObject2 = tL_chatInviteExported;
                    } else if (tLObject instanceof TLRPC.ForumTopic) {
                        topicSpannedName = ForumUtilities.getTopicSpannedName((TLRPC.ForumTopic) tLObject, null, false);
                        str2 = "topic";
                        tLObject2 = tLObject;
                    } else {
                        string = "0";
                        topicSpannedName = "";
                    }
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
                    URLSpanNoUnderlineBold uRLSpanNoUnderlineBold = new URLSpanNoUnderlineBold("" + str2);
                    uRLSpanNoUnderlineBold.setObject(tLObject2);
                    spannableStringBuilder.setSpan(uRLSpanNoUnderlineBold, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
                    return spannableStringBuilder;
                }
                topicSpannedName = ((TLRPC.TL_game) tLObject).title.replace('\n', ' ');
                string = "game";
                str2 = string;
                tLObject2 = null;
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
                URLSpanNoUnderlineBold uRLSpanNoUnderlineBold2 = new URLSpanNoUnderlineBold("" + str2);
                uRLSpanNoUnderlineBold2.setObject(tLObject2);
                spannableStringBuilder2.setSpan(uRLSpanNoUnderlineBold2, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
                return spannableStringBuilder2;
            }
            TLRPC.Chat chat = (TLRPC.Chat) tLObject;
            topicSpannedName = chat.title.replace('\n', ' ');
            sb = new StringBuilder();
            sb.append("");
            j = -chat.id;
        }
        sb.append(j);
        string = sb.toString();
        str2 = string;
        tLObject2 = null;
        SpannableStringBuilder spannableStringBuilder22 = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
        URLSpanNoUnderlineBold uRLSpanNoUnderlineBold22 = new URLSpanNoUnderlineBold("" + str2);
        uRLSpanNoUnderlineBold22.setObject(tLObject2);
        spannableStringBuilder22.setSpan(uRLSpanNoUnderlineBold22, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
        return spannableStringBuilder22;
    }

    public static void setUnreadFlags(TLRPC.Message message, int i) {
        message.unread = (i & 1) == 0;
        message.media_unread = (i & 2) == 0;
    }

    public static boolean shouldEncryptPhotoOrVideo(int i, TLRPC.Message message) {
        int i2;
        if ((message == null || message.media == null || !((isVoiceDocument(getDocument(message)) || isRoundVideoMessage(message)) && message.media.ttl_seconds == Integer.MAX_VALUE)) && !(getMedia(message) instanceof TLRPC.TL_messageMediaPaidMedia)) {
            return message instanceof TLRPC.TL_message_secret ? ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isVideoMessage(message)) && (i2 = message.ttl) > 0 && i2 <= 60 : ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
        }
        return true;
    }

    public static void toggleTodo(TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i, boolean z, long j, int i2) {
        int i3 = 0;
        while (i3 < tL_messageMediaToDo.completions.size()) {
            if (((TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i3)).id == i) {
                tL_messageMediaToDo.completions.remove(i3);
                i3--;
            }
            i3++;
        }
        if (z) {
            TLRPC.TodoCompletion todoCompletion = new TLRPC.TodoCompletion();
            todoCompletion.id = i;
            todoCompletion.completed_by = j;
            todoCompletion.date = i2;
            tL_messageMediaToDo.completions.add(todoCompletion);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:776:0x1052, code lost:
    
        if (isOut() != false) goto L794;
     */
    /* JADX WARN: Code restructure failed: missing block: B:793:0x10b8, code lost:
    
        if (isOut() != false) goto L794;
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x10ba, code lost:
    
        r0 = org.telegram.messenger.R.string.ActionTakeScreenshootYou;
     */
    /* JADX WARN: Code restructure failed: missing block: B:795:0x10be, code lost:
    
        r0 = org.telegram.messenger.R.string.ActionTakeScreenshoot;
     */
    /* JADX WARN: Removed duplicated region for block: B:1123:0x1707  */
    /* JADX WARN: Removed duplicated region for block: B:1131:0x1721  */
    /* JADX WARN: Removed duplicated region for block: B:1189:0x1983  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:1203:0x19d4  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:1367:0x1d19  */
    /* JADX WARN: Removed duplicated region for block: B:1381:0x1d58  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0767  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x092f  */
    /* JADX WARN: Removed duplicated region for block: B:577:0x0c3a  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0c8c  */
    /* JADX WARN: Removed duplicated region for block: B:621:0x0cd7  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x0e88  */
    /* JADX WARN: Removed duplicated region for block: B:806:0x10dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMessageText(AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2) {
        TLRPC.User user;
        TLRPC.Chat chat;
        TLRPC.Message message;
        String str;
        String str2;
        Matcher matcher;
        int i;
        char c;
        String pluralString;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        CharSequence charSequence;
        String publicUsername;
        CharSequence charSequenceReplaceStars;
        TLRPC.Chat chat2;
        CharSequence pluralSpannable;
        TLRPC.TodoItem todoItem;
        int i2;
        int i3;
        String str3;
        TLObject user2;
        int i4;
        String publicUsername2;
        SpannableString spannableString;
        String name;
        String string;
        CharSequence topicSpannedName;
        int i5;
        int i6;
        CharSequence string2;
        String string3;
        CharSequence string4;
        CharSequence charSequenceReplaceCharSequence;
        String str4;
        Object chat3;
        long j;
        int i7;
        ArrayList arrayList;
        CharSequence charSequenceReplaceWithLink;
        int i8;
        TLObject user3;
        String string5;
        TLObject user4;
        String string6;
        TLObject tLObject;
        String str5;
        int i9;
        TLObject user5;
        CharSequence spannableStringBuilder;
        int i10;
        CharSequence charSequenceReplaceWithLink2;
        int iIndexOf;
        TLObject tLObject2;
        TLObject tLObject3;
        String pluralString2;
        String firstName;
        boolean zIsUserSelf;
        int i11;
        int i12;
        int i13;
        int i14;
        AmountUtils$Amount amountUtils$Amount;
        AmountUtils$Amount amountUtils$Amount2;
        TLRPC.Chat chat4;
        TLObject tLObject4;
        TLObject tLObject5;
        TLObject tLObject6;
        String pluralString3;
        int i15;
        TLRPC.Peer peer = this.messageOwner.from_id;
        if (peer instanceof TLRPC.TL_peerUser) {
            user = getUser(abstractMap, longSparseArray, peer.user_id);
        } else {
            if (peer instanceof TLRPC.TL_peerChannel) {
                chat = getChat(abstractMap2, longSparseArray2, peer.channel_id);
                user = null;
                TLObject user6 = user == null ? user : chat;
                this.drawServiceWithDefaultTypeface = false;
                this.channelJoined = false;
                message = this.messageOwner;
                if (message instanceof TLRPC.TL_messageService) {
                    str = "";
                    TLRPC.Chat chat5 = chat;
                    this.isRestrictedMessage = false;
                    String restrictionReason = MessagesController.getInstance(this.currentAccount).getRestrictionReason(this.messageOwner.restriction_reason);
                    if (!TextUtils.isEmpty(restrictionReason)) {
                        this.messageText = restrictionReason;
                        this.isRestrictedMessage = true;
                    } else if (isMediaEmpty() || isSponsored()) {
                        String str6 = this.messageOwner.message;
                        charSequenceReplaceStars = str6;
                        if (str6 != null) {
                            try {
                                if (str6.length() > 200) {
                                    matcher = AndroidUtilities.BAD_CHARS_MESSAGE_LONG_PATTERN.matcher(this.messageOwner.message);
                                    str2 = "\u200c";
                                } else {
                                    str2 = "\u200c";
                                    matcher = AndroidUtilities.BAD_CHARS_MESSAGE_PATTERN.matcher(this.messageOwner.message);
                                }
                                this.messageText = matcher.replaceAll(str2);
                            } catch (Throwable unused) {
                            }
                        }
                        charSequence = charSequenceReplaceStars;
                        this.messageText = charSequence;
                    } else {
                        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveaway) {
                            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
                            if (messageFwdHeader != null) {
                                TLRPC.Peer peer2 = messageFwdHeader.from_id;
                                boolean zIsChannelAndNotMegaGroup = peer2 instanceof TLRPC.TL_peerChannel ? ChatObject.isChannelAndNotMegaGroup(getChat(abstractMap2, longSparseArray2, peer2.channel_id)) : ChatObject.isChannelAndNotMegaGroup(chat5);
                                i = zIsChannelAndNotMegaGroup ? R.string.BoostingGiveawayChannelStarted : R.string.BoostingGiveawayGroupStarted;
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveawayResults) {
                            i = R.string.BoostingGiveawayResults;
                        } else {
                            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaStory) {
                                if (getMedia(this.messageOwner).via_mention) {
                                    TLRPC.User user7 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getMedia(this.messageOwner).user_id));
                                    String str7 = (user7 == null || (publicUsername = UserObject.getPublicUsername(user7)) == null) ? null : MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + getMedia(this.messageOwner).id;
                                    if (str7 != null) {
                                        SpannableString spannableString2 = new SpannableString(str7);
                                        this.messageText = spannableString2;
                                        spannableString2.setSpan(new URLSpanReplacement("https://" + str7, new TextStyleSpan.TextStyleRun()), 0, this.messageText.length(), 33);
                                    } else {
                                        charSequence = str;
                                        this.messageText = charSequence;
                                    }
                                } else {
                                    i = R.string.ForwardedStory;
                                }
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
                                charSequenceReplaceStars = getDiceEmoji();
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll) {
                                i = ((TLRPC.TL_messageMediaPoll) getMedia(this.messageOwner)).poll.quiz ? R.string.QuizPoll : R.string.Poll;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo) {
                                TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) getMedia(this.messageOwner);
                                TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
                                if (todoList == null || (tL_textWithEntities = todoList.title) == null || tL_textWithEntities.text.isEmpty()) {
                                    i = R.string.MessageTodo;
                                } else {
                                    charSequenceReplaceStars = LocaleController.formatSpannable(R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo.todo.title, isOutOwner()));
                                }
                            } else if (isVoiceOnce()) {
                                i = R.string.AttachOnceAudio;
                            } else if (isRoundOnce()) {
                                i = R.string.AttachOnceRound;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPaidMedia) {
                                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) getMedia(this.messageOwner);
                                int size = tL_messageMediaPaidMedia.extended_media.size();
                                boolean z = false;
                                for (int i16 = 0; i16 < size; i16++) {
                                    TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i16);
                                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                        TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                                        z = (messageMedia instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia.document);
                                    } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                                        if ((((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0) {
                                        }
                                    }
                                    if (z) {
                                        break;
                                    }
                                }
                                if (size == 1) {
                                    pluralString = LocaleController.getString(z ? R.string.AttachVideo : R.string.AttachPhoto);
                                    c = 0;
                                } else {
                                    c = 0;
                                    pluralString = LocaleController.formatPluralString(z ? "Media" : "Photos", size, new Object[0]);
                                }
                                this.messageText = pluralString;
                                int i17 = R.string.AttachPaidMedia;
                                Object[] objArr = new Object[1];
                                objArr[c] = pluralString;
                                charSequenceReplaceStars = StarsIntroActivity.replaceStars(LocaleController.formatString(i17, objArr));
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                                i = (getMedia(this.messageOwner).ttl_seconds == 0 || (this.messageOwner instanceof TLRPC.TL_message_secret)) ? getGroupId() != 0 ? R.string.Album : R.string.AttachPhoto : R.string.AttachDestructingPhoto;
                            } else if (isVideo() || ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && (((getDocument() instanceof TLRPC.TL_documentEmpty) || getDocument() == null) && getMedia(this.messageOwner).ttl_seconds != 0))) {
                                if (getMedia(this.messageOwner).ttl_seconds != 0) {
                                    TLRPC.Message message2 = this.messageOwner;
                                    i = !(message2 instanceof TLRPC.TL_message_secret) ? getMedia(message2).voice ? R.string.AttachVoiceExpired : getMedia(this.messageOwner).round ? R.string.AttachRoundExpired : R.string.AttachDestructingVideo : R.string.AttachVideo;
                                }
                            } else if (isVoice()) {
                                i = R.string.AttachAudio;
                            } else if (isRoundVideo()) {
                                i = R.string.AttachRound;
                            } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaVenue)) {
                                i = R.string.AttachLocation;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeoLive) {
                                i = R.string.AttachLiveLocation;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) {
                                this.messageText = LocaleController.getString(R.string.AttachContact);
                                if (!TextUtils.isEmpty(getMedia(this.messageOwner).vcard)) {
                                    this.vCardData = VCardData.parse(getMedia(this.messageOwner).vcard);
                                }
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                                charSequenceReplaceStars = this.messageOwner.message;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) {
                                charSequenceReplaceStars = getMedia(this.messageOwner).description;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported) {
                                i = R.string.UnsupportedMedia2;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                                if (isSticker() || isAnimatedStickerDocument(getDocument(), true)) {
                                    String stickerChar = getStickerChar();
                                    if (stickerChar == null || stickerChar.length() <= 0) {
                                        i = R.string.AttachSticker;
                                    } else {
                                        charSequenceReplaceStars = String.format("%s %s", stickerChar, LocaleController.getString(R.string.AttachSticker));
                                    }
                                } else if (isMusic()) {
                                    i = R.string.AttachMusic;
                                } else if (isGif()) {
                                    i = R.string.AttachGif;
                                } else {
                                    CharSequence documentFileName = FileLoader.getDocumentFileName(getDocument());
                                    boolean zIsEmpty = TextUtils.isEmpty(documentFileName);
                                    charSequenceReplaceStars = documentFileName;
                                    if (zIsEmpty) {
                                        i = R.string.AttachDocument;
                                    }
                                }
                            }
                            charSequence = charSequenceReplaceStars;
                            this.messageText = charSequence;
                        }
                        charSequenceReplaceStars = LocaleController.getString(i);
                        charSequence = charSequenceReplaceStars;
                        this.messageText = charSequence;
                    }
                } else {
                    TLRPC.MessageAction messageAction = message.action;
                    if (messageAction != null) {
                        String str8 = "";
                        if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                            this.contentType = 1;
                            this.type = 10;
                            TLRPC.TL_messageActionSetSameChatWallPaper tL_messageActionSetSameChatWallPaper = (TLRPC.TL_messageActionSetSameChatWallPaper) messageAction;
                            TLRPC.User user8 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            ArrayList<TLRPC.PhotoSize> arrayList2 = new ArrayList<>();
                            this.photoThumbs = arrayList2;
                            TLRPC.Document document = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            if (document != null) {
                                arrayList2.addAll(document.thumbs);
                                this.photoThumbsObject = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            }
                            if (user8 != null) {
                                string4 = user8.id == UserConfig.getInstance(this.currentAccount).clientUserId ? LocaleController.formatString(R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]) : LocaleController.formatString(R.string.ActionSetSameWallpaperForThisChat, user8.first_name);
                            } else if (chat != null) {
                                int i18 = ChatObject.isChannelAndNotMegaGroup(chat) ? R.string.ActionSetWallpaperForThisChannel : R.string.ActionSetWallpaperForThisGroup;
                                string4 = LocaleController.getString(i18);
                            } else {
                                if (user != null) {
                                    string4 = LocaleController.formatString(R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
                                }
                                str = str8;
                            }
                            charSequence = string4;
                            str = str8;
                        } else if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                            this.contentType = 1;
                            TLRPC.TL_messageActionSetChatWallPaper tL_messageActionSetChatWallPaper = (TLRPC.TL_messageActionSetChatWallPaper) messageAction;
                            this.type = 22;
                            ArrayList<TLRPC.PhotoSize> arrayList3 = new ArrayList<>();
                            this.photoThumbs = arrayList3;
                            TLRPC.Document document2 = tL_messageActionSetChatWallPaper.wallpaper.document;
                            if (document2 != null) {
                                arrayList3.addAll(document2.thumbs);
                                this.photoThumbsObject = tL_messageActionSetChatWallPaper.wallpaper.document;
                            }
                            TLRPC.User user9 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            TLRPC.User user10 = getUser(abstractMap, longSparseArray, getDialogId());
                            if (user9 != null) {
                                if (user9.id != UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    SpannableString spannableString3 = new SpannableString(UserObject.getFirstName(user9));
                                    spannableString3.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString3.length(), 33);
                                    if (tL_messageActionSetChatWallPaper.same) {
                                        this.type = 10;
                                        i15 = R.string.ActionSetSameWallpaperForThisChat;
                                    } else {
                                        i15 = tL_messageActionSetChatWallPaper.for_both ? R.string.ActionSetWallpaperForThisChatBoth : R.string.ActionSetWallpaperForThisChat;
                                    }
                                    this.messageText = LocaleController.getString(i15);
                                    string4 = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString3);
                                } else if (tL_messageActionSetChatWallPaper.same) {
                                    this.type = 10;
                                    string4 = LocaleController.formatString(R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]);
                                } else if (!tL_messageActionSetChatWallPaper.for_both || user10 == null) {
                                    i = R.string.ActionSetWallpaperForThisChatSelf;
                                    str = str8;
                                    charSequenceReplaceStars = LocaleController.getString(i);
                                    charSequence = charSequenceReplaceStars;
                                } else {
                                    this.messageText = LocaleController.getString(R.string.ActionSetWallpaperForThisChatSelfBoth);
                                    SpannableString spannableString4 = new SpannableString(UserObject.getFirstName(user10));
                                    spannableString4.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString4.length(), 33);
                                    string4 = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString4);
                                }
                            } else if (chat != null) {
                                if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                                }
                                string4 = LocaleController.getString(i18);
                            } else {
                                if (user != null) {
                                    string4 = LocaleController.formatString(R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
                                }
                                str = str8;
                            }
                            charSequence = string4;
                            str = str8;
                        } else {
                            if (messageAction instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                                TLRPC.TL_messageActionGroupCallScheduled tL_messageActionGroupCallScheduled = (TLRPC.TL_messageActionGroupCallScheduled) messageAction;
                                string4 = ((message.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) ? LocaleController.formatString(R.string.ActionGroupCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false)) : LocaleController.formatString(R.string.ActionChannelCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false));
                            } else {
                                String str9 = "un1";
                                if (messageAction instanceof TLRPC.TL_messageActionGroupCall) {
                                    int i19 = messageAction.duration;
                                    if (i19 != 0) {
                                        int i20 = i19 / RemoteMessageConst.DEFAULT_TTL;
                                        if (i20 > 0) {
                                            pluralString3 = LocaleController.formatPluralString("Days", i20, new Object[0]);
                                        } else {
                                            int i21 = i19 / 3600;
                                            if (i21 > 0) {
                                                pluralString3 = LocaleController.formatPluralString("Hours", i21, new Object[0]);
                                            } else {
                                                int i22 = i19 / 60;
                                                pluralString3 = i22 > 0 ? LocaleController.formatPluralString("Minutes", i22, new Object[0]) : LocaleController.formatPluralString("Seconds", i19, new Object[0]);
                                            }
                                        }
                                        if (!(this.messageOwner.peer_id instanceof TLRPC.TL_peerChat) && !isSupergroup()) {
                                            string4 = LocaleController.formatString(R.string.ActionChannelCallEnded, pluralString3);
                                        } else if (isOut()) {
                                            string4 = LocaleController.formatString(R.string.ActionGroupCallEndedByYou, pluralString3);
                                        } else {
                                            pluralSpannable = LocaleController.formatString(R.string.ActionGroupCallEndedBy, pluralString3);
                                            str = str8;
                                            user2 = user6;
                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                            charSequence = charSequenceReplaceStars;
                                        }
                                    } else {
                                        if (!(message.peer_id instanceof TLRPC.TL_peerChat) && !isSupergroup()) {
                                            i = R.string.ActionChannelCallJustStarted;
                                        } else if (isOut()) {
                                            i = R.string.ActionGroupCallStartedByYou;
                                        } else {
                                            i2 = R.string.ActionGroupCallStarted;
                                            str = str8;
                                            pluralSpannable = LocaleController.getString(i2);
                                            user2 = user6;
                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                            charSequence = charSequenceReplaceStars;
                                        }
                                        str = str8;
                                        charSequenceReplaceStars = LocaleController.getString(i);
                                        charSequence = charSequenceReplaceStars;
                                    }
                                } else {
                                    String str10 = "un2";
                                    if (messageAction instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                                        long jLongValue = messageAction.user_id;
                                        if (jLongValue == 0 && messageAction.users.size() == 1) {
                                            jLongValue = ((Long) this.messageOwner.action.users.get(0)).longValue();
                                        }
                                        if (jLongValue != 0) {
                                            TLObject user11 = getUser(abstractMap, longSparseArray, jLongValue);
                                            if (isOut()) {
                                                i14 = R.string.ActionGroupCallYouInvited;
                                                tLObject6 = user11;
                                                pluralSpannable = LocaleController.getString(i14);
                                                str9 = "un2";
                                                tLObject4 = tLObject6;
                                                str = str8;
                                                user2 = tLObject4;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            } else if (jLongValue == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                i2 = R.string.ActionGroupCallInvitedYou;
                                                str = str8;
                                                pluralSpannable = LocaleController.getString(i2);
                                                user2 = user6;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            } else {
                                                i13 = R.string.ActionGroupCallInvited;
                                                tLObject5 = user11;
                                                pluralSpannable = replaceWithLink(LocaleController.getString(i13), "un2", tLObject5);
                                                this.messageText = pluralSpannable;
                                                str = str8;
                                                user2 = user6;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            }
                                        } else if (isOut()) {
                                            i12 = R.string.ActionGroupCallYouInvited;
                                            str = str8;
                                            charSequenceReplaceStars = replaceWithLink(LocaleController.getString(i12), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                            charSequence = charSequenceReplaceStars;
                                        } else {
                                            str = str8;
                                            i11 = R.string.ActionGroupCallInvited;
                                            pluralSpannable = replaceWithLink(LocaleController.getString(i11), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                            this.messageText = pluralSpannable;
                                            user2 = user6;
                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                            charSequence = charSequenceReplaceStars;
                                        }
                                    } else if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                                        TLRPC.TL_messageActionGeoProximityReached tL_messageActionGeoProximityReached = (TLRPC.TL_messageActionGeoProximityReached) messageAction;
                                        long peerId = getPeerId(tL_messageActionGeoProximityReached.from_id);
                                        TLObject user12 = peerId > 0 ? getUser(abstractMap, longSparseArray, peerId) : getChat(abstractMap2, longSparseArray2, -peerId);
                                        long peerId2 = getPeerId(tL_messageActionGeoProximityReached.to_id);
                                        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                        if (peerId2 == clientUserId) {
                                            pluralSpannable = LocaleController.formatString(R.string.ActionUserWithinRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2));
                                        } else {
                                            TLObject user13 = peerId2 > 0 ? getUser(abstractMap, longSparseArray, peerId2) : getChat(abstractMap2, longSparseArray2, -peerId2);
                                            if (peerId == clientUserId) {
                                                tLObject4 = user13;
                                                pluralSpannable = LocaleController.formatString(R.string.ActionUserWithinYouRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2));
                                                str = str8;
                                                user2 = tLObject4;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            } else {
                                                pluralSpannable = replaceWithLink(LocaleController.formatString(R.string.ActionUserWithinOtherRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2)), "un2", user13);
                                                this.messageText = pluralSpannable;
                                            }
                                        }
                                        tLObject4 = user12;
                                        str = str8;
                                        user2 = tLObject4;
                                        charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                        charSequence = charSequenceReplaceStars;
                                    } else if (messageAction instanceof TLRPC.TL_messageActionCustomAction) {
                                        string4 = messageAction.message;
                                    } else if (messageAction instanceof TLRPC.TL_messageActionChatCreate) {
                                        if (isOut()) {
                                            i = R.string.ActionYouCreateGroup;
                                            str = str8;
                                            charSequenceReplaceStars = LocaleController.getString(i);
                                            charSequence = charSequenceReplaceStars;
                                        } else {
                                            i2 = R.string.ActionCreateGroup;
                                            str = str8;
                                            pluralSpannable = LocaleController.getString(i2);
                                            user2 = user6;
                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                            charSequence = charSequenceReplaceStars;
                                        }
                                    } else if (!(messageAction instanceof TLRPC.TL_messageActionChatDeleteUser)) {
                                        TLRPC.Chat chat6 = chat;
                                        if (messageAction instanceof TLRPC.TL_messageActionPaymentRefunded) {
                                            TLRPC.TL_messageActionPaymentRefunded tL_messageActionPaymentRefunded = (TLRPC.TL_messageActionPaymentRefunded) messageAction;
                                            long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionPaymentRefunded.peer);
                                            charSequenceReplaceWithLink = replaceWithLink(LocaleController.formatString(R.string.ActionRefunded, tL_messageActionPaymentRefunded.currency + " " + LocaleController.formatNumber(tL_messageActionPaymentRefunded.total_amount, ',')), "un1", peerDialogId >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId) : getChat(abstractMap2, longSparseArray2, -peerDialogId));
                                        } else {
                                            String str11 = ", ";
                                            if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
                                                String monoForumTitle = ForumUtilities.getMonoForumTitle(this.currentAccount, DialogObject.getPeerDialogId(this.messageOwner.peer_id), true);
                                                if (monoForumTitle == null) {
                                                    TLRPC.Chat chat7 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id));
                                                    if (chat7 != null) {
                                                        long j2 = chat7.linked_monoforum_id;
                                                        if (j2 != 0 && (chat4 = getChat(abstractMap2, longSparseArray2, j2)) != null) {
                                                            chat7 = chat4;
                                                        }
                                                    }
                                                    monoForumTitle = DialogObject.getDialogTitle(chat7);
                                                }
                                                String name2 = DialogObject.getName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id)));
                                                MessageSuggestionParams messageSuggestionParamsObtainSuggestionOfferFromReply = obtainSuggestionOfferFromReply();
                                                TLRPC.MessageAction messageAction2 = this.messageOwner.action;
                                                if (messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostRefund) {
                                                    boolean z2 = ((TLRPC.TL_messageActionSuggestedPostRefund) messageAction2).payer_initiated;
                                                    string4 = (messageSuggestionParamsObtainSuggestionOfferFromReply == null || (amountUtils$Amount2 = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) == null) ? LocaleController.formatString(z2 ? R.string.SuggestedOfferRefundByUserAmountUnknown : R.string.SuggestedOfferRefundByAdminAmountUnknown, name2, monoForumTitle) : StarsIntroActivity.replaceStars(amountUtils$Amount2.currency == AmountUtils$Currency.TON, LocaleController.formatString(z2 ? R.string.SuggestedOfferRefundByUserAmountF : R.string.SuggestedOfferRefundByAdminAmountF, name2, monoForumTitle, amountUtils$Amount2.asDecimalString()));
                                                } else {
                                                    if (messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostSuccess) {
                                                        string4 = (messageSuggestionParamsObtainSuggestionOfferFromReply == null || (amountUtils$Amount = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) == null) ? LocaleController.formatString(R.string.SuggestedOfferCompleteAmountUnknown, monoForumTitle) : StarsIntroActivity.replaceStars(amountUtils$Amount.currency == AmountUtils$Currency.TON, LocaleController.formatString(R.string.SuggestedOfferCompleteAmountF, monoForumTitle, amountUtils$Amount.asDecimalString()));
                                                    }
                                                    str = str8;
                                                }
                                            } else {
                                                TLRPC.Message message3 = this.messageOwner;
                                                TLRPC.MessageAction messageAction3 = message3.action;
                                                if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                                                    long jLongValue2 = messageAction3.user_id;
                                                    if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                                                        jLongValue2 = ((Long) this.messageOwner.action.users.get(0)).longValue();
                                                    }
                                                    if (jLongValue2 != 0) {
                                                        TLObject user14 = getUser(abstractMap, longSparseArray, jLongValue2);
                                                        long j3 = this.messageOwner.peer_id.channel_id;
                                                        TLRPC.Chat chat8 = j3 != 0 ? getChat(abstractMap2, longSparseArray2, j3) : null;
                                                        TLRPC.Peer peer3 = this.messageOwner.from_id;
                                                        if (peer3 != null && jLongValue2 == peer3.user_id) {
                                                            if (ChatObject.isChannel(chat8) && !chat8.megagroup) {
                                                                this.channelJoined = true;
                                                                i = R.string.ChannelJoined;
                                                            } else if (this.messageOwner.peer_id.channel_id != 0) {
                                                                if (jLongValue2 == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                                    i = R.string.ChannelMegaJoined;
                                                                } else {
                                                                    i2 = R.string.ActionAddUserSelfMega;
                                                                }
                                                            } else if (isOut()) {
                                                                i = R.string.ActionAddUserSelfYou;
                                                            } else {
                                                                i2 = R.string.ActionAddUserSelf;
                                                            }
                                                            str = str8;
                                                            charSequenceReplaceStars = LocaleController.getString(i);
                                                            charSequence = charSequenceReplaceStars;
                                                        } else if (isOut()) {
                                                            i14 = R.string.ActionYouAddUser;
                                                            tLObject6 = user14;
                                                            pluralSpannable = LocaleController.getString(i14);
                                                            str9 = "un2";
                                                            tLObject4 = tLObject6;
                                                            str = str8;
                                                            user2 = tLObject4;
                                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                            charSequence = charSequenceReplaceStars;
                                                        } else if (jLongValue2 == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                            i2 = this.messageOwner.peer_id.channel_id != 0 ? (chat8 == null || !chat8.megagroup) ? R.string.ChannelAddedBy : R.string.MegaAddedBy : R.string.ActionAddUserYou;
                                                        } else {
                                                            i13 = R.string.ActionAddUser;
                                                            tLObject5 = user14;
                                                            pluralSpannable = replaceWithLink(LocaleController.getString(i13), "un2", tLObject5);
                                                            this.messageText = pluralSpannable;
                                                            str = str8;
                                                            user2 = user6;
                                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                            charSequence = charSequenceReplaceStars;
                                                        }
                                                        str = str8;
                                                        pluralSpannable = LocaleController.getString(i2);
                                                        user2 = user6;
                                                        charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                        charSequence = charSequenceReplaceStars;
                                                    } else if (isOut()) {
                                                        i12 = R.string.ActionYouAddUser;
                                                        str = str8;
                                                        charSequenceReplaceStars = replaceWithLink(LocaleController.getString(i12), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                                        charSequence = charSequenceReplaceStars;
                                                    } else {
                                                        str = str8;
                                                        i11 = R.string.ActionAddUser;
                                                        pluralSpannable = replaceWithLink(LocaleController.getString(i11), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                                        this.messageText = pluralSpannable;
                                                        user2 = user6;
                                                        charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                        charSequence = charSequenceReplaceStars;
                                                    }
                                                } else {
                                                    str = str8;
                                                    if (!(messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink)) {
                                                        if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayLaunch) {
                                                            TLRPC.TL_messageActionGiveawayLaunch tL_messageActionGiveawayLaunch = (TLRPC.TL_messageActionGiveawayLaunch) messageAction3;
                                                            TLRPC.Peer peer4 = message3.peer_id;
                                                            if (peer4 != null) {
                                                                long j4 = peer4.channel_id;
                                                                TLRPC.Chat chat9 = j4 != 0 ? getChat(abstractMap2, longSparseArray2, j4) : null;
                                                                boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(chat9);
                                                                charSequenceReplaceStars = (tL_messageActionGiveawayLaunch.flags & 1) != 0 ? LocaleController.formatPluralStringComma(zIsChannelAndNotMegaGroup2 ? "BoostingStarsGiveawayJustStarted" : "BoostingStarsGiveawayJustStartedGroup", (int) tL_messageActionGiveawayLaunch.stars, chat9 != null ? chat9.title : str) : LocaleController.formatString(zIsChannelAndNotMegaGroup2 ? R.string.BoostingGiveawayJustStarted : R.string.BoostingGiveawayJustStartedGroup, chat9 != null ? chat9.title : str);
                                                            }
                                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionBoostApply) {
                                                            TLRPC.Peer peer5 = message3.peer_id;
                                                            if (peer5 != null) {
                                                                long j5 = peer5.channel_id;
                                                                TLRPC.Chat chat10 = j5 != 0 ? getChat(abstractMap2, longSparseArray2, j5) : null;
                                                                boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat10);
                                                                TLRPC.TL_messageActionBoostApply tL_messageActionBoostApply = (TLRPC.TL_messageActionBoostApply) this.messageOwner.action;
                                                                if (user6 instanceof TLRPC.User) {
                                                                    TLRPC.User user15 = (TLRPC.User) user6;
                                                                    zIsUserSelf = UserObject.isUserSelf(user15);
                                                                    firstName = UserObject.getFirstName(user15);
                                                                } else {
                                                                    firstName = user6 instanceof TLRPC.Chat ? ((TLRPC.Chat) user6).title : str;
                                                                    zIsUserSelf = false;
                                                                }
                                                                if (zIsUserSelf) {
                                                                    int i23 = tL_messageActionBoostApply.boosts;
                                                                    if (i23 <= 1) {
                                                                        i = zIsChannelAndNotMegaGroup3 ? R.string.BoostingBoostsChannelByYouServiceMsg : R.string.BoostingBoostsGroupByYouServiceMsg;
                                                                        charSequenceReplaceStars = LocaleController.getString(i);
                                                                    } else {
                                                                        charSequenceReplaceStars = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup3 ? "BoostingBoostsChannelByYouServiceMsgCount" : "BoostingBoostsGroupByYouServiceMsgCount", i23, new Object[0]);
                                                                    }
                                                                } else {
                                                                    int i24 = tL_messageActionBoostApply.boosts;
                                                                    charSequenceReplaceStars = i24 <= 1 ? LocaleController.formatString(zIsChannelAndNotMegaGroup3 ? R.string.BoostingBoostsChannelByUserServiceMsg : R.string.BoostingBoostsGroupByUserServiceMsg, firstName) : LocaleController.formatPluralString(zIsChannelAndNotMegaGroup3 ? "BoostingBoostsChannelByUserServiceMsgCount" : "BoostingBoostsGroupByUserServiceMsgCount", i24, firstName);
                                                                }
                                                            }
                                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayResults) {
                                                            TLRPC.Peer peer6 = message3.peer_id;
                                                            if (peer6 != null) {
                                                                long j6 = peer6.channel_id;
                                                                TLRPC.Chat chat11 = j6 != 0 ? getChat(abstractMap2, longSparseArray2, j6) : null;
                                                                boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat11);
                                                                TLRPC.TL_messageActionGiveawayResults tL_messageActionGiveawayResults = (TLRPC.TL_messageActionGiveawayResults) this.messageOwner.action;
                                                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                                                if (tL_messageActionGiveawayResults.stars) {
                                                                    spannableStringBuilder2.append((CharSequence) LocaleController.formatPluralStringComma("BoostingStarsGiveawayServiceWinnersSelected", tL_messageActionGiveawayResults.winners_count));
                                                                    charSequence = spannableStringBuilder2;
                                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                                        spannableStringBuilder2.append((CharSequence) "\n");
                                                                        pluralString2 = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingStarsGiveawayServiceUndistributed" : "BoostingStarsGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]);
                                                                        spannableStringBuilder2.append((CharSequence) pluralString2);
                                                                        charSequence = spannableStringBuilder2;
                                                                    }
                                                                } else {
                                                                    spannableStringBuilder2.append((CharSequence) LocaleController.formatPluralString("BoostingGiveawayServiceWinnersSelected", tL_messageActionGiveawayResults.winners_count, new Object[0]));
                                                                    charSequence = spannableStringBuilder2;
                                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                                        spannableStringBuilder2.append((CharSequence) "\n");
                                                                        pluralString2 = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingGiveawayServiceUndistributed" : "BoostingGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]);
                                                                        spannableStringBuilder2.append((CharSequence) pluralString2);
                                                                        charSequence = spannableStringBuilder2;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            if (messageAction3 instanceof TLRPC.TL_messageActionPrizeStars) {
                                                                TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars = (TLRPC.TL_messageActionPrizeStars) messageAction3;
                                                                TLObject chat12 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(tL_messageActionPrizeStars.boost_peer));
                                                                i9 = (int) tL_messageActionPrizeStars.stars;
                                                                str5 = "ActionStarGiveawayPrize";
                                                                tLObject3 = chat12;
                                                            } else if (messageAction3 instanceof TLRPC.TL_messageActionStarGift) {
                                                                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction3;
                                                                TL_stars$StarGift tL_stars$StarGift = tL_messageActionStarGift.gift;
                                                                int i25 = (tL_stars$StarGift != null ? (int) tL_stars$StarGift.stars : 0) + ((int) tL_messageActionStarGift.upgrade_stars);
                                                                TLRPC.Peer peer7 = tL_messageActionStarGift.peer;
                                                                boolean z3 = peer7 != null && DialogObject.getPeerDialogId(peer7) < 0;
                                                                TLRPC.User user16 = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                                                TLRPC.Peer peer8 = tL_messageActionStarGift.from_id;
                                                                if (peer8 != null) {
                                                                    long peerDialogId2 = DialogObject.getPeerDialogId(peer8);
                                                                    user6 = peerDialogId2 >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId2) : getChat(abstractMap2, longSparseArray2, -peerDialogId2);
                                                                }
                                                                TLRPC.Peer peer9 = tL_messageActionStarGift.peer;
                                                                if (peer9 != null) {
                                                                    long peerDialogId3 = DialogObject.getPeerDialogId(peer9);
                                                                    user5 = peerDialogId3 >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId3) : getChat(abstractMap2, longSparseArray2, -peerDialogId3);
                                                                } else {
                                                                    user5 = null;
                                                                }
                                                                if (UserObject.isService(getDialogId()) && tL_messageActionStarGift.from_id == null) {
                                                                    i10 = R.string.ActionGiftSomeone;
                                                                } else if (z3) {
                                                                    SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionGiftChannel", i25));
                                                                    this.messageText = spannableStringBuilderReplaceTags;
                                                                    CharSequence charSequenceReplaceWithLink3 = replaceWithLink(spannableStringBuilderReplaceTags, "un1", user6);
                                                                    this.messageText = charSequenceReplaceWithLink3;
                                                                    charSequenceReplaceWithLink2 = replaceWithLink(charSequenceReplaceWithLink3, "un2", user5);
                                                                    this.messageText = charSequenceReplaceWithLink2;
                                                                    spannableStringBuilder = LocaleController.getString(R.string.ActionStarGift);
                                                                    this.messageTextShort = spannableStringBuilder;
                                                                    iIndexOf = this.messageText.toString().indexOf("un2");
                                                                    if (iIndexOf != -1) {
                                                                        charSequenceReplaceStars = SpannableStringBuilder.valueOf(this.messageText).replace(iIndexOf, iIndexOf + 3, (CharSequence) LocaleController.formatPluralStringComma("Gift2StarsCount", i25));
                                                                    }
                                                                } else if (UserObject.isUserSelf(user16)) {
                                                                    i10 = R.string.ActionGiftSelf;
                                                                } else {
                                                                    boolean z4 = user6 instanceof TLRPC.User;
                                                                    if (z4 && ((TLRPC.User) user6).self && !tL_messageActionStarGift.forceIn) {
                                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftOutbound)), "un1", user16);
                                                                        TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                                                                        if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                                                            spannableStringBuilder = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                                            addEntitiesToText(spannableStringBuilder, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                                        }
                                                                        spannableStringBuilder = LocaleController.getString(R.string.ActionStarGift);
                                                                    } else if (z4 && UserObject.isService(((TLRPC.User) user6).id)) {
                                                                        this.messageText = TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(R.string.StarsTransactionUnknown)});
                                                                        iIndexOf = this.messageText.toString().indexOf("un2");
                                                                        if (iIndexOf != -1) {
                                                                        }
                                                                    } else {
                                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftInbound)), "un1", user6);
                                                                        TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageActionStarGift.message;
                                                                        if (tL_textWithEntities3 != null && !TextUtils.isEmpty(tL_textWithEntities3.text)) {
                                                                            spannableStringBuilder = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                                            addEntitiesToText(spannableStringBuilder, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                                        }
                                                                        spannableStringBuilder = LocaleController.getString(R.string.ActionStarGift);
                                                                    }
                                                                    this.messageTextShort = spannableStringBuilder;
                                                                    iIndexOf = this.messageText.toString().indexOf("un2");
                                                                    if (iIndexOf != -1) {
                                                                    }
                                                                }
                                                                charSequenceReplaceWithLink2 = AndroidUtilities.replaceTags(LocaleController.getString(i10));
                                                                this.messageText = charSequenceReplaceWithLink2;
                                                                spannableStringBuilder = LocaleController.getString(R.string.ActionStarGift);
                                                                this.messageTextShort = spannableStringBuilder;
                                                                iIndexOf = this.messageText.toString().indexOf("un2");
                                                                if (iIndexOf != -1) {
                                                                }
                                                            } else if (messageAction3 instanceof TLRPC.TL_messageActionStarGiftUnique) {
                                                                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction3;
                                                                TLRPC.User user17 = getUser(abstractMap, longSparseArray, getDialogId());
                                                                if (tL_messageActionStarGiftUnique.resale_stars > 0) {
                                                                    long dialogId = getDialogId();
                                                                    TLRPC.Peer peer10 = tL_messageActionStarGiftUnique.from_id;
                                                                    if (peer10 != null) {
                                                                        dialogId = DialogObject.getPeerDialogId(peer10);
                                                                    }
                                                                    TLObject user18 = dialogId >= 0 ? getUser(abstractMap, longSparseArray, dialogId) : getChat(abstractMap2, longSparseArray2, -dialogId);
                                                                    TLRPC.Peer peer11 = tL_messageActionStarGiftUnique.peer;
                                                                    if (peer11 != null) {
                                                                        long peerDialogId4 = DialogObject.getPeerDialogId(peer11);
                                                                        user3 = peerDialogId4 >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId4) : getChat(abstractMap2, longSparseArray2, -peerDialogId4);
                                                                        string5 = LocaleController.formatPluralStringComma("ActionUniqueGiftResaleService", (int) tL_messageActionStarGiftUnique.resale_stars);
                                                                        tLObject = user18;
                                                                    } else {
                                                                        str5 = isOutOwner() ? "ActionUniqueGiftResaleOutbound" : "ActionUniqueGiftResaleInbound";
                                                                        i9 = (int) tL_messageActionStarGiftUnique.resale_stars;
                                                                        tLObject3 = user18;
                                                                    }
                                                                } else {
                                                                    if (tL_messageActionStarGiftUnique.upgrade) {
                                                                        TLRPC.Peer peer12 = tL_messageActionStarGiftUnique.peer;
                                                                        if (peer12 != null) {
                                                                            long peerDialogId5 = DialogObject.getPeerDialogId(peer12);
                                                                            user4 = peerDialogId5 >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId5) : getChat(abstractMap2, longSparseArray2, -peerDialogId5);
                                                                            i8 = R.string.ActionUniqueGiftUpgradeInboundChannel;
                                                                        } else if (UserObject.isUserSelf(user17)) {
                                                                            charSequenceReplaceStars = AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionUniqueGiftUpgradeSelf));
                                                                        } else if (isOutOwner()) {
                                                                            i8 = R.string.ActionUniqueGiftUpgradeOutbound;
                                                                            user4 = user17;
                                                                        } else {
                                                                            i8 = R.string.ActionUniqueGiftUpgradeInbound;
                                                                            user4 = user17;
                                                                        }
                                                                    } else {
                                                                        long dialogId2 = getDialogId();
                                                                        TLRPC.Peer peer13 = tL_messageActionStarGiftUnique.from_id;
                                                                        if (peer13 != null) {
                                                                            dialogId2 = DialogObject.getPeerDialogId(peer13);
                                                                        }
                                                                        TLObject user19 = dialogId2 >= 0 ? getUser(abstractMap, longSparseArray, dialogId2) : getChat(abstractMap2, longSparseArray2, -dialogId2);
                                                                        TLRPC.Peer peer14 = tL_messageActionStarGiftUnique.peer;
                                                                        if (peer14 != null) {
                                                                            long peerDialogId6 = DialogObject.getPeerDialogId(peer14);
                                                                            user3 = peerDialogId6 >= 0 ? getUser(abstractMap, longSparseArray, peerDialogId6) : getChat(abstractMap2, longSparseArray2, -peerDialogId6);
                                                                            string5 = LocaleController.getString(R.string.ActionUniqueGiftTransferService);
                                                                            tLObject = user19;
                                                                        } else if (isOutOwner()) {
                                                                            i8 = R.string.ActionUniqueGiftTransferOutbound;
                                                                            user4 = user19;
                                                                        } else {
                                                                            i8 = R.string.ActionUniqueGiftTransferInbound;
                                                                            user4 = user19;
                                                                        }
                                                                    }
                                                                    string6 = LocaleController.getString(i8);
                                                                    tLObject2 = user4;
                                                                    pluralSpannable = AndroidUtilities.replaceTags(string6);
                                                                    user2 = tLObject2;
                                                                    charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                                }
                                                                SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags(string5);
                                                                this.messageText = spannableStringBuilderReplaceTags2;
                                                                CharSequence charSequenceReplaceWithLink4 = replaceWithLink(spannableStringBuilderReplaceTags2, "un1", tLObject);
                                                                this.messageText = charSequenceReplaceWithLink4;
                                                                user2 = user3;
                                                                pluralSpannable = charSequenceReplaceWithLink4;
                                                                str9 = "un2";
                                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                            } else {
                                                                str8 = str;
                                                                if (messageAction3 instanceof TLRPC.TL_messageActionGiftStars) {
                                                                    boolean z5 = user6 instanceof TLRPC.User;
                                                                    this.messageText = (z5 && ((TLRPC.User) user6).self) ? replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, message3.peer_id.user_id)) : (z5 && UserObject.isService(((TLRPC.User) user6).id)) ? TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(R.string.StarsTransactionUnknown)}) : replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftInbound)), "un1", user6);
                                                                    int iIndexOf2 = this.messageText.toString().indexOf("un2");
                                                                    if (iIndexOf2 != -1) {
                                                                        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(this.messageText);
                                                                        BillingController billingController = BillingController.getInstance();
                                                                        TLRPC.MessageAction messageAction4 = this.messageOwner.action;
                                                                        String currency = billingController.formatCurrency(messageAction4.amount, messageAction4.currency);
                                                                        if ((this.messageOwner.action.flags & 1) != 0) {
                                                                            StringBuilder sb = new StringBuilder();
                                                                            double d = this.messageOwner.action.cryptoAmount;
                                                                            double dPow = Math.pow(10.0d, -9.0d);
                                                                            Double.isNaN(d);
                                                                            sb.append(String.format("%.2f", Double.valueOf(d * dPow)));
                                                                            sb.append(" ");
                                                                            sb.append(this.messageOwner.action.cryptoCurrency);
                                                                            sb.append(" (~ ");
                                                                            sb.append((Object) currency);
                                                                            sb.append(")");
                                                                            currency = sb.toString();
                                                                        }
                                                                        string4 = spannableStringBuilderValueOf.replace(iIndexOf2, iIndexOf2 + 3, (CharSequence) currency);
                                                                    }
                                                                    str = str8;
                                                                } else {
                                                                    if ((messageAction3 instanceof TLRPC.TL_messageActionGiftCode) && ((TLRPC.TL_messageActionGiftCode) messageAction3).boost_peer != null) {
                                                                        i = R.string.BoostingReceivedGiftNoName;
                                                                    } else if (TlUtils.isInstance(messageAction3, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionGiftCode.class, TLRPC.TL_messageActionGiftTon.class)) {
                                                                        this.messageText = ((user6 instanceof TLRPC.User) && ((TLRPC.User) user6).self) ? replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id)) : this.messageOwner.action instanceof TLRPC.TL_messageActionGiftTon ? AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftTonInbound)) : replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(R.string.ActionGiftInbound)), "un1", user6);
                                                                        int iIndexOf3 = this.messageText.toString().indexOf("un2");
                                                                        if (iIndexOf3 != -1) {
                                                                            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(this.messageText);
                                                                            BillingController billingController2 = BillingController.getInstance();
                                                                            TLRPC.MessageAction messageAction5 = this.messageOwner.action;
                                                                            String currency2 = billingController2.formatCurrency(messageAction5.amount, messageAction5.currency);
                                                                            if ((this.messageOwner.action.flags & 1) != 0) {
                                                                                StringBuilder sb2 = new StringBuilder();
                                                                                double d2 = this.messageOwner.action.cryptoAmount;
                                                                                double dPow2 = Math.pow(10.0d, -9.0d);
                                                                                Double.isNaN(d2);
                                                                                sb2.append(String.format("%.2f", Double.valueOf(d2 * dPow2)));
                                                                                sb2.append(" ");
                                                                                sb2.append(this.messageOwner.action.cryptoCurrency);
                                                                                sb2.append(" (~ ");
                                                                                sb2.append((Object) currency2);
                                                                                sb2.append(")");
                                                                                currency2 = sb2.toString();
                                                                            }
                                                                            this.messageText = spannableStringBuilderValueOf2.replace(iIndexOf3, iIndexOf3 + 3, (CharSequence) currency2);
                                                                        }
                                                                        charSequenceReplaceWithLink = this.messageText;
                                                                    } else {
                                                                        TLRPC.Message message4 = this.messageOwner;
                                                                        TLRPC.MessageAction messageAction6 = message4.action;
                                                                        if (messageAction6 instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                                                                            TLRPC.Photo photo = messageAction6.photo;
                                                                            i = (photo == null || (arrayList = photo.video_sizes) == null || arrayList.isEmpty()) ? R.string.ActionSuggestPhotoShort : R.string.ActionSuggestVideoShort;
                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditPhoto) {
                                                                            TLRPC.Peer peer15 = message4.peer_id;
                                                                            if (peer15 != null) {
                                                                                long j7 = peer15.channel_id;
                                                                                TLRPC.Chat chat13 = j7 != 0 ? getChat(abstractMap2, longSparseArray2, j7) : null;
                                                                                if (ChatObject.isChannel(chat13) && !chat13.megagroup) {
                                                                                    i = isVideoAvatar() ? R.string.ActionChannelChangedVideo : R.string.ActionChannelChangedPhoto;
                                                                                } else if (isOut()) {
                                                                                    i = isVideoAvatar() ? R.string.ActionYouChangedVideo : R.string.ActionYouChangedPhoto;
                                                                                } else {
                                                                                    i2 = isVideoAvatar() ? R.string.ActionChangedVideo : R.string.ActionChangedPhoto;
                                                                                    str = str8;
                                                                                    pluralSpannable = LocaleController.getString(i2);
                                                                                    user2 = user6;
                                                                                    charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                                                }
                                                                            }
                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditTitle) {
                                                                            TLRPC.Peer peer16 = message4.peer_id;
                                                                            if (peer16 != null) {
                                                                                long j8 = peer16.channel_id;
                                                                                TLRPC.Chat chat14 = j8 != 0 ? getChat(abstractMap2, longSparseArray2, j8) : null;
                                                                                if (ChatObject.isChannel(chat14) && !chat14.megagroup) {
                                                                                    i7 = R.string.ActionChannelChangedTitle;
                                                                                } else if (isOut()) {
                                                                                    i7 = R.string.ActionYouChangedTitle;
                                                                                } else {
                                                                                    pluralSpannable = LocaleController.getString(R.string.ActionChangedTitle).replace("un2", this.messageOwner.action.title);
                                                                                    str = str8;
                                                                                    user2 = user6;
                                                                                    charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                                                }
                                                                                string4 = LocaleController.getString(i7).replace("un2", this.messageOwner.action.title);
                                                                            }
                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChatDeletePhoto) {
                                                                            TLRPC.Peer peer17 = message4.peer_id;
                                                                            if (peer17 != null) {
                                                                                long j9 = peer17.channel_id;
                                                                                TLRPC.Chat chat15 = j9 != 0 ? getChat(abstractMap2, longSparseArray2, j9) : null;
                                                                                if (ChatObject.isChannel(chat15) && !chat15.megagroup) {
                                                                                    i = R.string.ActionChannelRemovedPhoto;
                                                                                } else if (isOut()) {
                                                                                    i = R.string.ActionYouRemovedPhoto;
                                                                                } else {
                                                                                    i2 = R.string.ActionRemovedPhoto;
                                                                                    str = str8;
                                                                                    pluralSpannable = LocaleController.getString(i2);
                                                                                    user2 = user6;
                                                                                    charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                                                }
                                                                            }
                                                                        } else if (!(messageAction6 instanceof TLRPC.TL_messageActionTTLChange)) {
                                                                            if (messageAction6 instanceof TLRPC.TL_messageActionRequestedPeer) {
                                                                                ArrayList arrayList4 = new ArrayList();
                                                                                int i26 = 0;
                                                                                int i27 = 0;
                                                                                int i28 = 0;
                                                                                for (TLRPC.Peer peer18 : ((TLRPC.TL_messageActionRequestedPeer) this.messageOwner.action).peers) {
                                                                                    boolean z6 = peer18 instanceof TLRPC.TL_peerUser;
                                                                                    if (z6) {
                                                                                        str4 = str10;
                                                                                        chat3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer18.user_id));
                                                                                        if (chat3 == null) {
                                                                                            chat3 = getUser(abstractMap, longSparseArray, peer18.user_id);
                                                                                        }
                                                                                    } else {
                                                                                        str4 = str10;
                                                                                        if (peer18 instanceof TLRPC.TL_peerChat) {
                                                                                            chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer18.chat_id));
                                                                                            if (chat3 == null) {
                                                                                                j = peer18.chat_id;
                                                                                                chat3 = getChat(abstractMap2, longSparseArray2, j);
                                                                                            }
                                                                                        } else if (peer18 instanceof TLRPC.TL_peerChannel) {
                                                                                            chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer18.channel_id));
                                                                                            if (chat3 == null) {
                                                                                                j = peer18.channel_id;
                                                                                                chat3 = getChat(abstractMap2, longSparseArray2, j);
                                                                                            }
                                                                                        } else {
                                                                                            chat3 = null;
                                                                                        }
                                                                                    }
                                                                                    if (z6) {
                                                                                        i26++;
                                                                                    } else if (peer18 instanceof TLRPC.TL_peerChat) {
                                                                                        i28++;
                                                                                    } else {
                                                                                        i27++;
                                                                                    }
                                                                                    if (chat3 != null) {
                                                                                        arrayList4.add(chat3);
                                                                                    }
                                                                                    str10 = str4;
                                                                                }
                                                                                String str12 = str10;
                                                                                if (i26 > 0 && i26 != arrayList4.size()) {
                                                                                    charSequenceReplaceCharSequence = LocaleController.getPluralString("ActionRequestedPeerUserPlural", i26);
                                                                                } else if (i27 > 0 && i27 != arrayList4.size()) {
                                                                                    charSequenceReplaceCharSequence = LocaleController.getPluralString("ActionRequestedPeerChannelPlural", i27);
                                                                                } else if (i28 <= 0 || i28 == arrayList4.size()) {
                                                                                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                                                                                    int i29 = 0;
                                                                                    while (i29 < arrayList4.size()) {
                                                                                        spannableStringBuilder3.append(replaceWithLink("un1", "un1", (TLObject) arrayList4.get(i29)));
                                                                                        String str13 = str11;
                                                                                        if (i29 < arrayList4.size() - 1) {
                                                                                            spannableStringBuilder3.append((CharSequence) str13);
                                                                                        }
                                                                                        i29++;
                                                                                        str11 = str13;
                                                                                    }
                                                                                    charSequenceReplaceCharSequence = AndroidUtilities.replaceCharSequence("un1", LocaleController.getString(R.string.ActionRequestedPeer), spannableStringBuilder3);
                                                                                } else {
                                                                                    charSequenceReplaceCharSequence = LocaleController.getPluralString("ActionRequestedPeerChatPlural", i28);
                                                                                }
                                                                                this.messageText = charSequenceReplaceCharSequence;
                                                                                TLObject user20 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()));
                                                                                if (user20 == null) {
                                                                                    user20 = getUser(abstractMap, longSparseArray, getDialogId());
                                                                                }
                                                                                user2 = user20;
                                                                                pluralSpannable = this.messageText;
                                                                                str = str8;
                                                                                str9 = str12;
                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionSetMessagesTTL) {
                                                                                TLRPC.TL_messageActionSetMessagesTTL tL_messageActionSetMessagesTTL = (TLRPC.TL_messageActionSetMessagesTTL) messageAction6;
                                                                                TLRPC.Peer peer19 = message4.peer_id;
                                                                                if (peer19 != null) {
                                                                                    long j10 = peer19.channel_id;
                                                                                    TLRPC.Chat chat16 = j10 != 0 ? getChat(abstractMap2, longSparseArray2, j10) : null;
                                                                                    if (chat16 == null || chat16.megagroup) {
                                                                                        long j11 = tL_messageActionSetMessagesTTL.auto_setting_from;
                                                                                        if (j11 != 0) {
                                                                                            this.drawServiceWithDefaultTypeface = true;
                                                                                            if (j11 == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                                                                string4 = AndroidUtilities.replaceTags(LocaleController.formatString(R.string.AutoDeleteGlobalActionFromYou, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period)));
                                                                                            } else {
                                                                                                TLRPC.Chat user21 = longSparseArray != null ? (TLObject) longSparseArray.get(tL_messageActionSetMessagesTTL.auto_setting_from) : null;
                                                                                                if (user21 == null && abstractMap != null) {
                                                                                                    user21 = abstractMap.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                                                }
                                                                                                if (user21 == null && abstractMap2 != null) {
                                                                                                    user21 = abstractMap2.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                                                }
                                                                                                if (user21 == null) {
                                                                                                    user21 = tL_messageActionSetMessagesTTL.auto_setting_from > 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from)) : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                                                }
                                                                                                if (user21 != null) {
                                                                                                    user6 = user21;
                                                                                                }
                                                                                                pluralSpannable = AndroidUtilities.replaceTags(LocaleController.formatString(R.string.AutoDeleteGlobalAction, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period)));
                                                                                                str = str8;
                                                                                                user2 = user6;
                                                                                            }
                                                                                        } else if (tL_messageActionSetMessagesTTL.period != 0) {
                                                                                            if (isOut()) {
                                                                                                string4 = LocaleController.formatString(R.string.ActionTTLYouChanged, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period));
                                                                                            } else {
                                                                                                pluralSpannable = LocaleController.formatString(R.string.ActionTTLChanged, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period));
                                                                                                str = str8;
                                                                                                user2 = user6;
                                                                                            }
                                                                                        } else if (isOut()) {
                                                                                            i = R.string.ActionTTLYouDisabled;
                                                                                        } else {
                                                                                            i2 = R.string.ActionTTLDisabled;
                                                                                            str = str8;
                                                                                            pluralSpannable = LocaleController.getString(i2);
                                                                                            user2 = user6;
                                                                                        }
                                                                                    } else {
                                                                                        int i30 = tL_messageActionSetMessagesTTL.period;
                                                                                        if (i30 != 0) {
                                                                                            string4 = LocaleController.formatString(R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i30));
                                                                                        } else {
                                                                                            i = R.string.ActionTTLChannelDisabled;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                                                                                long j12 = message4.date * 1000;
                                                                                if (LocaleController.getInstance().getFormatterDay() == null || LocaleController.getInstance().getFormatterYear() == null) {
                                                                                    StringBuilder sb3 = new StringBuilder();
                                                                                    str = str8;
                                                                                    sb3.append(str);
                                                                                    sb3.append(this.messageOwner.date);
                                                                                    string3 = sb3.toString();
                                                                                } else {
                                                                                    string3 = LocaleController.formatString(R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(j12), LocaleController.getInstance().getFormatterDay().format(j12));
                                                                                    str = str8;
                                                                                }
                                                                                TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                                                                                if (currentUser == null) {
                                                                                    currentUser = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                                                                }
                                                                                String firstName2 = currentUser != null ? UserObject.getFirstName(currentUser) : str;
                                                                                int i31 = R.string.NotificationUnrecognizedDevice;
                                                                                TLRPC.MessageAction messageAction7 = this.messageOwner.action;
                                                                                charSequenceReplaceStars = LocaleController.formatString(i31, firstName2, string3, messageAction7.title, messageAction7.address);
                                                                            } else {
                                                                                str = str8;
                                                                                if ((messageAction6 instanceof TLRPC.TL_messageActionUserJoined) || (messageAction6 instanceof TLRPC.TL_messageActionContactSignUp)) {
                                                                                    charSequenceReplaceStars = LocaleController.formatString(R.string.NotificationContactJoined, UserObject.getUserName(user));
                                                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                                                                                    charSequenceReplaceStars = LocaleController.formatString(R.string.NotificationContactNewPhoto, UserObject.getUserName(user));
                                                                                } else if (messageAction6 instanceof TLRPC.TL_messageEncryptedAction) {
                                                                                    TLRPC.DecryptedMessageAction decryptedMessageAction = messageAction6.encryptedAction;
                                                                                    if (!(decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages)) {
                                                                                        if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL) {
                                                                                            TLRPC.TL_decryptedMessageActionSetMessageTTL tL_decryptedMessageActionSetMessageTTL = (TLRPC.TL_decryptedMessageActionSetMessageTTL) decryptedMessageAction;
                                                                                            if (tL_decryptedMessageActionSetMessageTTL.ttl_seconds != 0) {
                                                                                                charSequenceReplaceStars = isOut() ? LocaleController.formatString(R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds)) : LocaleController.formatString(R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds));
                                                                                            } else {
                                                                                                if (!isOut()) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatString(R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                                                                }
                                                                                                i = R.string.MessageLifetimeYouRemoved;
                                                                                                charSequenceReplaceStars = LocaleController.getString(i);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } else if (!(messageAction6 instanceof TLRPC.TL_messageActionScreenshotTaken)) {
                                                                                    if (messageAction6 instanceof TLRPC.TL_messageActionCreatedBroadcastList) {
                                                                                        i = R.string.YouCreatedBroadcastList;
                                                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionChannelCreate) {
                                                                                        TLRPC.Peer peer20 = message4.peer_id;
                                                                                        if (peer20 != null) {
                                                                                            long j13 = peer20.channel_id;
                                                                                            TLRPC.Chat chat17 = j13 != 0 ? getChat(abstractMap2, longSparseArray2, j13) : null;
                                                                                            i = (ChatObject.isChannel(chat17) && chat17.megagroup) ? R.string.ActionCreateMega : R.string.ActionCreateChannel;
                                                                                        }
                                                                                    } else if ((messageAction6 instanceof TLRPC.TL_messageActionChatMigrateTo) || (messageAction6 instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                                                        i = R.string.ActionMigrateFromGroup;
                                                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionPinMessage) {
                                                                                        generatePinMessageText(user, user == null ? getChat(abstractMap2, longSparseArray2, message4.peer_id.channel_id) : null);
                                                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionHistoryClear) {
                                                                                        i = R.string.HistoryCleared;
                                                                                    } else {
                                                                                        if (messageAction6 instanceof TLRPC.TL_messageActionTopicCreate) {
                                                                                            this.messageText = LocaleController.getString(R.string.TopicCreated);
                                                                                            TLRPC.TL_messageActionTopicCreate tL_messageActionTopicCreate = (TLRPC.TL_messageActionTopicCreate) this.messageOwner.action;
                                                                                            TLRPC.TL_forumTopic tL_forumTopic = new TLRPC.TL_forumTopic();
                                                                                            tL_forumTopic.icon_emoji_id = tL_messageActionTopicCreate.icon_emoji_id;
                                                                                            tL_forumTopic.title = tL_messageActionTopicCreate.title;
                                                                                            tL_forumTopic.icon_color = tL_messageActionTopicCreate.icon_color;
                                                                                            string2 = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(R.string.TopicWasCreatedAction), ForumUtilities.getTopicSpannedName(tL_forumTopic, null, false));
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionTopicEdit) {
                                                                                            TLRPC.TL_messageActionTopicEdit tL_messageActionTopicEdit = (TLRPC.TL_messageActionTopicEdit) messageAction6;
                                                                                            if (user != null) {
                                                                                                name = ContactsController.formatName(user.first_name, user.last_name);
                                                                                            } else if (chat6 != null) {
                                                                                                name = chat6.title;
                                                                                                user = chat6;
                                                                                            } else {
                                                                                                name = null;
                                                                                                user = null;
                                                                                            }
                                                                                            String strTrim = name != null ? name.trim() : "DELETED";
                                                                                            TLRPC.MessageAction messageAction8 = this.messageOwner.action;
                                                                                            int i32 = messageAction8.flags;
                                                                                            if ((i32 & 8) > 0) {
                                                                                                if (((TLRPC.TL_messageActionTopicEdit) messageAction8).hidden) {
                                                                                                    this.messageText = replaceWithLink(LocaleController.getString(R.string.TopicHidden2), "%s", user);
                                                                                                    i6 = R.string.TopicHidden;
                                                                                                } else {
                                                                                                    this.messageText = replaceWithLink(LocaleController.getString(R.string.TopicShown2), "%s", user);
                                                                                                    i6 = R.string.TopicShown;
                                                                                                }
                                                                                            } else if ((4 & i32) <= 0) {
                                                                                                int i33 = 2 & i32;
                                                                                                if (i33 != 0 && (i32 & 1) != 0) {
                                                                                                    TLRPC.TL_forumTopic tL_forumTopic2 = new TLRPC.TL_forumTopic();
                                                                                                    tL_forumTopic2.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                                                                    tL_forumTopic2.title = tL_messageActionTopicEdit.title;
                                                                                                    tL_forumTopic2.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                                                                    topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopic2, null, this.topicIconDrawable, false);
                                                                                                    this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(R.string.TopicChangeIconAndTitleTo), strTrim), topicSpannedName);
                                                                                                    this.messageTextShort = LocaleController.getString(R.string.TopicRenamed);
                                                                                                    i5 = R.string.TopicChangeIconAndTitleToInReply;
                                                                                                } else if (i33 != 0) {
                                                                                                    TLRPC.TL_forumTopic tL_forumTopic3 = new TLRPC.TL_forumTopic();
                                                                                                    tL_forumTopic3.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                                                                    tL_forumTopic3.title = str;
                                                                                                    tL_forumTopic3.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                                                                    topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopic3, null, this.topicIconDrawable, false);
                                                                                                    this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(R.string.TopicIconChangedTo), strTrim), topicSpannedName);
                                                                                                    this.messageTextShort = LocaleController.getString(R.string.TopicIconChanged);
                                                                                                    i5 = R.string.TopicIconChangedToInReply;
                                                                                                } else if ((1 & i32) != 0) {
                                                                                                    this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(R.string.TopicRenamedTo), strTrim), tL_messageActionTopicEdit.title);
                                                                                                    this.messageTextShort = LocaleController.getString(R.string.TopicRenamed);
                                                                                                    string = LocaleController.getString(R.string.TopicRenamedToInReply);
                                                                                                    topicSpannedName = tL_messageActionTopicEdit.title;
                                                                                                    this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", string, topicSpannedName);
                                                                                                }
                                                                                                string = LocaleController.getString(i5);
                                                                                                this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", string, topicSpannedName);
                                                                                            } else if (((TLRPC.TL_messageActionTopicEdit) messageAction8).closed) {
                                                                                                this.messageText = replaceWithLink(LocaleController.getString(R.string.TopicClosed2), "%s", user);
                                                                                                i6 = R.string.TopicClosed;
                                                                                            } else {
                                                                                                this.messageText = replaceWithLink(LocaleController.getString(R.string.TopicRestarted2), "%s", user);
                                                                                                i6 = R.string.TopicRestarted;
                                                                                            }
                                                                                            string2 = LocaleController.getString(i6);
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionGameScore) {
                                                                                            generateGameMessageText(user);
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionConferenceCall) {
                                                                                            TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction6;
                                                                                            this.messageText = LocaleController.getString(isOutOwner() ? R.string.ConferenceCallOutgoing : tL_messageActionConferenceCall.missed ? R.string.ConferenceCallMissed : R.string.ConferenceCallIncoming);
                                                                                            int i34 = tL_messageActionConferenceCall.duration;
                                                                                            if (i34 > 0) {
                                                                                                String callDuration = LocaleController.formatCallDuration(i34);
                                                                                                String string7 = LocaleController.formatString(R.string.CallMessageWithDuration, this.messageText, callDuration);
                                                                                                this.messageText = string7;
                                                                                                String string8 = string7.toString();
                                                                                                int iIndexOf4 = string8.indexOf(callDuration);
                                                                                                if (iIndexOf4 != -1) {
                                                                                                    spannableString = new SpannableString(this.messageText);
                                                                                                    int length = callDuration.length() + iIndexOf4;
                                                                                                    if (iIndexOf4 > 0 && string8.charAt(iIndexOf4 - 1) == '(') {
                                                                                                        iIndexOf4--;
                                                                                                    }
                                                                                                    if (length < string8.length() && string8.charAt(length) == ')') {
                                                                                                        length++;
                                                                                                    }
                                                                                                    spannableString.setSpan(new TypefaceSpan(Typeface.DEFAULT), iIndexOf4, length, 0);
                                                                                                    charSequence = spannableString;
                                                                                                }
                                                                                            }
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPhoneCall) {
                                                                                            TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction6;
                                                                                            boolean z7 = tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonMissed;
                                                                                            this.messageText = LocaleController.getString((isFromUser() && this.messageOwner.from_id.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) ? z7 ? tL_messageActionPhoneCall.video ? R.string.CallMessageVideoOutgoingMissed : R.string.CallMessageOutgoingMissed : tL_messageActionPhoneCall.video ? R.string.CallMessageVideoOutgoing : R.string.CallMessageOutgoing : z7 ? tL_messageActionPhoneCall.video ? R.string.CallMessageVideoIncomingMissed : R.string.CallMessageIncomingMissed : tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonBusy ? tL_messageActionPhoneCall.video ? R.string.CallMessageVideoIncomingDeclined : R.string.CallMessageIncomingDeclined : tL_messageActionPhoneCall.video ? R.string.CallMessageVideoIncoming : R.string.CallMessageIncoming);
                                                                                            int i35 = tL_messageActionPhoneCall.duration;
                                                                                            if (i35 > 0) {
                                                                                                String callDuration2 = LocaleController.formatCallDuration(i35);
                                                                                                String string9 = LocaleController.formatString(R.string.CallMessageWithDuration, this.messageText, callDuration2);
                                                                                                this.messageText = string9;
                                                                                                String string10 = string9.toString();
                                                                                                int iIndexOf5 = string10.indexOf(callDuration2);
                                                                                                if (iIndexOf5 != -1) {
                                                                                                    spannableString = new SpannableString(this.messageText);
                                                                                                    int length2 = callDuration2.length() + iIndexOf5;
                                                                                                    if (iIndexOf5 > 0 && string10.charAt(iIndexOf5 - 1) == '(') {
                                                                                                        iIndexOf5--;
                                                                                                    }
                                                                                                    if (length2 < string10.length() && string10.charAt(length2) == ')') {
                                                                                                        length2++;
                                                                                                    }
                                                                                                    spannableString.setSpan(new TypefaceSpan(Typeface.DEFAULT), iIndexOf5, length2, 0);
                                                                                                    charSequence = spannableString;
                                                                                                }
                                                                                            }
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaymentSent) {
                                                                                            generatePaymentSentMessageText(getUser(abstractMap, longSparseArray, getDialogId()), false);
                                                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaymentSentMe) {
                                                                                            generatePaymentSentMessageText(getUser(abstractMap, longSparseArray, getDialogId()), true);
                                                                                        } else {
                                                                                            boolean z8 = messageAction6 instanceof TLRPC.TL_messageActionBotAllowed;
                                                                                            if (z8) {
                                                                                                TLRPC.TL_messageActionBotAllowed tL_messageActionBotAllowed = (TLRPC.TL_messageActionBotAllowed) messageAction6;
                                                                                                String str14 = tL_messageActionBotAllowed.domain;
                                                                                                TLRPC.BotApp botApp = tL_messageActionBotAllowed.app;
                                                                                                if (tL_messageActionBotAllowed.from_request) {
                                                                                                    i = R.string.ActionBotAllowedWebapp;
                                                                                                } else if (botApp != null) {
                                                                                                    String str15 = botApp.title;
                                                                                                    if (str15 == null) {
                                                                                                        str15 = str;
                                                                                                    }
                                                                                                    String string11 = LocaleController.getString(R.string.ActionBotAllowedApp);
                                                                                                    int iIndexOf6 = string11.indexOf("%1$s");
                                                                                                    SpannableString spannableString5 = new SpannableString(String.format(string11, str15));
                                                                                                    TLRPC.User user22 = getUser(abstractMap, longSparseArray, getDialogId());
                                                                                                    if (iIndexOf6 >= 0 && user22 != null && (publicUsername2 = UserObject.getPublicUsername(user22)) != null) {
                                                                                                        spannableString5.setSpan(new URLSpanNoUnderlineBold("https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername2 + "/" + botApp.short_name), iIndexOf6, str15.length() + iIndexOf6, 33);
                                                                                                    }
                                                                                                    charSequence = spannableString5;
                                                                                                } else {
                                                                                                    if (str14 == null) {
                                                                                                        str14 = str;
                                                                                                    }
                                                                                                    String string12 = LocaleController.getString(R.string.ActionBotAllowed);
                                                                                                    int iIndexOf7 = string12.indexOf("%1$s");
                                                                                                    SpannableString spannableString6 = new SpannableString(String.format(string12, str14));
                                                                                                    if (iIndexOf7 >= 0 && !TextUtils.isEmpty(str14)) {
                                                                                                        spannableString6.setSpan(new URLSpanNoUnderlineBold("http://" + str14), iIndexOf7, str14.length() + iIndexOf7, 33);
                                                                                                    }
                                                                                                    charSequence = spannableString6;
                                                                                                }
                                                                                            } else if ((messageAction6 instanceof TLRPC.TL_messageActionAttachMenuBotAllowed) || (z8 && ((TLRPC.TL_messageActionBotAllowed) messageAction6).attach_menu)) {
                                                                                                i = R.string.ActionAttachMenuBotAllowed;
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionSecureValuesSent) {
                                                                                                TLRPC.TL_messageActionSecureValuesSent tL_messageActionSecureValuesSent = (TLRPC.TL_messageActionSecureValuesSent) messageAction6;
                                                                                                StringBuilder sb4 = new StringBuilder();
                                                                                                int size2 = tL_messageActionSecureValuesSent.types.size();
                                                                                                for (int i36 = 0; i36 < size2; i36++) {
                                                                                                    TLRPC.SecureValueType secureValueType = (TLRPC.SecureValueType) tL_messageActionSecureValuesSent.types.get(i36);
                                                                                                    if (sb4.length() > 0) {
                                                                                                        sb4.append(str11);
                                                                                                    }
                                                                                                    if (secureValueType instanceof TLRPC.TL_secureValueTypePhone) {
                                                                                                        i4 = R.string.ActionBotDocumentPhone;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeEmail) {
                                                                                                        i4 = R.string.ActionBotDocumentEmail;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeAddress) {
                                                                                                        i4 = R.string.ActionBotDocumentAddress;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePersonalDetails) {
                                                                                                        i4 = R.string.ActionBotDocumentIdentity;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassport) {
                                                                                                        i4 = R.string.ActionBotDocumentPassport;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeDriverLicense) {
                                                                                                        i4 = R.string.ActionBotDocumentDriverLicence;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeIdentityCard) {
                                                                                                        i4 = R.string.ActionBotDocumentIdentityCard;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeUtilityBill) {
                                                                                                        i4 = R.string.ActionBotDocumentUtilityBill;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeBankStatement) {
                                                                                                        i4 = R.string.ActionBotDocumentBankStatement;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeRentalAgreement) {
                                                                                                        i4 = R.string.ActionBotDocumentRentalAgreement;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeInternalPassport) {
                                                                                                        i4 = R.string.ActionBotDocumentInternalPassport;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassportRegistration) {
                                                                                                        i4 = R.string.ActionBotDocumentPassportRegistration;
                                                                                                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeTemporaryRegistration) {
                                                                                                        i4 = R.string.ActionBotDocumentTemporaryRegistration;
                                                                                                    }
                                                                                                    sb4.append(LocaleController.getString(i4));
                                                                                                }
                                                                                                TLRPC.Peer peer21 = this.messageOwner.peer_id;
                                                                                                charSequenceReplaceStars = LocaleController.formatString(R.string.ActionBotDocuments, UserObject.getFirstName(peer21 != null ? getUser(abstractMap, longSparseArray, peer21.user_id) : null), sb4.toString());
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionWebViewDataSent) {
                                                                                                charSequenceReplaceStars = LocaleController.formatString(R.string.ActionBotWebViewData, ((TLRPC.TL_messageActionWebViewDataSent) messageAction6).text);
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                                                                                String str16 = ((TLRPC.TL_messageActionSetChatTheme) messageAction6).emoticon;
                                                                                                String firstName3 = UserObject.getFirstName(user);
                                                                                                boolean z9 = user == null && chat6 != null;
                                                                                                if (z9) {
                                                                                                    firstName3 = chat6.title;
                                                                                                }
                                                                                                boolean zIsUserSelf2 = UserObject.isUserSelf(user);
                                                                                                if (TextUtils.isEmpty(str16)) {
                                                                                                    charSequenceReplaceStars = zIsUserSelf2 ? LocaleController.formatString(R.string.ChatThemeDisabledYou, new Object[0]) : LocaleController.formatString(z9 ? R.string.ChannelThemeDisabled : R.string.ChatThemeDisabled, firstName3, str16);
                                                                                                } else if (zIsUserSelf2) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatString(R.string.ChatThemeChangedYou, str16);
                                                                                                } else {
                                                                                                    charSequenceReplaceStars = LocaleController.formatString(z9 ? R.string.ChannelThemeChangedTo : R.string.ChatThemeChangedTo, firstName3, str16);
                                                                                                }
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                                                                                                if (UserObject.isUserSelf(user)) {
                                                                                                    i = ChatObject.isChannelAndNotMegaGroup(this.messageOwner.peer_id.channel_id, this.currentAccount) ? R.string.RequestToJoinChannelApproved : R.string.RequestToJoinGroupApproved;
                                                                                                } else {
                                                                                                    i2 = R.string.UserAcceptedToGroupAction;
                                                                                                    pluralSpannable = LocaleController.getString(i2);
                                                                                                    user2 = user6;
                                                                                                }
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesPrice) {
                                                                                                TLRPC.TL_messageActionPaidMessagesPrice tL_messageActionPaidMessagesPrice = (TLRPC.TL_messageActionPaidMessagesPrice) messageAction6;
                                                                                                if (ChatObject.isChannel(chat6) && chat6 != null && chat6.broadcast) {
                                                                                                    if ((tL_messageActionPaidMessagesPrice.flags & 1) != 0) {
                                                                                                        long j14 = tL_messageActionPaidMessagesPrice.stars;
                                                                                                        if (j14 > 0) {
                                                                                                            i3 = (int) j14;
                                                                                                            str3 = "PostSuggestionsPriceUpdated";
                                                                                                        } else {
                                                                                                            i2 = R.string.PostSuggestionsEnabledUpdated;
                                                                                                        }
                                                                                                    } else {
                                                                                                        i2 = R.string.PostSuggestionsDisabledUpdated;
                                                                                                    }
                                                                                                    pluralSpannable = LocaleController.getString(i2);
                                                                                                    user2 = user6;
                                                                                                } else if (isOutOwner()) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatPluralStringComma("PaidMessagesPriceUpdatedOut", (int) tL_messageActionPaidMessagesPrice.stars);
                                                                                                } else {
                                                                                                    i3 = (int) tL_messageActionPaidMessagesPrice.stars;
                                                                                                    str3 = "PaidMessagesPriceUpdated";
                                                                                                }
                                                                                                pluralSpannable = LocaleController.formatPluralStringComma(str3, i3);
                                                                                                user2 = user6;
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesRefunded) {
                                                                                                TLRPC.TL_messageActionPaidMessagesRefunded tL_messageActionPaidMessagesRefunded = (TLRPC.TL_messageActionPaidMessagesRefunded) messageAction6;
                                                                                                if (isOutOwner()) {
                                                                                                    TLRPC.Message message5 = this.messageOwner;
                                                                                                    TLRPC.Peer peer22 = message5.saved_peer_id;
                                                                                                    user2 = getUser(abstractMap, longSparseArray, peer22 != null ? DialogObject.getPeerDialogId(peer22) : DialogObject.getPeerDialogId(message5.peer_id));
                                                                                                    pluralSpannable = LocaleController.formatPluralStringComma("PaidMessagesRefundedOut", (int) tL_messageActionPaidMessagesRefunded.stars);
                                                                                                } else {
                                                                                                    i3 = (int) tL_messageActionPaidMessagesRefunded.stars;
                                                                                                    str3 = "PaidMessagesRefunded";
                                                                                                    pluralSpannable = LocaleController.formatPluralStringComma(str3, i3);
                                                                                                    user2 = user6;
                                                                                                }
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionTodoCompletions) {
                                                                                                TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction6;
                                                                                                boolean z10 = !tL_messageActionTodoCompletions.completed.isEmpty();
                                                                                                int iIntValue = !tL_messageActionTodoCompletions.completed.isEmpty() ? ((Integer) tL_messageActionTodoCompletions.completed.get(0)).intValue() : !tL_messageActionTodoCompletions.incompleted.isEmpty() ? ((Integer) tL_messageActionTodoCompletions.incompleted.get(0)).intValue() : 0;
                                                                                                MessageObject messageObject = this.replyMessageObject;
                                                                                                if (messageObject == null || !(getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaToDo)) {
                                                                                                    todoItem = null;
                                                                                                    if (todoItem == null) {
                                                                                                        Theme.createCommonChatResources();
                                                                                                        CharSequence taskTitle = formatTaskTitle(todoItem);
                                                                                                        if (isOutOwner()) {
                                                                                                            charSequenceReplaceStars = LocaleController.formatSpannable(z10 ? R.string.TodoTaskCompletedOut : R.string.TodoTaskNotCompletedOut, taskTitle);
                                                                                                        } else {
                                                                                                            pluralSpannable = LocaleController.formatSpannable(z10 ? R.string.TodoTaskCompleted : R.string.TodoTaskNotCompleted, taskTitle);
                                                                                                            user2 = user6;
                                                                                                        }
                                                                                                    } else if (isOutOwner()) {
                                                                                                        i = z10 ? R.string.TodoTaskCompletedOutUnknown : R.string.TodoTaskNotCompletedOutUnknown;
                                                                                                    } else {
                                                                                                        i2 = z10 ? R.string.TodoTaskCompletedUnknown : R.string.TodoTaskNotCompletedUnknown;
                                                                                                        pluralSpannable = LocaleController.getString(i2);
                                                                                                        user2 = user6;
                                                                                                    }
                                                                                                } else {
                                                                                                    TLRPC.TL_messageMediaToDo tL_messageMediaToDo2 = (TLRPC.TL_messageMediaToDo) getMedia(this.replyMessageObject.messageOwner);
                                                                                                    for (int i37 = 0; i37 < tL_messageMediaToDo2.todo.list.size(); i37++) {
                                                                                                        TLRPC.TodoItem todoItem2 = (TLRPC.TodoItem) tL_messageMediaToDo2.todo.list.get(i37);
                                                                                                        if (todoItem2.id == iIntValue) {
                                                                                                            todoItem = todoItem2;
                                                                                                            break;
                                                                                                        }
                                                                                                    }
                                                                                                    todoItem = null;
                                                                                                    if (todoItem == null) {
                                                                                                    }
                                                                                                }
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                                                                                                TLRPC.TL_messageActionTodoAppendTasks tL_messageActionTodoAppendTasks = (TLRPC.TL_messageActionTodoAppendTasks) messageAction6;
                                                                                                if (!isOutOwner()) {
                                                                                                    if (tL_messageActionTodoAppendTasks.list.size() == 1) {
                                                                                                        pluralSpannable = LocaleController.formatSpannable(R.string.TodoAddedOneTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)));
                                                                                                    } else if (tL_messageActionTodoAppendTasks.list.size() == 2) {
                                                                                                        pluralSpannable = LocaleController.formatSpannable(R.string.TodoAddedTwoTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)));
                                                                                                    } else if (tL_messageActionTodoAppendTasks.list.size() == 3) {
                                                                                                        pluralSpannable = LocaleController.formatSpannable(R.string.TodoAddedThreeTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                                                                    } else if (tL_messageActionTodoAppendTasks.list.size() >= 4) {
                                                                                                        pluralSpannable = LocaleController.formatPluralSpannable("TodoAddedMoreTasks", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                                                                    }
                                                                                                    user2 = user6;
                                                                                                } else if (tL_messageActionTodoAppendTasks.list.size() == 1) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatSpannable(R.string.TodoAddedOneTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)));
                                                                                                } else if (tL_messageActionTodoAppendTasks.list.size() == 2) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatSpannable(R.string.TodoAddedTwoTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)));
                                                                                                } else if (tL_messageActionTodoAppendTasks.list.size() == 3) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatSpannable(R.string.TodoAddedThreeTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                                                                } else if (tL_messageActionTodoAppendTasks.list.size() >= 4) {
                                                                                                    charSequenceReplaceStars = LocaleController.formatPluralSpannable("TodoAddedMoreTasksOut", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                                                                }
                                                                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                                                                                                String monoForumTitle2 = ForumUtilities.getMonoForumTitle(this.currentAccount, DialogObject.getPeerDialogId(message4.peer_id), true);
                                                                                                if (monoForumTitle2 == null) {
                                                                                                    TLRPC.Chat chat18 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id));
                                                                                                    if (chat18 != null) {
                                                                                                        long j15 = chat18.linked_monoforum_id;
                                                                                                        if (j15 != 0 && (chat2 = getChat(abstractMap2, longSparseArray2, j15)) != null) {
                                                                                                            chat18 = chat2;
                                                                                                        }
                                                                                                    }
                                                                                                    monoForumTitle2 = DialogObject.getDialogTitle(chat18);
                                                                                                }
                                                                                                charSequenceReplaceStars = getActionSuggestionApprovalText(monoForumTitle2, DialogObject.getName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id))));
                                                                                            }
                                                                                        }
                                                                                        this.messageTextShort = string2;
                                                                                    }
                                                                                    charSequenceReplaceStars = LocaleController.getString(i);
                                                                                }
                                                                            }
                                                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                                        } else if (messageAction6.ttl != 0) {
                                                                            string4 = isOut() ? LocaleController.formatString(R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(this.messageOwner.action.ttl)) : LocaleController.formatString(R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(this.messageOwner.action.ttl));
                                                                        } else if (isOut()) {
                                                                            str = str8;
                                                                            i = R.string.MessageLifetimeYouRemoved;
                                                                            charSequenceReplaceStars = LocaleController.getString(i);
                                                                        } else {
                                                                            string4 = LocaleController.formatString(R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                                        }
                                                                    }
                                                                    str = str8;
                                                                    charSequenceReplaceStars = LocaleController.getString(i);
                                                                }
                                                            }
                                                            string6 = LocaleController.formatPluralStringComma(str5, i9);
                                                            tLObject2 = tLObject3;
                                                            pluralSpannable = AndroidUtilities.replaceTags(string6);
                                                            user2 = tLObject2;
                                                            charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                        }
                                                        charSequence = charSequenceReplaceStars;
                                                    } else if (isOut()) {
                                                        i = R.string.ActionInviteYou;
                                                        charSequenceReplaceStars = LocaleController.getString(i);
                                                        charSequence = charSequenceReplaceStars;
                                                    } else {
                                                        i2 = R.string.ActionInviteUser;
                                                        pluralSpannable = LocaleController.getString(i2);
                                                        user2 = user6;
                                                        charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                        charSequence = charSequenceReplaceStars;
                                                    }
                                                }
                                            }
                                        }
                                        string4 = StarsIntroActivity.replaceStars(charSequenceReplaceWithLink);
                                    } else if (isFromUser()) {
                                        TLRPC.Message message6 = this.messageOwner;
                                        if (message6.action.user_id != message6.from_id.user_id) {
                                            TLObject user23 = getUser(abstractMap, longSparseArray, this.messageOwner.action.user_id);
                                            if (isOut()) {
                                                i14 = R.string.ActionYouKickUser;
                                                tLObject6 = user23;
                                                pluralSpannable = LocaleController.getString(i14);
                                                str9 = "un2";
                                                tLObject4 = tLObject6;
                                                str = str8;
                                                user2 = tLObject4;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            } else if (this.messageOwner.action.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                i2 = R.string.ActionKickUserYou;
                                            } else {
                                                i13 = R.string.ActionKickUser;
                                                tLObject5 = user23;
                                                pluralSpannable = replaceWithLink(LocaleController.getString(i13), "un2", tLObject5);
                                                this.messageText = pluralSpannable;
                                                str = str8;
                                                user2 = user6;
                                                charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                                charSequence = charSequenceReplaceStars;
                                            }
                                        } else if (isOut()) {
                                            i = R.string.ActionYouLeftUser;
                                            str = str8;
                                            charSequenceReplaceStars = LocaleController.getString(i);
                                            charSequence = charSequenceReplaceStars;
                                        } else {
                                            i2 = R.string.ActionLeftUser;
                                        }
                                        str = str8;
                                        pluralSpannable = LocaleController.getString(i2);
                                        user2 = user6;
                                        charSequenceReplaceStars = replaceWithLink(pluralSpannable, str9, user2);
                                        charSequence = charSequenceReplaceStars;
                                    }
                                }
                            }
                            charSequence = string4;
                            str = str8;
                        }
                        this.messageText = charSequence;
                    } else {
                        str = "";
                    }
                }
                if (this.messageText == null) {
                    this.messageText = str;
                }
                this.isEmbedVideoCached = null;
                this.cachedStartsTimestamp = null;
                this.cachedSavedTimestamp = null;
            }
            user = null;
        }
        chat = null;
        if (user == null) {
        }
        this.drawServiceWithDefaultTypeface = false;
        this.channelJoined = false;
        message = this.messageOwner;
        if (message instanceof TLRPC.TL_messageService) {
        }
        if (this.messageText == null) {
        }
        this.isEmbedVideoCached = null;
        this.cachedStartsTimestamp = null;
        this.cachedSavedTimestamp = null;
    }

    private static void updatePhotoSizeLocations(ArrayList<TLRPC.PhotoSize> arrayList, List<TLRPC.PhotoSize> list) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.PhotoSize photoSize = arrayList.get(i);
            if (photoSize != null) {
                int size2 = list.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        TLRPC.PhotoSize photoSize2 = list.get(i2);
                        if (!(photoSize2 instanceof TLRPC.TL_photoSizeEmpty) && !(photoSize2 instanceof TLRPC.TL_photoCachedSize) && photoSize2 != null && photoSize2.type.equals(photoSize.type)) {
                            photoSize.location = photoSize2.location;
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
    }

    public static void updatePollResults(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.PollResults pollResults) {
        ArrayList arrayList;
        byte[] bArr;
        ArrayList arrayList2;
        if (tL_messageMediaPoll == null || pollResults == null) {
            return;
        }
        if ((pollResults.flags & 2) != 0) {
            if (!pollResults.min || (arrayList2 = tL_messageMediaPoll.results.results) == null) {
                arrayList = null;
                bArr = null;
            } else {
                int size = arrayList2.size();
                arrayList = null;
                bArr = null;
                for (int i = 0; i < size; i++) {
                    TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i);
                    if (tL_pollAnswerVoters.chosen) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(tL_pollAnswerVoters.option);
                    }
                    if (tL_pollAnswerVoters.correct) {
                        bArr = tL_pollAnswerVoters.option;
                    }
                }
            }
            TLRPC.PollResults pollResults2 = tL_messageMediaPoll.results;
            ArrayList arrayList3 = pollResults.results;
            pollResults2.results = arrayList3;
            if (arrayList != null || bArr != null) {
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters2 = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i2);
                    if (arrayList != null) {
                        int size3 = arrayList.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size3) {
                                break;
                            }
                            if (Arrays.equals(tL_pollAnswerVoters2.option, (byte[]) arrayList.get(i3))) {
                                tL_pollAnswerVoters2.chosen = true;
                                arrayList.remove(i3);
                                break;
                            }
                            i3++;
                        }
                        if (arrayList.isEmpty()) {
                            arrayList = null;
                        }
                    }
                    if (bArr != null && Arrays.equals(tL_pollAnswerVoters2.option, bArr)) {
                        tL_pollAnswerVoters2.correct = true;
                        bArr = null;
                    }
                    if (arrayList == null && bArr == null) {
                        break;
                    }
                }
            }
            tL_messageMediaPoll.results.flags |= 2;
        }
        if ((pollResults.flags & 4) != 0) {
            TLRPC.PollResults pollResults3 = tL_messageMediaPoll.results;
            pollResults3.total_voters = pollResults.total_voters;
            pollResults3.flags |= 4;
        }
        if ((pollResults.flags & 8) != 0) {
            TLRPC.PollResults pollResults4 = tL_messageMediaPoll.results;
            pollResults4.recent_voters = pollResults.recent_voters;
            pollResults4.flags |= 8;
        }
        if ((pollResults.flags & 16) != 0) {
            TLRPC.PollResults pollResults5 = tL_messageMediaPoll.results;
            pollResults5.solution = pollResults.solution;
            pollResults5.solution_entities = pollResults.solution_entities;
            pollResults5.flags |= 16;
        }
    }

    public static void updateReactions(TLRPC.Message message, TLRPC.TL_messageReactions tL_messageReactions) {
        if (message == null || tL_messageReactions == null) {
            return;
        }
        TLRPC.TL_messageReactions tL_messageReactions2 = message.reactions;
        if (tL_messageReactions2 != null) {
            int size = tL_messageReactions2.results.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) message.reactions.results.get(i);
                int size2 = tL_messageReactions.results.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) tL_messageReactions.results.get(i2);
                    if (ReactionsLayoutInBubble.equalsTLReaction(reactionCount.reaction, reactionCount2.reaction)) {
                        if (!z && tL_messageReactions.min && reactionCount.chosen) {
                            reactionCount2.chosen = true;
                            z = true;
                        }
                        reactionCount2.lastDrawnPosition = reactionCount.lastDrawnPosition;
                    }
                }
                if (reactionCount.chosen) {
                    z = true;
                }
            }
        }
        message.reactions = tL_messageReactions;
        message.flags |= FileLoaderPriorityQueue.PRIORITY_VALUE_MAX;
    }

    public static CharSequence userSpan() {
        return userSpan(0);
    }

    public static CharSequence userSpan(int i) {
        if (userSpan == null) {
            userSpan = new CharSequence[2];
        }
        CharSequence[] charSequenceArr = userSpan;
        if (charSequenceArr[i] == null) {
            charSequenceArr[i] = new SpannableStringBuilder("u");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.mini_reply_user);
            coloredImageSpan.spaceScaleX = 0.9f;
            if (i == 0) {
                coloredImageSpan.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(1.0f));
            }
            ((SpannableStringBuilder) userSpan[i]).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return userSpan[i];
    }

    public boolean addEntitiesToText(CharSequence charSequence, boolean z, boolean z2) {
        ArrayList arrayList;
        if (charSequence == null) {
            return false;
        }
        if (!this.isRestrictedMessage && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported)) {
            if (this.translated) {
                TLRPC.TL_textWithEntities tL_textWithEntities = this.messageOwner.translatedText;
                arrayList = tL_textWithEntities == null ? null : tL_textWithEntities.entities;
            } else {
                arrayList = this.messageOwner.entities;
            }
            return addEntitiesToText(charSequence, arrayList, isOutOwner(), true, z, z2);
        }
        ArrayList arrayList2 = new ArrayList();
        TLRPC.TL_messageEntityItalic tL_messageEntityItalic = new TLRPC.TL_messageEntityItalic();
        tL_messageEntityItalic.offset = 0;
        tL_messageEntityItalic.length = charSequence.length();
        arrayList2.add(tL_messageEntityItalic);
        return addEntitiesToText(charSequence, arrayList2, isOutOwner(), true, z, z2);
    }

    public void addPaidReactions(int i, boolean z, long j) {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        addPaidReactions(this.currentAccount, this.messageOwner.reactions, i, j, z);
    }

    public void applyMediaExistanceFlags(int i) {
        if (i == -1) {
            checkMediaExistance();
        } else {
            this.attachPathExists = (i & 1) != 0;
            this.mediaExists = (i & 2) != 0;
        }
    }

    public void applyNewText() {
        this.translated = false;
        applyNewText(this.messageOwner.message);
    }

    public void applyNewText(CharSequence charSequence) {
        TLRPC.TL_textWithEntities tL_textWithEntities;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        TLRPC.User user = isFromUser() ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id)) : null;
        this.messageText = charSequence;
        ArrayList arrayList = (!this.translated || (tL_textWithEntities = this.messageOwner.translatedText) == null) ? this.messageOwner.entities : tL_textWithEntities.entities;
        TextPaint textPaint = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame ? Theme.chat_msgGameTextPaint : Theme.chat_msgTextPaint;
        int[] iArr = allowsBigEmoji() ? new int[1] : null;
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
        this.messageText = charSequenceReplaceEmoji;
        Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, textPaint.getFontMetricsInt());
        this.messageText = spannableReplaceAnimatedEmoji;
        if (iArr != null && iArr[0] > 1) {
            replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
        }
        checkEmojiOnly(iArr);
        generateLayout(user);
        setType();
    }

    public void applyQuickReply(String str, int i) {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return;
        }
        if (i != 0) {
            message.flags |= 1073741824;
            message.quick_reply_shortcut_id = i;
            TLRPC.TL_inputQuickReplyShortcutId tL_inputQuickReplyShortcutId = new TLRPC.TL_inputQuickReplyShortcutId();
            tL_inputQuickReplyShortcutId.shortcut_id = i;
            this.messageOwner.quick_reply_shortcut = tL_inputQuickReplyShortcutId;
            return;
        }
        if (str != null) {
            TLRPC.TL_inputQuickReplyShortcut tL_inputQuickReplyShortcut = new TLRPC.TL_inputQuickReplyShortcut();
            tL_inputQuickReplyShortcut.shortcut = str;
            this.messageOwner.quick_reply_shortcut = tL_inputQuickReplyShortcut;
        } else {
            message.flags &= -1073741825;
            message.quick_reply_shortcut_id = 0;
            message.quick_reply_shortcut = null;
        }
    }

    public void applyTimestampsHighlightForReplyMsg() {
        boolean zIsOutOwner;
        CharSequence charSequence;
        int duration;
        int i;
        boolean z;
        boolean z2;
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject == null) {
            return;
        }
        if (messageObject.isYouTubeVideo()) {
            zIsOutOwner = isOutOwner();
            charSequence = this.messageText;
            duration = Integer.MAX_VALUE;
            z = false;
            z2 = false;
            i = 3;
        } else {
            if (!messageObject.isVideo()) {
                if (messageObject.isMusic() || messageObject.isVoice()) {
                    addUrlsByPattern(isOutOwner(), this.messageText, false, 4, (int) messageObject.getDuration(), false);
                }
                TLRPC.Message message = this.messageOwner;
                if (message != null) {
                    TLRPC.MessageAction messageAction = message.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionTodoCompletions) || (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
                        updateMessageText();
                        return;
                    }
                    return;
                }
                return;
            }
            zIsOutOwner = isOutOwner();
            charSequence = this.messageText;
            duration = (int) messageObject.getDuration();
            i = 3;
            z = false;
            z2 = false;
        }
        addUrlsByPattern(zIsOutOwner, charSequence, z2, i, duration, z);
    }

    public boolean areTags() {
        TLRPC.TL_messageReactions tL_messageReactions;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null) {
            return false;
        }
        return tL_messageReactions.reactions_as_tags;
    }

    public boolean canAppendToTodo() {
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (!(media instanceof TLRPC.TL_messageMediaToDo) || isForwarded()) {
            return false;
        }
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media;
        if (tL_messageMediaToDo.todo.list.size() >= MessagesController.getInstance(this.currentAccount).todoItemsMax) {
            return false;
        }
        if (!isOutOwner()) {
            TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
            if (!todoList.others_can_complete || !todoList.others_can_append) {
                return false;
            }
        }
        return true;
    }

    public boolean canBeSensitive() {
        int i;
        return (this.messageOwner == null || ((i = this.type) != 1 && i != 3 && i != 9 && i != 8 && i != 5) || this.sendPreview || this.isRepostPreview || isOutOwner() || this.messageOwner.send_state != 0) ? false : true;
    }

    public boolean canCompleteTodo() {
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaToDo) && !isForwarded()) {
            return isOutOwner() || ((TLRPC.TL_messageMediaToDo) media).todo.others_can_complete;
        }
        return false;
    }

    public boolean canDeleteMessage(boolean z, TLRPC.Chat chat) {
        TLRPC.Message message;
        return (isStory() && (message = this.messageOwner) != null && message.dialog_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) || (this.eventId == 0 && this.sponsoredId == null && canDeleteMessage(this.currentAccount, z, this.messageOwner, chat));
    }

    public boolean canEditMedia() {
        if (isSecretMedia()) {
            return false;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
            return true;
        }
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument ? (isVoice() || isSticker() || isAnimatedSticker() || isRoundVideo()) ? false : true : isMediaEmpty();
    }

    public boolean canEditMessage(TLRPC.Chat chat) {
        return canEditMessage(this.currentAccount, this.messageOwner, chat, this.scheduled);
    }

    public boolean canEditMessageAnytime(TLRPC.Chat chat) {
        return canEditMessageAnytime(this.currentAccount, this.messageOwner, chat);
    }

    public boolean canEditMessageScheduleTime(TLRPC.Chat chat) {
        return canEditMessageScheduleTime(this.currentAccount, this.messageOwner, chat);
    }

    public boolean canForwardMessage() {
        return (isQuickReply() || this.type == 30 || (this.messageOwner instanceof TLRPC.TL_message_secret) || needDrawBluredPreview() || isLiveLocation() || this.type == 16 || isSponsored() || this.messageOwner.noforwards) ? false : true;
    }

    public boolean canPreviewDocument() {
        return canPreviewDocument(getDocument());
    }

    public boolean canSetReaction() {
        TLRPC.Message message = this.messageOwner;
        if (message instanceof TLRPC.TL_messageService) {
            return message.reactions_are_possible;
        }
        return true;
    }

    public boolean canStreamVideo() {
        if (hasVideoQualities()) {
            return true;
        }
        TLRPC.Document document = getDocument();
        if (document != null && !(document instanceof TLRPC.TL_documentEncrypted)) {
            if (SharedConfig.streamAllVideo) {
                return true;
            }
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    return documentAttribute.supports_streaming;
                }
            }
            if (SharedConfig.streamMkv && "video/x-matroska".equals(document.mime_type)) {
                return true;
            }
        }
        return false;
    }

    public boolean canUnvote() {
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
        TLRPC.PollResults pollResults;
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaPoll) && (pollResults = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).results) != null && !pollResults.results.isEmpty() && !tL_messageMediaPoll.poll.quiz) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (((TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i)).chosen) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean canViewThread() {
        MessageObject messageObject;
        if (this.messageOwner.action != null) {
            return false;
        }
        return hasReplies() || !(((messageObject = this.replyMessageObject) == null || messageObject.messageOwner.replies == null) && getReplyTopMsgId() == 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void checkBigAnimatedEmoji() {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        String str;
        int i;
        this.emojiAnimatedSticker = null;
        this.emojiAnimatedStickerId = null;
        if (this.emojiOnlyCount == 1 && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty) || getMedia(this.messageOwner) == null)) {
            TLRPC.Message message = this.messageOwner;
            if (message.grouped_id == 0) {
                if (message.entities.isEmpty()) {
                    CharSequence string = this.messageText;
                    int iIndexOf = TextUtils.indexOf(string, "🏻");
                    if (iIndexOf >= 0) {
                        str = "_c1";
                    } else {
                        iIndexOf = TextUtils.indexOf(string, "🏼");
                        if (iIndexOf >= 0) {
                            str = "_c2";
                        } else {
                            iIndexOf = TextUtils.indexOf(string, "🏽");
                            if (iIndexOf >= 0) {
                                str = "_c3";
                            } else {
                                iIndexOf = TextUtils.indexOf(string, "🏾");
                                if (iIndexOf >= 0) {
                                    str = "_c4";
                                } else {
                                    iIndexOf = TextUtils.indexOf(string, "🏿");
                                    if (iIndexOf >= 0) {
                                        str = "_c5";
                                    } else {
                                        this.emojiAnimatedStickerColor = "";
                                        if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor) && (i = iIndexOf + 2) < this.messageText.length()) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(string.toString());
                                            CharSequence charSequence = this.messageText;
                                            sb.append(charSequence.subSequence(i, charSequence.length()).toString());
                                            string = sb.toString();
                                        }
                                        if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor) || EmojiData.emojiColoredMap.contains(string.toString())) {
                                            this.emojiAnimatedSticker = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(string);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.emojiAnimatedStickerColor = str;
                    string = string.subSequence(0, iIndexOf);
                    if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(string.toString());
                        CharSequence charSequence2 = this.messageText;
                        sb2.append(charSequence2.subSequence(i, charSequence2.length()).toString());
                        string = sb2.toString();
                    }
                    if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor)) {
                        this.emojiAnimatedSticker = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(string);
                    }
                } else if (this.messageOwner.entities.size() == 1 && (this.messageOwner.entities.get(0) instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    try {
                        long j = ((TLRPC.TL_messageEntityCustomEmoji) this.messageOwner.entities.get(0)).document_id;
                        this.emojiAnimatedStickerId = Long.valueOf(j);
                        TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, j);
                        this.emojiAnimatedSticker = documentFindDocument;
                        if (documentFindDocument == null) {
                            CharSequence charSequence3 = this.messageText;
                            if ((charSequence3 instanceof Spanned) && (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence3).getSpans(0, charSequence3.length(), AnimatedEmojiSpan.class)) != null && animatedEmojiSpanArr.length == 1) {
                                this.emojiAnimatedSticker = animatedEmojiSpanArr[0].document;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (this.emojiAnimatedSticker == null && this.emojiAnimatedStickerId == null) {
            generateLayout(null);
        } else {
            this.type = isSticker() ? 13 : isAnimatedSticker() ? 15 : 1000;
        }
    }

    public void checkForScam() {
    }

    public boolean checkLayout() {
        CharSequence charSequence;
        int i = this.type;
        if ((i == 0 || i == 19) && this.messageOwner.peer_id != null && (charSequence = this.messageText) != null && charSequence.length() != 0) {
            if (this.layoutCreated) {
                if (Math.abs(this.generatedWithMinSize - (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : AndroidUtilities.displaySize.x)) > AndroidUtilities.dp(52.0f) || this.generatedWithDensity != AndroidUtilities.density) {
                    this.layoutCreated = false;
                }
            }
            if (!this.layoutCreated) {
                this.layoutCreated = true;
                if (isFromUser()) {
                    MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
                }
                TextPaint textPaint = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame ? Theme.chat_msgGameTextPaint : Theme.chat_msgTextPaint;
                int[] iArr = allowsBigEmoji() ? new int[1] : null;
                CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
                this.messageText = charSequenceReplaceEmoji;
                Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
                this.messageText = spannableReplaceAnimatedEmoji;
                if (iArr != null && iArr[0] > 1) {
                    replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
                }
                checkEmojiOnly(iArr);
                checkBigAnimatedEmoji();
                setType();
                return true;
            }
        }
        return false;
    }

    public void checkMediaExistance() {
        checkMediaExistance(true);
    }

    public void checkMediaExistance(boolean z) {
        boolean zExists;
        int i;
        File pathToAttach;
        this.attachPathExists = false;
        this.mediaExists = false;
        int i2 = this.type;
        if (i2 == 20) {
            TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) this.messageOwner.media.extended_media.get(0);
            if (tL_messageExtendedMediaPreview.thumb != null) {
                File pathToAttach2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(tL_messageExtendedMediaPreview.thumb, z);
                if (!this.mediaExists) {
                    zExists = pathToAttach2.exists() || (tL_messageExtendedMediaPreview.thumb instanceof TLRPC.TL_photoStrippedSize);
                    this.mediaExists = zExists;
                }
            }
        } else if (i2 == 1 && FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize(true)) != null) {
            File pathToMessage = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.messageOwner, z);
            if (needDrawBluredPreview()) {
                this.mediaExists = new File(pathToMessage.getAbsolutePath() + ".enc").exists();
            }
            if (!this.mediaExists) {
                zExists = pathToMessage.exists();
                this.mediaExists = zExists;
            }
        }
        if ((!this.mediaExists && this.type == 8) || (i = this.type) == 3 || i == 9 || i == 2 || i == 14 || i == 5) {
            String str = this.messageOwner.attachPath;
            if (str != null && str.length() > 0) {
                this.attachPathExists = new File(this.messageOwner.attachPath).exists();
            }
            if (!this.attachPathExists) {
                File pathToMessage2 = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.messageOwner, z);
                if ((this.type == 3 && needDrawBluredPreview()) || isVoiceOnce() || isRoundOnce()) {
                    this.mediaExists = new File(pathToMessage2.getAbsolutePath() + ".enc").exists();
                }
                if (!this.mediaExists) {
                    this.mediaExists = pathToMessage2.exists();
                }
            }
        }
        if (!this.mediaExists) {
            TLObject document = getDocument();
            if (document != null) {
                pathToAttach = isWallpaper() ? FileLoader.getInstance(this.currentAccount).getPathToAttach(document, null, true, z) : FileLoader.getInstance(this.currentAccount).getPathToAttach(document, null, false, z);
                this.mediaExists = pathToAttach.exists();
            } else {
                int i3 = this.type;
                if (i3 == 0) {
                    document = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize());
                    if (document == null) {
                        return;
                    }
                    this.mediaExists = pathToAttach.exists();
                } else if (i3 == 11) {
                    TLRPC.Photo photo = this.messageOwner.action.photo;
                    if (photo == null || photo.video_sizes.isEmpty()) {
                        return;
                    }
                    pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach((TLObject) photo.video_sizes.get(0), null, true, z);
                    this.mediaExists = pathToAttach.exists();
                }
            }
        }
        updateQualitiesCached(z);
    }

    public void copyStableParams(MessageObject messageObject) {
        ArrayList<TextLayoutBlock> arrayList;
        TLRPC.MessageMedia messageMedia;
        ArrayList arrayList2;
        TLRPC.TL_messageReactions tL_messageReactions;
        this.stableId = messageObject.stableId;
        TLRPC.Message message = this.messageOwner;
        message.premiumEffectWasPlayed = messageObject.messageOwner.premiumEffectWasPlayed;
        this.forcePlayEffect = messageObject.forcePlayEffect;
        this.wasJustSent = messageObject.wasJustSent;
        TLRPC.TL_messageReactions tL_messageReactions2 = message.reactions;
        if (tL_messageReactions2 != null && (arrayList2 = tL_messageReactions2.results) != null && !arrayList2.isEmpty() && (tL_messageReactions = messageObject.messageOwner.reactions) != null && tL_messageReactions.results != null) {
            for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
                TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i);
                for (int i2 = 0; i2 < messageObject.messageOwner.reactions.results.size(); i2++) {
                    TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) messageObject.messageOwner.reactions.results.get(i2);
                    if (ReactionsLayoutInBubble.equalsTLReaction(reactionCount.reaction, reactionCount2.reaction)) {
                        reactionCount.lastDrawnPosition = reactionCount2.lastDrawnPosition;
                    }
                }
            }
        }
        boolean z = messageObject.isSpoilersRevealed;
        this.isSpoilersRevealed = z;
        TLRPC.Message message2 = this.messageOwner;
        TLRPC.Message message3 = messageObject.messageOwner;
        message2.replyStory = message3.replyStory;
        TLRPC.MessageMedia messageMedia2 = message2.media;
        if (messageMedia2 != null && (messageMedia = message3.media) != null) {
            messageMedia2.storyItem = messageMedia.storyItem;
        }
        if (!z || (arrayList = this.textLayoutBlocks) == null) {
            return;
        }
        Iterator<TextLayoutBlock> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().spoilers.clear();
        }
    }

    public void createMediaThumbs() {
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        ImageLocation forDocument;
        TLRPC.MessageMedia messageMedia;
        if (isStoryMedia()) {
            TL_stories$StoryItem tL_stories$StoryItem = getMedia(this.messageOwner).storyItem;
            if (tL_stories$StoryItem == null || (messageMedia = tL_stories$StoryItem.media) == null) {
                return;
            }
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50);
                this.mediaThumb = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320, false, null, true), document);
                forDocument = ImageLocation.getForDocument(closestPhotoSizeWithSize3, document);
            } else {
                closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 50);
                closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 320, false, closestPhotoSizeWithSize, true);
                this.mediaThumb = ImageLocation.getForObject(closestPhotoSizeWithSize2, this.photoThumbsObject);
                forDocument = ImageLocation.getForObject(closestPhotoSizeWithSize, this.photoThumbsObject);
            }
        } else if (isVideo()) {
            TLRPC.Document document2 = getDocument();
            TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 50);
            this.mediaThumb = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 320), document2);
            forDocument = ImageLocation.getForDocument(closestPhotoSizeWithSize4, document2);
        } else {
            if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || getMedia(this.messageOwner).photo == null || this.photoThumbs.isEmpty()) {
                return;
            }
            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 50);
            closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 320, false, closestPhotoSizeWithSize, false);
            this.mediaThumb = ImageLocation.getForObject(closestPhotoSizeWithSize2, this.photoThumbsObject);
            forDocument = ImageLocation.getForObject(closestPhotoSizeWithSize, this.photoThumbsObject);
        }
        this.mediaSmallThumb = forDocument;
    }

    public void createMessageSendInfo() {
        HashMap map;
        String str;
        VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
        boolean z = videoEditedInfo != null && videoEditedInfo.notReadyYet;
        TLRPC.Message message = this.messageOwner;
        if (message.message != null) {
            if ((message.id < 0 || isEditing()) && (map = this.messageOwner.params) != null) {
                String str2 = (String) map.get("ve");
                if (str2 != null && (isVideo() || isNewGif() || isRoundVideo() || isVideoSticker() || isPaidVideo(getMedia(this)))) {
                    VideoEditedInfo videoEditedInfo2 = new VideoEditedInfo();
                    this.videoEditedInfo = videoEditedInfo2;
                    if (videoEditedInfo2.parseString(str2)) {
                        this.videoEditedInfo.roundVideo = isRoundVideo();
                        this.videoEditedInfo.notReadyYet = z;
                    } else {
                        this.videoEditedInfo = null;
                    }
                }
                TLRPC.Message message2 = this.messageOwner;
                if (message2.send_state != 3 || (str = (String) message2.params.get("prevMedia")) == null) {
                    return;
                }
                SerializedData serializedData = new SerializedData(Base64.decode(str, 0));
                this.previousMedia = TLRPC.MessageMedia.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                this.previousMessage = serializedData.readString(false);
                this.previousAttachPath = serializedData.readString(false);
                int int32 = serializedData.readInt32(false);
                this.previousMessageEntities = new ArrayList<>(int32);
                for (int i = 0; i < int32; i++) {
                    this.previousMessageEntities.add(TLRPC.MessageEntity.TLdeserialize(serializedData, serializedData.readInt32(false), false));
                }
                serializedData.cleanup();
            }
        }
    }

    public void createStrippedThumb() {
        if (this.photoThumbs != null) {
            if ((canCreateStripedThubms() || hasExtendedMediaPreview()) && this.strippedThumb == null) {
                try {
                    String str = isRoundVideo() ? "br" : "b";
                    int size = this.photoThumbs.size();
                    for (int i = 0; i < size; i++) {
                        TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                        if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                            this.strippedThumb = new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), ImageLoader.getStrippedPhotoBitmap(photoSize.bytes, str));
                            return;
                        }
                    }
                } catch (Throwable th) {
                    FileLog.e(th);
                }
            }
        }
    }

    public boolean didSpoilLoginCode() {
        return this.spoiledLoginCode;
    }

    public boolean doesPaidReactionExist() {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
                return true;
            }
        }
        return false;
    }

    public boolean ensurePaidReactionsExist(boolean z) {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        TLRPC.ReactionCount reactionCount = null;
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
                reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i);
            }
        }
        if (reactionCount != null) {
            return false;
        }
        TLRPC.TL_reactionCount tL_reactionCount = new TLRPC.TL_reactionCount();
        tL_reactionCount.reaction = new TLRPC.TL_reactionPaid();
        tL_reactionCount.count = 1;
        tL_reactionCount.chosen = z;
        this.messageOwner.reactions.results.add(0, tL_reactionCount);
        return true;
    }

    public boolean equals(MessageObject messageObject) {
        return messageObject != null && getId() == messageObject.getId() && getDialogId() == messageObject.getDialogId();
    }

    public void expandChannelRecommendations(boolean z) {
        SharedPreferences.Editor editorEdit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        String str = "c" + getDialogId() + "_rec";
        this.channelJoinedExpanded = z;
        editorEdit.putBoolean(str, z).apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateCaption() {
        boolean z;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        boolean zIsOutOwner;
        CharSequence charSequence;
        int duration;
        int i;
        TL_stories$StoryItem tL_stories$StoryItem;
        if (this.caption != null) {
            if ((this.messageOwner.translatedText != null && this.translated) == this.captionTranslated) {
                return;
            }
        }
        if (isRoundVideo()) {
            return;
        }
        TLRPC.Message message = this.messageOwner;
        String str = message.message;
        ArrayList arrayList = message.entities;
        if (this.type == 23) {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia != null && (tL_stories$StoryItem = messageMedia.storyItem) != null) {
                str = tL_stories$StoryItem.caption;
                arrayList = tL_stories$StoryItem.entities;
                z = true;
                tL_textWithEntities = this.messageOwner.translatedText;
                if (tL_textWithEntities != null) {
                    boolean z2 = this.translated;
                    this.captionTranslated = z2;
                    if (z2) {
                        str = tL_textWithEntities.text;
                        arrayList = tL_textWithEntities.entities;
                    }
                }
                if (!isMediaEmpty() || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) || TextUtils.isEmpty(str)) {
                    return;
                }
                CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(str, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                this.caption = charSequenceReplaceEmoji;
                this.caption = replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                boolean z3 = z || (!(this.messageOwner.send_state != 0 ? false : arrayList.isEmpty() ^ true) && (this.eventId != 0 || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer74) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer74) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.id < 0)));
                if (z3) {
                    if (containsUrls(this.caption)) {
                        try {
                            AndroidUtilities.addLinksSafe((Spannable) this.caption, 5, false, true);
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                    }
                    addUrlsByPattern(isOutOwner(), this.caption, true, 0, 0, true);
                }
                addEntitiesToText(this.caption, z3);
                if (isVideo()) {
                    zIsOutOwner = isOutOwner();
                    charSequence = this.caption;
                    duration = (int) getDuration();
                    i = 3;
                } else {
                    if (!isMusic() && !isVoice()) {
                        return;
                    }
                    zIsOutOwner = isOutOwner();
                    charSequence = this.caption;
                    duration = (int) getDuration();
                    i = 4;
                }
                addUrlsByPattern(zIsOutOwner, charSequence, true, i, duration, false);
                return;
            }
            arrayList = new ArrayList();
            str = "";
        } else if (hasExtendedMedia()) {
            TLRPC.Message message2 = this.messageOwner;
            str = message2.media.description;
            message2.message = str;
        }
        z = false;
        tL_textWithEntities = this.messageOwner.translatedText;
        if (tL_textWithEntities != null) {
        }
        if (isMediaEmpty()) {
        }
    }

    public void generateGameMessageText(TLRPC.User user) {
        CharSequence charSequenceReplaceWithLink;
        if (user == null && isFromUser()) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
        }
        MessageObject messageObject = this.replyMessageObject;
        TLRPC.TL_game tL_game = (messageObject == null || getMedia(messageObject) == null || getMedia(this.replyMessageObject).game == null) ? null : getMedia(this.replyMessageObject).game;
        if (tL_game == null) {
            charSequenceReplaceWithLink = (user == null || user.id != UserConfig.getInstance(this.currentAccount).getClientUserId()) ? replaceWithLink(LocaleController.formatString("ActionUserScored", R.string.ActionUserScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user) : LocaleController.formatString("ActionYouScored", R.string.ActionYouScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
        } else {
            this.messageText = (user == null || user.id != UserConfig.getInstance(this.currentAccount).getClientUserId()) ? replaceWithLink(LocaleController.formatString("ActionUserScoredInGame", R.string.ActionUserScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user) : LocaleController.formatString("ActionYouScoredInGame", R.string.ActionYouScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
            charSequenceReplaceWithLink = replaceWithLink(this.messageText, "un2", tL_game);
        }
        this.messageText = charSequenceReplaceWithLink;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:354|(3:467|355|356)|358|(1:360)(11:362|(1:364)|465|365|368|(1:370)|371|(4:373|(0)(1:376)|(1:490)(3:459|382|(2:384|488)(1:491))|385)(1:377)|378|(2:380|490)(1:489)|385)|361|465|365|368|(0)|371|(0)(0)|378|(0)(0)|385) */
    /* JADX WARN: Can't wrap try/catch for region: R(45:178|(1:180)|181|(1:183)(1:184)|185|(1:187)(1:188)|189|(1:191)|(1:193)|(1:199)(1:198)|200|(1:208)(1:207)|209|(2:211|(3:(1:216)|217|218)(1:214))(2:219|(8:221|(1:223)(1:224)|225|(1:227)(1:228)|229|(1:231)(1:232)|233|218))|234|(3:236|(1:238)(1:(1:241)(1:242))|239)(1:243)|244|(1:246)(2:247|(1:249)(1:250))|251|(5:253|(1:273)(8:259|(1:261)(1:263)|262|264|(1:266)(1:267)|268|(1:270)(1:271)|272)|274|(3:276|(2:278|(2:280|(1:283))(1:285))(1:286)|284)|287)(3:288|(2:290|482)(8:291|469|292|(1:300)(1:296)|297|301|(1:303)(1:304)|305)|429)|306|461|307|308|(2:463|312)|316|453|322|326|(1:328)(17:330|(1:332)|333|(1:335)|336|(1:338)|339|(3:341|(7:457|343|344|451|345|486|349)|484)|350|(6:352|(16:354|467|355|356|358|(1:360)(11:362|(1:364)|465|365|368|(1:370)|371|(4:373|(0)(1:376)|(1:490)(3:459|382|(2:384|488)(1:491))|385)(1:377)|378|(2:380|490)(1:489)|385)|361|465|365|368|(0)|371|(0)(0)|378|(0)(0)|385)|487|386|(2:(1:389)|390)(1:(1:392))|393)(3:394|(5:396|(1:398)(1:400)|399|(1:402)(1:403)|404)(1:405)|406)|407|(3:409|(1:411)(1:412)|413)|414|(1:426)(3:418|(1:420)(3:421|(1:423)|424)|425)|427|483|429)|329|333|(0)|336|(0)|339|(0)|350|(0)(0)|407|(0)|414|(4:416|426|427|483)(0)|429|176) */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x053d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x053e, code lost:
    
        r11 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0550, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0551, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
        r0 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x05f6, code lost:
    
        r13 = com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x023c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x068d  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06d7  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0738  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0755  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x063e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateLayout(TLRPC.User user) {
        boolean z;
        int iDp;
        CharSequence charSequence;
        int iDp2;
        float f;
        boolean z2;
        ArrayList arrayList;
        int i;
        boolean z3;
        int i2;
        int i3;
        boolean z4;
        int iDp3;
        TextPaint textPaint;
        boolean z5;
        TextPaint textPaint2;
        ArrayList arrayList2;
        CharSequence charSequence2;
        float f2;
        float fDp;
        int iCeil;
        int i4;
        StaticLayout staticLayout;
        int i5;
        Text text;
        int iDp4;
        ArrayList arrayList3;
        float fDp2;
        float lineLeft;
        int i6;
        int i7;
        float f3;
        int i8;
        int i9;
        float f4;
        int i10 = this.type;
        if ((i10 != 0 && i10 != 19 && i10 != 24) || this.messageOwner.peer_id == null || TextUtils.isEmpty(this.messageText)) {
            return;
        }
        applyEntities();
        TLRPC.Message message = this.messageOwner;
        boolean z6 = message != null && message.noforwards;
        if (z6) {
            z = z6;
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()));
            z = chat != null && chat.noforwards;
        }
        this.textLayoutBlocks = new ArrayList<>();
        this.textWidth = 0;
        CharSequence charSequence3 = this.messageText;
        this.hasCode = (charSequence3 instanceof Spanned) && ((CodeHighlighting.Span[]) ((Spanned) charSequence3).getSpans(0, charSequence3.length(), CodeHighlighting.Span.class)).length > 0;
        CharSequence charSequence4 = this.messageText;
        this.hasQuote = (charSequence4 instanceof Spanned) && ((QuoteSpan.QuoteStyleSpan[]) ((Spanned) charSequence4).getSpans(0, charSequence4.length(), QuoteSpan.QuoteStyleSpan.class)).length > 0;
        this.hasSingleQuote = false;
        this.hasSingleCode = false;
        CharSequence charSequence5 = this.messageText;
        if (charSequence5 instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence5;
            QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.class);
            for (QuoteSpan quoteSpan : quoteSpanArr) {
                quoteSpan.adaptLineHeight = false;
            }
            this.hasSingleQuote = quoteSpanArr.length == 1 && spanned.getSpanStart(quoteSpanArr[0]) == 0 && spanned.getSpanEnd(quoteSpanArr[0]) == spanned.length();
            CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
            this.hasSingleCode = spanArr.length == 1 && spanned.getSpanStart(spanArr[0]) == 0 && spanned.getSpanEnd(spanArr[0]) == spanned.length();
        }
        int maxMessageTextWidth = getMaxMessageTextWidth();
        try {
            if (!this.hasSingleQuote) {
                if (this.hasSingleCode) {
                    iDp = AndroidUtilities.dp(15.0f);
                }
                TextPaint textPaint3 = !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) ? Theme.chat_msgGameTextPaint : Theme.chat_msgTextPaint;
                CharSequence charSequence6 = this.messageText;
                StaticLayout staticLayoutMakeStaticLayout = makeStaticLayout(charSequence6, textPaint3, maxMessageTextWidth, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : BitmapDescriptorFactory.HUE_RED, this.emojiOnlyCount <= 0);
                charSequence = charSequence6;
                if (this.isRepostPreview) {
                    int i11 = this.type != 0 ? hasValidGroupId() ? 7 : 12 : 22;
                    if (isWebpage()) {
                        i11 -= 8;
                    }
                    charSequence = charSequence6;
                    if (staticLayoutMakeStaticLayout.getLineCount() > i11) {
                        String string = LocaleController.getString(R.string.ReadMore);
                        int iCeil2 = (int) Math.ceil(textPaint3.measureText("… " + string) + AndroidUtilities.dp(1.0f));
                        float fMax = BitmapDescriptorFactory.HUE_RED;
                        for (int i12 = 0; i12 < i11; i12++) {
                            fMax = Math.max(fMax, staticLayoutMakeStaticLayout.getLineRight(i12));
                        }
                        int i13 = i11 - 1;
                        int lineStart = staticLayoutMakeStaticLayout.getLineStart(i13);
                        int lineEnd = staticLayoutMakeStaticLayout.getLineEnd(i13) - 1;
                        while (lineEnd >= lineStart && staticLayoutMakeStaticLayout.getPrimaryHorizontal(lineEnd) >= fMax - iCeil2) {
                            lineEnd--;
                        }
                        while (lineEnd >= lineStart && !Character.isWhitespace(charSequence6.charAt(lineEnd))) {
                            lineEnd--;
                        }
                        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence6.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                        spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.2
                            @Override // android.text.style.CharacterStyle
                            public void updateDrawState(TextPaint textPaint4) {
                                textPaint4.setColor(Theme.chat_msgTextPaint.linkColor);
                            }
                        }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                        try {
                            staticLayoutMakeStaticLayout = makeStaticLayout(spannableStringBuilderAppend, textPaint3, maxMessageTextWidth, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : BitmapDescriptorFactory.HUE_RED, this.emojiOnlyCount > 0);
                            charSequence = spannableStringBuilderAppend;
                        } catch (Exception e) {
                            FileLog.e(e);
                            return;
                        }
                    }
                }
                if (!this.hasSingleQuote) {
                    f = 32.0f;
                } else {
                    if (!this.hasSingleCode) {
                        iDp2 = maxMessageTextWidth;
                        int lineCount = staticLayoutMakeStaticLayout.getLineCount();
                        int i14 = this.totalAnimatedEmojiCount;
                        int i15 = i14 >= 50 ? 5 : 10;
                        z2 = Build.VERSION.SDK_INT >= 24 && i14 < 50;
                        int iCeil3 = z2 ? 1 : (int) Math.ceil(lineCount / i15);
                        arrayList = new ArrayList();
                        if ((charSequence instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                            cutIntoRanges(charSequence, arrayList);
                        } else {
                            if (!z2 || iCeil3 == 1) {
                                i = maxMessageTextWidth;
                                z3 = false;
                                arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                                int size = arrayList.size();
                                this.hasCodeAtTop = z3;
                                this.hasCodeAtBottom = z3;
                                this.hasQuoteAtBottom = z3;
                                this.hasSingleQuote = z3;
                                this.hasSingleCode = z3;
                                int i16 = i;
                                i3 = 0;
                                CharSequence charSequence7 = charSequence;
                                while (i3 < arrayList.size()) {
                                    TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                                    TextRange textRange = (TextRange) arrayList.get(i3);
                                    textLayoutBlock.code = textRange.code;
                                    textLayoutBlock.quote = textRange.quote;
                                    boolean z7 = textRange.collapse;
                                    textLayoutBlock.quoteCollapse = z7;
                                    if (z7) {
                                        textLayoutBlock.messageObject = this;
                                    }
                                    textLayoutBlock.index = i3;
                                    textLayoutBlock.first = i3 == 0;
                                    boolean z8 = i3 == arrayList.size() - 1;
                                    textLayoutBlock.last = z8;
                                    boolean z9 = textLayoutBlock.first;
                                    if (z9) {
                                        this.hasCodeAtTop = textLayoutBlock.code;
                                    }
                                    if (z8) {
                                        this.hasQuoteAtBottom = textLayoutBlock.quote;
                                        this.hasCodeAtBottom = textLayoutBlock.code;
                                    }
                                    this.hasSingleQuote = z9 && z8 && textLayoutBlock.quote;
                                    this.hasSingleCode = z9 && z8 && !textLayoutBlock.quote && textLayoutBlock.code;
                                    if (textLayoutBlock.quote) {
                                        if (z9 && z8) {
                                            int iDp5 = AndroidUtilities.dp(6.0f);
                                            textLayoutBlock.padBottom = iDp5;
                                            textLayoutBlock.padTop = iDp5;
                                        } else {
                                            textLayoutBlock.padTop = AndroidUtilities.dp(z9 ? 8.0f : 6.0f);
                                            iDp3 = AndroidUtilities.dp(7.0f);
                                            textLayoutBlock.padBottom = iDp3;
                                        }
                                    } else if (textLayoutBlock.code) {
                                        textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z);
                                        textLayoutBlock.padTop = AndroidUtilities.dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? 0 : AndroidUtilities.dp(5.0f));
                                        iDp3 = AndroidUtilities.dp(4.0f) + (textLayoutBlock.last ? 0 : AndroidUtilities.dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.dp(38.0f) : 0);
                                        textLayoutBlock.padBottom = iDp3;
                                    }
                                    if (textLayoutBlock.code) {
                                        int i17 = textRange.end - textRange.start;
                                        textPaint = i17 > 220 ? Theme.chat_msgTextCode3Paint : i17 > 80 ? Theme.chat_msgTextCode2Paint : Theme.chat_msgTextCodePaint;
                                    } else {
                                        textPaint = textPaint3;
                                    }
                                    CharSequence charSequenceSubSequence = charSequence7.subSequence(textRange.start, textRange.end);
                                    int iDp6 = textLayoutBlock.quote ? iDp2 - AndroidUtilities.dp(24.0f) : textLayoutBlock.code ? iDp2 - AndroidUtilities.dp(15.0f) : iDp2;
                                    if (size == 1) {
                                        if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout.getText() instanceof Spannable)) {
                                            SpannableString highlighted = !TextUtils.isEmpty(textRange.language) ? CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language) : new SpannableString(charSequenceSubSequence.toString());
                                            textLayoutBlock.originalWidth = iDp6;
                                            staticLayoutMakeStaticLayout = makeStaticLayout(highlighted, textPaint, iDp6, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : BitmapDescriptorFactory.HUE_RED, this.emojiOnlyCount > 0);
                                            i16 = iDp6;
                                        } else {
                                            textLayoutBlock.originalWidth = i16;
                                        }
                                        textLayoutBlock.textLayout = staticLayoutMakeStaticLayout;
                                        textLayoutBlock.charactersOffset = 0;
                                        textLayoutBlock.charactersEnd = staticLayoutMakeStaticLayout.getText().length();
                                        textLayoutBlock.height = staticLayoutMakeStaticLayout.getHeight();
                                        textLayoutBlock.collapsedHeight = (int) Math.min(textPaint3.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                        int i18 = this.emojiOnlyCount;
                                        if (i18 != 0) {
                                            if (i18 == 1) {
                                                i9 = textLayoutBlock.padTop;
                                                f4 = 5.3f;
                                            } else if (i18 == 2) {
                                                i9 = textLayoutBlock.padTop;
                                                f4 = 4.5f;
                                            } else if (i18 == 3) {
                                                i9 = textLayoutBlock.padTop;
                                                f4 = 4.2f;
                                            }
                                            textLayoutBlock.padTop = i9 - AndroidUtilities.dp(f4);
                                        }
                                    } else {
                                        int i19 = textRange.start;
                                        int i20 = textRange.end;
                                        if (i20 < i19) {
                                            z5 = z;
                                            textPaint2 = textPaint3;
                                            arrayList2 = arrayList;
                                            charSequence2 = charSequence7;
                                        } else {
                                            textLayoutBlock.charactersOffset = i19;
                                            textLayoutBlock.charactersEnd = i20;
                                            try {
                                                SpannableString spannableStringValueOf = (!textLayoutBlock.code || textLayoutBlock.quote) ? SpannableString.valueOf(charSequenceSubSequence) : CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language);
                                                textLayoutBlock.originalWidth = iDp6;
                                                StaticLayout staticLayoutMakeStaticLayout2 = makeStaticLayout(spannableStringValueOf, textPaint, iDp6, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : BitmapDescriptorFactory.HUE_RED, false);
                                                textLayoutBlock.textLayout = staticLayoutMakeStaticLayout2;
                                                textLayoutBlock.height = staticLayoutMakeStaticLayout2.getHeight();
                                                textLayoutBlock.collapsedHeight = (int) Math.min(textPaint3.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                            } catch (Exception e2) {
                                                z5 = z;
                                                textPaint2 = textPaint3;
                                                arrayList2 = arrayList;
                                                charSequence2 = charSequence7;
                                                FileLog.e(e2);
                                            }
                                        }
                                        i3++;
                                        z = z5;
                                        textPaint3 = textPaint2;
                                        arrayList = arrayList2;
                                        charSequence7 = charSequence2;
                                    }
                                    this.textLayoutBlocks.add(textLayoutBlock);
                                    int lineCount2 = textLayoutBlock.textLayout.getLineCount();
                                    float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(lineCount2 - 1);
                                    float f5 = BitmapDescriptorFactory.HUE_RED;
                                    if (i3 == 0 && lineLeft2 >= BitmapDescriptorFactory.HUE_RED) {
                                        try {
                                            this.textXOffset = lineLeft2;
                                        } catch (Exception e3) {
                                            e = e3;
                                            if (i3 == 0) {
                                                this.textXOffset = f5;
                                            }
                                            FileLog.e(e);
                                            f2 = BitmapDescriptorFactory.HUE_RED;
                                            float lineWidth = textLayoutBlock.textLayout.getLineWidth(lineCount2 - 1);
                                            if (textLayoutBlock.quote) {
                                            }
                                            lineWidth += fDp;
                                            iCeil = (int) Math.ceil(lineWidth);
                                            if (iCeil > iDp2 + 80) {
                                            }
                                            i4 = size - 1;
                                            if (i3 == i4) {
                                            }
                                            float f6 = iCeil;
                                            int i21 = i16;
                                            z5 = z;
                                            textPaint2 = textPaint3;
                                            int iCeil4 = (int) Math.ceil(f6 + Math.max(BitmapDescriptorFactory.HUE_RED, f2));
                                            if (textLayoutBlock.quote) {
                                            }
                                            int i22 = iCeil;
                                            if (lineCount2 > 1) {
                                            }
                                            text = textLayoutBlock.languageLayout;
                                            if (text != null) {
                                            }
                                            textLayoutBlock.spoilers.clear();
                                            if (!this.isSpoilersRevealed) {
                                            }
                                            i3++;
                                            z = z5;
                                            textPaint3 = textPaint2;
                                            arrayList = arrayList2;
                                            charSequence7 = charSequence2;
                                        }
                                    }
                                    f2 = lineLeft2;
                                    float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount2 - 1);
                                    if (textLayoutBlock.quote) {
                                        if (textLayoutBlock.code) {
                                            fDp = AndroidUtilities.dp(15.0f);
                                        }
                                        iCeil = (int) Math.ceil(lineWidth2);
                                        if (iCeil > iDp2 + 80) {
                                            iCeil = iDp2;
                                        }
                                        i4 = size - 1;
                                        if (i3 == i4) {
                                            this.lastLineWidth = iCeil;
                                        }
                                        float f62 = iCeil;
                                        int i212 = i16;
                                        z5 = z;
                                        textPaint2 = textPaint3;
                                        int iCeil42 = (int) Math.ceil(f62 + Math.max(BitmapDescriptorFactory.HUE_RED, f2));
                                        if (textLayoutBlock.quote) {
                                            textLayoutBlock.maxRight = BitmapDescriptorFactory.HUE_RED;
                                            int i23 = 0;
                                            while (i23 < lineCount2) {
                                                try {
                                                    i8 = iCeil;
                                                    try {
                                                        textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i23));
                                                    } catch (Exception unused) {
                                                        textLayoutBlock.maxRight = this.textWidth;
                                                        i23++;
                                                        iCeil = i8;
                                                    }
                                                } catch (Exception unused2) {
                                                    i8 = iCeil;
                                                }
                                                i23++;
                                                iCeil = i8;
                                            }
                                        }
                                        int i222 = iCeil;
                                        if (lineCount2 > 1) {
                                            staticLayout = staticLayoutMakeStaticLayout;
                                            int iMax = i222;
                                            int i24 = 0;
                                            float fMax2 = BitmapDescriptorFactory.HUE_RED;
                                            float fMax3 = BitmapDescriptorFactory.HUE_RED;
                                            boolean z10 = false;
                                            int iMax2 = iCeil42;
                                            CharSequence charSequence8 = charSequence7;
                                            while (i24 < lineCount2) {
                                                int i25 = lineCount2;
                                                try {
                                                    fDp2 = textLayoutBlock.textLayout.getLineWidth(i24);
                                                    arrayList3 = arrayList;
                                                } catch (Exception unused3) {
                                                    arrayList3 = arrayList;
                                                    fDp2 = BitmapDescriptorFactory.HUE_RED;
                                                }
                                                CharSequence charSequence9 = charSequence8;
                                                if (!textLayoutBlock.quote) {
                                                    f3 = textLayoutBlock.code ? 15.0f : 32.0f;
                                                    lineLeft = textLayoutBlock.textLayout.getLineLeft(i24);
                                                    if (fDp2 > iDp2 + 20) {
                                                        fDp2 = iDp2;
                                                        lineLeft = BitmapDescriptorFactory.HUE_RED;
                                                    }
                                                    if (lineLeft > BitmapDescriptorFactory.HUE_RED) {
                                                        i6 = iDp2;
                                                        if (textLayoutBlock.textLayout.getParagraphDirection(i24) != -1) {
                                                            textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                            i7 = 1;
                                                        }
                                                        if (!z10 && lineLeft == BitmapDescriptorFactory.HUE_RED) {
                                                            if (textLayoutBlock.textLayout.getParagraphDirection(i24) == i7) {
                                                                z10 = true;
                                                            }
                                                        }
                                                        fMax2 = Math.max(fMax2, fDp2);
                                                        float f7 = lineLeft + fDp2;
                                                        fMax3 = Math.max(fMax3, f7);
                                                        iMax = Math.max(iMax, (int) Math.ceil(fDp2));
                                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f7));
                                                        i24++;
                                                        lineCount2 = i25;
                                                        arrayList = arrayList3;
                                                        charSequence8 = charSequence9;
                                                        iDp2 = i6;
                                                    } else {
                                                        i6 = iDp2;
                                                    }
                                                    this.textXOffset = Math.min(this.textXOffset, lineLeft);
                                                    i7 = 1;
                                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                    this.hasRtl = true;
                                                    if (!z10) {
                                                    }
                                                    fMax2 = Math.max(fMax2, fDp2);
                                                    float f72 = lineLeft + fDp2;
                                                    fMax3 = Math.max(fMax3, f72);
                                                    iMax = Math.max(iMax, (int) Math.ceil(fDp2));
                                                    iMax2 = Math.max(iMax2, (int) Math.ceil(f72));
                                                    i24++;
                                                    lineCount2 = i25;
                                                    arrayList = arrayList3;
                                                    charSequence8 = charSequence9;
                                                    iDp2 = i6;
                                                }
                                                fDp2 += AndroidUtilities.dp(f3);
                                                lineLeft = textLayoutBlock.textLayout.getLineLeft(i24);
                                                if (fDp2 > iDp2 + 20) {
                                                }
                                                if (lineLeft > BitmapDescriptorFactory.HUE_RED) {
                                                }
                                                this.textXOffset = Math.min(this.textXOffset, lineLeft);
                                                i7 = 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                this.hasRtl = true;
                                                if (!z10) {
                                                }
                                                fMax2 = Math.max(fMax2, fDp2);
                                                float f722 = lineLeft + fDp2;
                                                fMax3 = Math.max(fMax3, f722);
                                                iMax = Math.max(iMax, (int) Math.ceil(fDp2));
                                                iMax2 = Math.max(iMax2, (int) Math.ceil(f722));
                                                i24++;
                                                lineCount2 = i25;
                                                arrayList = arrayList3;
                                                charSequence8 = charSequence9;
                                                iDp2 = i6;
                                            }
                                            int i26 = iDp2;
                                            arrayList2 = arrayList;
                                            charSequence2 = charSequence8;
                                            if (z10) {
                                                if (i3 == i4) {
                                                    this.lastLineWidth = iCeil42;
                                                }
                                                fMax2 = fMax3;
                                            } else if (i3 == i4) {
                                                this.lastLineWidth = iMax;
                                            }
                                            this.textWidth = Math.max(this.textWidth, (int) Math.ceil(fMax2));
                                            iCeil42 = iMax2;
                                            iDp2 = i26;
                                        } else {
                                            int i27 = iDp2;
                                            staticLayout = staticLayoutMakeStaticLayout;
                                            arrayList2 = arrayList;
                                            charSequence2 = charSequence7;
                                            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                                                float fMin = Math.min(this.textXOffset, f2);
                                                this.textXOffset = fMin;
                                                i5 = fMin == BitmapDescriptorFactory.HUE_RED ? (int) (f62 + f2) : i222;
                                                this.hasRtl = size != 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                            } else {
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                i5 = i222;
                                            }
                                            iDp2 = i27;
                                            this.textWidth = Math.max(this.textWidth, Math.min(iDp2, i5));
                                        }
                                        text = textLayoutBlock.languageLayout;
                                        if (text != null) {
                                            this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.dp(15.0f), textLayoutBlock.textLayout == null ? BitmapDescriptorFactory.HUE_RED : r8.getWidth()));
                                        }
                                        textLayoutBlock.spoilers.clear();
                                        if (!this.isSpoilersRevealed && !this.spoiledLoginCode) {
                                            if (textLayoutBlock.quote) {
                                                iDp4 = iCeil42 - AndroidUtilities.dp(32.0f);
                                            } else {
                                                if (textLayoutBlock.code) {
                                                    iCeil42 -= AndroidUtilities.dp(15.0f);
                                                }
                                                iDp4 = iCeil42;
                                            }
                                            SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iDp4, null, textLayoutBlock.spoilers);
                                        }
                                        i16 = i212;
                                        staticLayoutMakeStaticLayout = staticLayout;
                                        i3++;
                                        z = z5;
                                        textPaint3 = textPaint2;
                                        arrayList = arrayList2;
                                        charSequence7 = charSequence2;
                                    } else {
                                        fDp = AndroidUtilities.dp(32.0f);
                                    }
                                    lineWidth2 += fDp;
                                    iCeil = (int) Math.ceil(lineWidth2);
                                    if (iCeil > iDp2 + 80) {
                                    }
                                    i4 = size - 1;
                                    if (i3 == i4) {
                                    }
                                    float f622 = iCeil;
                                    int i2122 = i16;
                                    z5 = z;
                                    textPaint2 = textPaint3;
                                    int iCeil422 = (int) Math.ceil(f622 + Math.max(BitmapDescriptorFactory.HUE_RED, f2));
                                    if (textLayoutBlock.quote) {
                                    }
                                    int i2222 = iCeil;
                                    if (lineCount2 > 1) {
                                    }
                                    text = textLayoutBlock.languageLayout;
                                    if (text != null) {
                                    }
                                    textLayoutBlock.spoilers.clear();
                                    if (!this.isSpoilersRevealed) {
                                        i16 = i2122;
                                        staticLayoutMakeStaticLayout = staticLayout;
                                    }
                                    i3++;
                                    z = z5;
                                    textPaint3 = textPaint2;
                                    arrayList = arrayList2;
                                    charSequence7 = charSequence2;
                                }
                                if (!this.hasCode) {
                                    z4 = this.textWidth > this.generatedWithMinSize - AndroidUtilities.dp((float) (80 + ((!needDrawAvatarInternal() || isOutOwner() || this.messageOwner.isThreadMessage) ? 0 : 52)));
                                }
                                this.hasWideCode = z4;
                                this.factCheckText = null;
                                return;
                            }
                            int i28 = 0;
                            int i29 = 0;
                            while (i29 < iCeil3) {
                                int iMin = z2 ? lineCount : Math.min(i15, lineCount - i28);
                                int lineStart2 = staticLayoutMakeStaticLayout.getLineStart(i28);
                                int i30 = iMin + i28;
                                int i31 = maxMessageTextWidth;
                                int lineEnd2 = staticLayoutMakeStaticLayout.getLineEnd(i30 - 1);
                                int i32 = i28;
                                int i33 = lineEnd2 - 1;
                                if (i33 >= 0) {
                                    i2 = lineCount;
                                    if (i33 < staticLayoutMakeStaticLayout.getText().length()) {
                                        if (staticLayoutMakeStaticLayout.getText().charAt(i33) == '\n') {
                                            lineEnd2--;
                                        }
                                    }
                                    if (lineEnd2 >= lineStart2) {
                                        i28 = i32;
                                    } else {
                                        arrayList.add(new TextRange(lineStart2, lineEnd2));
                                        i28 = i30;
                                    }
                                    i29++;
                                    maxMessageTextWidth = i31;
                                    lineCount = i2;
                                } else {
                                    i2 = lineCount;
                                }
                                if (lineEnd2 >= lineStart2) {
                                }
                                i29++;
                                maxMessageTextWidth = i31;
                                lineCount = i2;
                            }
                        }
                        i = maxMessageTextWidth;
                        z3 = false;
                        int size2 = arrayList.size();
                        this.hasCodeAtTop = z3;
                        this.hasCodeAtBottom = z3;
                        this.hasQuoteAtBottom = z3;
                        this.hasSingleQuote = z3;
                        this.hasSingleCode = z3;
                        int i162 = i;
                        i3 = 0;
                        CharSequence charSequence72 = charSequence;
                        while (i3 < arrayList.size()) {
                        }
                        if (!this.hasCode) {
                        }
                        this.hasWideCode = z4;
                        this.factCheckText = null;
                        return;
                    }
                    f = 15.0f;
                }
                iDp2 = AndroidUtilities.dp(f) + maxMessageTextWidth;
                int lineCount3 = staticLayoutMakeStaticLayout.getLineCount();
                int i142 = this.totalAnimatedEmojiCount;
                if (i142 >= 50) {
                }
                if (Build.VERSION.SDK_INT >= 24) {
                }
                if (z2) {
                }
                arrayList = new ArrayList();
                if (charSequence instanceof Spanned) {
                    if (z2) {
                    }
                    i = maxMessageTextWidth;
                    z3 = false;
                    arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                }
                int size22 = arrayList.size();
                this.hasCodeAtTop = z3;
                this.hasCodeAtBottom = z3;
                this.hasQuoteAtBottom = z3;
                this.hasSingleQuote = z3;
                this.hasSingleCode = z3;
                int i1622 = i;
                i3 = 0;
                CharSequence charSequence722 = charSequence;
                while (i3 < arrayList.size()) {
                }
                if (!this.hasCode) {
                }
                this.hasWideCode = z4;
                this.factCheckText = null;
                return;
            }
            iDp = AndroidUtilities.dp(32.0f);
            StaticLayout staticLayoutMakeStaticLayout3 = makeStaticLayout(charSequence6, textPaint3, maxMessageTextWidth, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : BitmapDescriptorFactory.HUE_RED, this.emojiOnlyCount <= 0);
            charSequence = charSequence6;
            if (this.isRepostPreview) {
            }
            if (!this.hasSingleQuote) {
            }
            iDp2 = AndroidUtilities.dp(f) + maxMessageTextWidth;
            int lineCount32 = staticLayoutMakeStaticLayout3.getLineCount();
            int i1422 = this.totalAnimatedEmojiCount;
            if (i1422 >= 50) {
            }
            if (Build.VERSION.SDK_INT >= 24) {
            }
            if (z2) {
            }
            arrayList = new ArrayList();
            if (charSequence instanceof Spanned) {
            }
            int size222 = arrayList.size();
            this.hasCodeAtTop = z3;
            this.hasCodeAtBottom = z3;
            this.hasQuoteAtBottom = z3;
            this.hasSingleQuote = z3;
            this.hasSingleCode = z3;
            int i16222 = i;
            i3 = 0;
            CharSequence charSequence7222 = charSequence;
            while (i3 < arrayList.size()) {
            }
            if (!this.hasCode) {
            }
            this.hasWideCode = z4;
            this.factCheckText = null;
            return;
        } catch (Exception e4) {
            FileLog.e(e4);
            return;
        }
        maxMessageTextWidth -= iDp;
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
        }
        CharSequence charSequence62 = this.messageText;
    }

    public void generateLinkDescription() {
        boolean z;
        int i;
        Spannable.Factory factory;
        String str;
        TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory;
        TL_stories$StoryItem tL_stories$StoryItem;
        if (this.linkDescription != null) {
            return;
        }
        TLRPC.WebPage webPage = this.storyMentionWebpage;
        if (webPage == null) {
            webPage = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage ? ((TLRPC.TL_messageMediaWebPage) getMedia(this.messageOwner)).webpage : null;
        }
        if (webPage != null) {
            for (int i2 = 0; i2 < webPage.attributes.size(); i2++) {
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) webPage.attributes.get(i2);
                if ((webPageAttribute instanceof TLRPC.TL_webPageAttributeStory) && (tL_stories$StoryItem = (tL_webPageAttributeStory = (TLRPC.TL_webPageAttributeStory) webPageAttribute).storyItem) != null && tL_stories$StoryItem.caption != null) {
                    this.linkDescription = new SpannableStringBuilder(tL_webPageAttributeStory.storyItem.caption);
                    this.webPageDescriptionEntities = tL_webPageAttributeStory.storyItem.entities;
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (this.linkDescription != null) {
            i = 0;
        } else {
            if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage) && getMedia(this.messageOwner).webpage.description != null) {
                this.linkDescription = Spannable.Factory.getInstance().newSpannable(getMedia(this.messageOwner).webpage.description);
                String lowerCase = getMedia(this.messageOwner).webpage.site_name;
                if (lowerCase != null) {
                    lowerCase = lowerCase.toLowerCase();
                }
                if ("instagram".equals(lowerCase)) {
                    i = 1;
                } else if ("twitter".equals(lowerCase)) {
                    i = 2;
                }
            } else {
                if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) && getMedia(this.messageOwner).game.description != null) {
                    factory = Spannable.Factory.getInstance();
                    str = getMedia(this.messageOwner).game.description;
                } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && getMedia(this.messageOwner).description != null) {
                    factory = Spannable.Factory.getInstance();
                    str = getMedia(this.messageOwner).description;
                }
                this.linkDescription = factory.newSpannable(str);
            }
            i = 0;
        }
        if (TextUtils.isEmpty(this.linkDescription)) {
            return;
        }
        if (containsUrls(this.linkDescription)) {
            try {
                AndroidUtilities.addLinksSafe((Spannable) this.linkDescription, 1, false, true);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.linkDescription, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
        this.linkDescription = charSequenceReplaceEmoji;
        ArrayList<TLRPC.MessageEntity> arrayList = this.webPageDescriptionEntities;
        if (arrayList != null) {
            addEntitiesToText(charSequenceReplaceEmoji, arrayList, isOut(), z, false, !z);
            replaceAnimatedEmoji(this.linkDescription, this.webPageDescriptionEntities, Theme.chat_msgTextPaint.getFontMetricsInt());
        }
        if (i != 0) {
            if (!(this.linkDescription instanceof Spannable)) {
                this.linkDescription = new SpannableStringBuilder(this.linkDescription);
            }
            addUrlsByPattern(isOutOwner(), this.linkDescription, false, i, 0, false);
        }
    }

    public void generatePaymentSentMessageText(TLRPC.User user, boolean z) {
        String currencyString;
        String string;
        if (user == null) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()));
        }
        String firstName = user != null ? UserObject.getFirstName(user) : "";
        try {
            if ("XTR".equals(this.messageOwner.action.currency)) {
                currencyString = "XTR " + this.messageOwner.action.total_amount;
            } else {
                LocaleController localeController = LocaleController.getInstance();
                TLRPC.MessageAction messageAction = this.messageOwner.action;
                currencyString = localeController.formatCurrencyString(messageAction.total_amount, messageAction.currency);
            }
        } catch (Exception e) {
            FileLog.e(e);
            currencyString = "<error>";
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject == null || !(getMedia(messageObject) instanceof TLRPC.TL_messageMediaInvoice)) {
            TLRPC.MessageAction messageAction2 = this.messageOwner.action;
            int i = messageAction2.subscription_until_date;
            string = i != 0 ? z ? LocaleController.formatString(R.string.PaymentSuccessfullyPaidMeNoItemSubscription, firstName, currencyString, LocaleController.formatDateTime(i, false)) : LocaleController.formatString(R.string.PaymentSuccessfullyPaidSubscriptionNoItem, currencyString, firstName, LocaleController.formatDateTime(i, false)) : (!messageAction2.recurring_init || z) ? LocaleController.formatString(R.string.PaymentSuccessfullyPaidNoItem, currencyString, firstName) : LocaleController.formatString(R.string.PaymentSuccessfullyPaidNoItemRecurrent, currencyString, firstName);
        } else {
            TLRPC.MessageAction messageAction3 = this.messageOwner.action;
            string = messageAction3.subscription_until_date != 0 ? z ? LocaleController.formatString(R.string.PaymentSuccessfullyPaidMeSubscription, firstName, currencyString, getMedia(this.replyMessageObject).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false)) : LocaleController.formatString(R.string.PaymentSuccessfullyPaidSubscription, currencyString, firstName, getMedia(this.replyMessageObject).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false)) : (!messageAction3.recurring_init || z) ? LocaleController.formatString(R.string.PaymentSuccessfullyPaid, currencyString, firstName, getMedia(this.replyMessageObject).title) : LocaleController.formatString(R.string.PaymentSuccessfullyPaidRecurrent, currencyString, firstName, getMedia(this.replyMessageObject).title);
        }
        this.messageText = string;
        this.messageText = StarsIntroActivity.replaceStars(this.messageText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0265 A[PHI: r0
      0x0265: PHI (r0v4 java.lang.CharSequence) = 
      (r0v2 java.lang.CharSequence)
      (r0v6 java.lang.CharSequence)
      (r0v8 java.lang.CharSequence)
      (r0v9 java.lang.CharSequence)
      (r0v11 java.lang.CharSequence)
      (r0v18 java.lang.CharSequence)
      (r0v20 java.lang.CharSequence)
      (r0v22 java.lang.CharSequence)
      (r0v24 java.lang.CharSequence)
      (r0v26 java.lang.CharSequence)
      (r0v28 java.lang.CharSequence)
      (r0v30 java.lang.CharSequence)
      (r0v32 java.lang.CharSequence)
      (r0v34 java.lang.CharSequence)
      (r0v36 java.lang.CharSequence)
      (r0v38 java.lang.CharSequence)
     binds: [B:134:0x0262, B:55:0x00da, B:131:0x0259, B:128:0x0250, B:90:0x016a, B:85:0x0156, B:82:0x014c, B:75:0x012a, B:70:0x0116, B:65:0x0102, B:60:0x00ee, B:46:0x00b8, B:41:0x00a6, B:36:0x0094, B:31:0x0082, B:26:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.telegram.tgnet.TLRPC$Chat] */
    /* JADX WARN: Type inference failed for: r9v1, types: [org.telegram.tgnet.TLRPC$Chat] */
    /* JADX WARN: Type inference failed for: r9v8, types: [org.telegram.tgnet.TLRPC$Chat] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generatePinMessageText(TLRPC.User user, TLRPC.Chat chat) {
        CharSequence string;
        CharSequence charSequenceReplaceWithLink;
        boolean z;
        MessagesController messagesController;
        long j;
        if (user == null && chat == 0) {
            if (isFromUser()) {
                user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
            }
            if (user == null) {
                TLRPC.Peer peer = this.messageOwner.peer_id;
                if (peer instanceof TLRPC.TL_peerChannel) {
                    messagesController = MessagesController.getInstance(this.currentAccount);
                    j = this.messageOwner.peer_id.channel_id;
                } else if (peer instanceof TLRPC.TL_peerChat) {
                    messagesController = MessagesController.getInstance(this.currentAccount);
                    j = this.messageOwner.peer_id.chat_id;
                }
                chat = messagesController.getChat(Long.valueOf(j));
            }
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if ((message instanceof TLRPC.TL_messageEmpty) || (message.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                string = LocaleController.getString(R.string.ActionPinnedNoText);
                if (user == null) {
                    user = chat;
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (messageObject.isMusic()) {
                string = LocaleController.getString(R.string.ActionPinnedMusic);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (this.replyMessageObject.isVideo()) {
                string = LocaleController.getString(R.string.ActionPinnedVideo);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (this.replyMessageObject.isGif()) {
                string = LocaleController.getString(R.string.ActionPinnedGif);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (this.replyMessageObject.isVoice()) {
                string = LocaleController.getString(R.string.ActionPinnedVoice);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (this.replyMessageObject.isRoundVideo()) {
                string = LocaleController.getString(R.string.ActionPinnedRound);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if ((this.replyMessageObject.isSticker() || this.replyMessageObject.isAnimatedSticker()) && !this.replyMessageObject.isAnimatedEmoji()) {
                string = LocaleController.getString(R.string.ActionPinnedSticker);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaDocument) {
                string = LocaleController.getString(R.string.ActionPinnedFile);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeo) {
                string = LocaleController.getString(R.string.ActionPinnedGeo);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeoLive) {
                string = LocaleController.getString(R.string.ActionPinnedGeoLive);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaContact) {
                string = LocaleController.getString(R.string.ActionPinnedContact);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPoll) {
                if (((TLRPC.TL_messageMediaPoll) getMedia(this.replyMessageObject)).poll.quiz) {
                    string = LocaleController.getString(R.string.ActionPinnedQuiz);
                    if (user == null) {
                    }
                    charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
                } else {
                    string = LocaleController.getString(R.string.ActionPinnedPoll);
                    if (user == null) {
                    }
                    charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
                }
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPhoto) {
                string = LocaleController.getString(R.string.ActionPinnedPhoto);
                if (user == null) {
                }
                charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPaidMedia) {
                charSequenceReplaceWithLink = LocaleController.formatPluralString("NotificationPinnedPaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) getMedia(this.replyMessageObject)).stars_amount, chat != 0 ? chat.title : UserObject.getUserName(user));
            } else if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGame) {
                String string2 = LocaleController.formatString("ActionPinnedGame", R.string.ActionPinnedGame, "🎮 " + getMedia(this.replyMessageObject).game.title);
                if (user == null) {
                    user = chat;
                }
                CharSequence charSequenceReplaceWithLink2 = replaceWithLink(string2, "un1", user);
                this.messageText = charSequenceReplaceWithLink2;
                charSequenceReplaceWithLink = Emoji.replaceEmoji(charSequenceReplaceWithLink2, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
            } else {
                CharSequence charSequence = this.replyMessageObject.messageText;
                if (charSequence == null || charSequence.length() <= 0) {
                    string = LocaleController.getString(R.string.ActionPinnedNoText);
                    if (user == null) {
                    }
                    charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
                } else {
                    CharSequence charSequenceCloneSpans = AnimatedEmojiSpan.cloneSpans(this.replyMessageObject.messageText);
                    if (charSequenceCloneSpans.length() > 20) {
                        charSequenceCloneSpans = charSequenceCloneSpans.subSequence(0, 20);
                        z = true;
                    } else {
                        z = false;
                    }
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceCloneSpans, Theme.chat_msgTextPaint.getFontMetricsInt(), true);
                    MessageObject messageObject2 = this.replyMessageObject;
                    if (messageObject2 != null && messageObject2.messageOwner != null) {
                        charSequenceReplaceEmoji = messageObject2.replaceAnimatedEmoji(charSequenceReplaceEmoji, Theme.chat_msgTextPaint.getFontMetricsInt());
                    }
                    MediaDataController.addTextStyleRuns(this.replyMessageObject, (Spannable) charSequenceReplaceEmoji);
                    if (z) {
                        if (charSequenceReplaceEmoji instanceof SpannableStringBuilder) {
                            ((SpannableStringBuilder) charSequenceReplaceEmoji).append((CharSequence) "...");
                        } else if (charSequenceReplaceEmoji != null) {
                            charSequenceReplaceEmoji = new SpannableStringBuilder(charSequenceReplaceEmoji).append((CharSequence) "...");
                        }
                    }
                    string = AndroidUtilities.formatSpannable(LocaleController.getString(R.string.ActionPinnedText), charSequenceReplaceEmoji);
                    if (user == null) {
                    }
                    charSequenceReplaceWithLink = replaceWithLink(string, "un1", user);
                }
            }
        }
        this.messageText = charSequenceReplaceWithLink;
    }

    @Deprecated
    public void generateSuggestionApprovalMessageText() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x021f, code lost:
    
        if (r9.isEmpty() == false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0357, code lost:
    
        if (r9.isEmpty() == false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0359, code lost:
    
        r9 = r8.photoThumbs;
        r1 = r0.thumbs;
        r0 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [org.telegram.tgnet.TLRPC$Document] */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.telegram.tgnet.TLRPC$Document] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v24, types: [org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r0v43, types: [org.telegram.tgnet.TLRPC$Photo] */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v60, types: [org.telegram.tgnet.TLRPC$Photo] */
    /* JADX WARN: Type inference failed for: r0v61, types: [org.telegram.tgnet.TLRPC$Document] */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v82 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r1v11, types: [org.telegram.tgnet.TLRPC$Document] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateThumbs(boolean z) {
        TLObject tLObject;
        ArrayList<TLRPC.PhotoSize> arrayList;
        ArrayList<TLRPC.PhotoSize> arrayList2;
        ?? document;
        ArrayList<TLRPC.PhotoSize> arrayList3;
        ArrayList<TLRPC.PhotoSize> arrayList4;
        ArrayList<TLRPC.PhotoSize> arrayList5;
        ArrayList<TLRPC.PhotoSize> arrayList6;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        TLRPC.Document document2;
        ArrayList<TLRPC.PhotoSize> arrayList7;
        ArrayList<TLRPC.PhotoSize> arrayList8;
        ArrayList<TLRPC.PhotoSize> arrayList9;
        ArrayList<TLRPC.PhotoSize> arrayList10;
        ArrayList<TLRPC.PhotoSize> arrayList11;
        ArrayList<TLRPC.PhotoSize> arrayList12;
        ArrayList<TLRPC.PhotoSize> arrayList13;
        if (!hasExtendedMediaPreview()) {
            TLRPC.Message message = this.messageOwner;
            if (message instanceof TLRPC.TL_messageService) {
                TLRPC.MessageAction messageAction = message.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionChatEditPhoto)) {
                    return;
                }
                TLRPC.Photo photo3 = messageAction.photo;
                if (z) {
                    ArrayList<TLRPC.PhotoSize> arrayList14 = this.photoThumbs;
                    if (arrayList14 != null && !arrayList14.isEmpty()) {
                        for (int i = 0; i < this.photoThumbs.size(); i++) {
                            TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                            int i2 = 0;
                            while (true) {
                                if (i2 < photo3.sizes.size()) {
                                    TLRPC.PhotoSize photoSize2 = (TLRPC.PhotoSize) photo3.sizes.get(i2);
                                    if (!(photoSize2 instanceof TLRPC.TL_photoSizeEmpty) && photoSize2.type.equals(photoSize.type)) {
                                        photoSize.location = photoSize2.location;
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                } else {
                    this.photoThumbs = new ArrayList<>(photo3.sizes);
                }
                if (photo3.dc_id != 0 && (arrayList13 = this.photoThumbs) != null) {
                    int size = arrayList13.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        TLRPC.FileLocation fileLocation = this.photoThumbs.get(i3).location;
                        if (fileLocation != null) {
                            fileLocation.dc_id = photo3.dc_id;
                            fileLocation.file_reference = photo3.file_reference;
                        }
                    }
                }
                tLObject = this.messageOwner.action.photo;
            } else {
                if (this.emojiAnimatedSticker == null && this.emojiAnimatedStickerId == null) {
                    if (getMedia(message) == null || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty)) {
                        TLRPC.MessageMedia messageMedia = this.sponsoredMedia;
                        if (messageMedia != null) {
                            TLRPC.Photo photo4 = messageMedia.photo;
                            document = messageMedia.document;
                            if (photo4 != null) {
                                if (!z || (arrayList4 = this.photoThumbs) == null) {
                                    this.photoThumbs = new ArrayList<>(photo4.sizes);
                                    photo2 = photo4;
                                } else {
                                    photo2 = photo4;
                                    if (!arrayList4.isEmpty()) {
                                        arrayList5 = this.photoThumbs;
                                        arrayList6 = photo4.sizes;
                                        photo = photo4;
                                        updatePhotoSizeLocations(arrayList5, arrayList6);
                                        photo2 = photo;
                                    }
                                }
                                this.photoThumbsObject = photo2;
                                return;
                            }
                            if (document == 0 || !isDocumentHasThumb(document)) {
                                return;
                            }
                            if (z) {
                                ArrayList<TLRPC.PhotoSize> arrayList15 = this.photoThumbs;
                                if (arrayList15 != null) {
                                    document2 = document;
                                }
                            } else {
                                arrayList3 = new ArrayList<>();
                                document = document;
                                this.photoThumbs = arrayList3;
                                arrayList3.addAll(document.thumbs);
                            }
                        } else {
                            if (this.sponsoredPhoto == null) {
                                return;
                            }
                            if (!z || (arrayList2 = this.photoThumbs) == null) {
                                this.photoThumbs = new ArrayList<>(this.sponsoredPhoto.sizes);
                            } else if (!arrayList2.isEmpty()) {
                                updatePhotoSizeLocations(this.photoThumbs, this.sponsoredPhoto.sizes);
                            }
                            this.photoThumbsObject = this.sponsoredPhoto;
                            if (this.strippedThumb != null) {
                                return;
                            }
                        }
                    } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                        TLRPC.Photo photo5 = getMedia(this.messageOwner).photo;
                        if (z && ((arrayList12 = this.photoThumbs) == null || arrayList12.size() == photo5.sizes.size())) {
                            ArrayList<TLRPC.PhotoSize> arrayList16 = this.photoThumbs;
                            if (arrayList16 != null && !arrayList16.isEmpty()) {
                                for (int i4 = 0; i4 < this.photoThumbs.size(); i4++) {
                                    TLRPC.PhotoSize photoSize3 = this.photoThumbs.get(i4);
                                    if (photoSize3 != null) {
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 >= photo5.sizes.size()) {
                                                break;
                                            }
                                            TLRPC.PhotoSize photoSize4 = (TLRPC.PhotoSize) photo5.sizes.get(i5);
                                            if (photoSize4 != null && !(photoSize4 instanceof TLRPC.TL_photoSizeEmpty)) {
                                                if (photoSize4.type.equals(photoSize3.type)) {
                                                    photoSize3.location = photoSize4.location;
                                                    break;
                                                }
                                                if ("s".equals(photoSize3.type) && (photoSize4 instanceof TLRPC.TL_photoStrippedSize)) {
                                                    this.photoThumbs.set(i4, photoSize4);
                                                    break;
                                                }
                                            }
                                            i5++;
                                        }
                                    }
                                }
                            }
                        } else {
                            this.photoThumbs = new ArrayList<>(photo5.sizes);
                        }
                        tLObject = getMedia(this.messageOwner).photo;
                    } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                        document = ((TLRPC.TL_messageMediaDocument) getMedia(this.messageOwner)).video_cover;
                        if (document == 0) {
                            document = getDocument();
                            if (!isDocumentHasThumb(document)) {
                                return;
                            }
                            if (!z || (r9 = this.photoThumbs) == null) {
                                arrayList3 = new ArrayList<>();
                                document = document;
                                this.photoThumbs = arrayList3;
                                arrayList3.addAll(document.thumbs);
                            } else {
                                document2 = document;
                            }
                        } else if (z && ((arrayList11 = this.photoThumbs) == null || arrayList11.size() == document.sizes.size())) {
                            ArrayList<TLRPC.PhotoSize> arrayList17 = this.photoThumbs;
                            if (arrayList17 != null && !arrayList17.isEmpty()) {
                                for (int i6 = 0; i6 < this.photoThumbs.size(); i6++) {
                                    TLRPC.PhotoSize photoSize5 = this.photoThumbs.get(i6);
                                    if (photoSize5 != null) {
                                        int i7 = 0;
                                        while (true) {
                                            if (i7 >= document.sizes.size()) {
                                                break;
                                            }
                                            TLRPC.PhotoSize photoSize6 = (TLRPC.PhotoSize) document.sizes.get(i7);
                                            if (photoSize6 != null && !(photoSize6 instanceof TLRPC.TL_photoSizeEmpty)) {
                                                if (photoSize6.type.equals(photoSize5.type)) {
                                                    photoSize5.location = photoSize6.location;
                                                    break;
                                                }
                                                if ("s".equals(photoSize5.type) && (photoSize6 instanceof TLRPC.TL_photoStrippedSize)) {
                                                    this.photoThumbs.set(i6, photoSize6);
                                                    break;
                                                }
                                            }
                                            i7++;
                                        }
                                    }
                                }
                            }
                        } else {
                            arrayList7 = new ArrayList<>(document.sizes);
                            document = document;
                            this.photoThumbs = arrayList7;
                        }
                    } else {
                        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                            TLRPC.Document document3 = getMedia(this.messageOwner).game.document;
                            if (document3 != null && isDocumentHasThumb(document3)) {
                                if (z) {
                                    ArrayList<TLRPC.PhotoSize> arrayList18 = this.photoThumbs;
                                    if (arrayList18 != null && !arrayList18.isEmpty()) {
                                        updatePhotoSizeLocations(this.photoThumbs, document3.thumbs);
                                    }
                                } else {
                                    ArrayList<TLRPC.PhotoSize> arrayList19 = new ArrayList<>();
                                    this.photoThumbs = arrayList19;
                                    arrayList19.addAll(document3.thumbs);
                                }
                                this.photoThumbsObject = document3;
                            }
                            TLRPC.Photo photo6 = getMedia(this.messageOwner).game.photo;
                            if (photo6 != null) {
                                if (!z || (arrayList10 = this.photoThumbs2) == null) {
                                    this.photoThumbs2 = new ArrayList<>(photo6.sizes);
                                } else if (!arrayList10.isEmpty()) {
                                    updatePhotoSizeLocations(this.photoThumbs2, photo6.sizes);
                                }
                                this.photoThumbsObject2 = photo6;
                            }
                            if (this.photoThumbs != null || (arrayList9 = this.photoThumbs2) == null) {
                                return;
                            }
                            this.photoThumbs = arrayList9;
                            this.photoThumbs2 = null;
                            this.photoThumbsObject = this.photoThumbsObject2;
                            this.photoThumbsObject2 = null;
                            return;
                        }
                        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage)) {
                            return;
                        }
                        document = getMedia(this.messageOwner).webpage.photo;
                        ?? r1 = getMedia(this.messageOwner).webpage.document;
                        if (document == 0) {
                            if (r1 == 0 || !isDocumentHasThumb(r1)) {
                                return;
                            }
                            if (z) {
                                ArrayList<TLRPC.PhotoSize> arrayList20 = this.photoThumbs;
                                photo2 = r1;
                                if (arrayList20 != null) {
                                    photo2 = r1;
                                    if (!arrayList20.isEmpty()) {
                                        arrayList5 = this.photoThumbs;
                                        arrayList6 = r1.thumbs;
                                        photo = r1;
                                        updatePhotoSizeLocations(arrayList5, arrayList6);
                                        photo2 = photo;
                                    }
                                }
                            } else {
                                ArrayList<TLRPC.PhotoSize> arrayList21 = new ArrayList<>();
                                this.photoThumbs = arrayList21;
                                arrayList21.addAll(r1.thumbs);
                                photo2 = r1;
                            }
                            this.photoThumbsObject = photo2;
                            return;
                        }
                        if (!z || (arrayList8 = this.photoThumbs) == null) {
                            arrayList7 = new ArrayList<>(document.sizes);
                            document = document;
                            this.photoThumbs = arrayList7;
                        } else if (!arrayList8.isEmpty()) {
                            ArrayList<TLRPC.PhotoSize> arrayList22 = this.photoThumbs;
                            ArrayList<TLRPC.PhotoSize> arrayList23 = document.sizes;
                            document = document;
                            updatePhotoSizeLocations(arrayList22, arrayList23);
                        }
                    }
                    this.photoThumbsObject = document;
                    return;
                }
                if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor) || !isDocumentHasThumb(this.emojiAnimatedSticker)) {
                    return;
                }
                if (!z || (arrayList = this.photoThumbs) == null) {
                    ArrayList<TLRPC.PhotoSize> arrayList24 = new ArrayList<>();
                    this.photoThumbs = arrayList24;
                    arrayList24.addAll(this.emojiAnimatedSticker.thumbs);
                } else if (!arrayList.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, this.emojiAnimatedSticker.thumbs);
                }
                tLObject = this.emojiAnimatedSticker;
            }
            this.photoThumbsObject = tLObject;
            return;
        }
        TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) this.messageOwner.media.extended_media.get(0);
        if (z) {
            updatePhotoSizeLocations(this.photoThumbs, Collections.singletonList(tL_messageExtendedMediaPreview.thumb));
        } else {
            this.photoThumbs = new ArrayList<>(Collections.singletonList(tL_messageExtendedMediaPreview.thumb));
        }
        this.photoThumbsObject = this.messageOwner;
        if (this.strippedThumb != null) {
            return;
        }
        createStrippedThumb();
    }

    public int getApproximateHeight() {
        return getApproximateHeight(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getApproximateHeight(boolean z) {
        int iDp;
        float f;
        float f2;
        int iMin;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        int iMin2;
        int i = this.type;
        int iDp2 = 0;
        if (i == 0) {
            int iTextHeightCached = z ? textHeightCached() : textHeight();
            if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) {
                iDp2 = AndroidUtilities.dp(100.0f);
            }
            int i2 = iTextHeightCached + iDp2;
            return isReply() ? i2 + AndroidUtilities.dp(42.0f) : i2;
        }
        if (i == 20) {
            return AndroidUtilities.getPhotoSize();
        }
        if (i == 2) {
            return AndroidUtilities.dp(72.0f);
        }
        if (i == 12) {
            return AndroidUtilities.dp(71.0f);
        }
        if (i == 9) {
            return AndroidUtilities.dp(100.0f);
        }
        if (i == 4) {
            return AndroidUtilities.dp(114.0f);
        }
        if (i == 14) {
            return AndroidUtilities.dp(82.0f);
        }
        if (i == 10) {
            return AndroidUtilities.dp(30.0f);
        }
        if (i == 11 || i == 18 || i == 30 || i == 25 || i == 21) {
            return AndroidUtilities.dp(50.0f);
        }
        if (i == 5) {
            return AndroidUtilities.roundMessageSize;
        }
        if (i == 19) {
            return (z ? textHeightCached() : textHeight()) + AndroidUtilities.dp(30.0f);
        }
        if (i == 13 || i == 15) {
            float f3 = AndroidUtilities.displaySize.y * 0.4f;
            float minTabletSide = (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : AndroidUtilities.displaySize.x) * 0.5f;
            TLRPC.Document document = getDocument();
            if (document != null) {
                int size = document.attributes.size();
                for (int i3 = 0; i3 < size; i3++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                        iDp2 = documentAttribute.w;
                        iDp = documentAttribute.h;
                        break;
                    }
                }
                iDp = 0;
                if (iDp2 == 0) {
                    iDp = (int) f3;
                    iDp2 = AndroidUtilities.dp(100.0f) + iDp;
                }
                f = iDp;
                if (f > f3) {
                    iDp2 = (int) (iDp2 * (f3 / f));
                    iDp = (int) f3;
                }
                f2 = iDp2;
                if (f2 > minTabletSide) {
                    iDp = (int) (iDp * (minTabletSide / f2));
                }
            } else {
                iDp = 0;
                if (iDp2 == 0) {
                }
                f = iDp;
                if (f > f3) {
                }
                f2 = iDp2;
                if (f2 > minTabletSide) {
                }
            }
        } else {
            if (AndroidUtilities.isTablet()) {
                iMin = AndroidUtilities.getMinTabletSide();
            } else {
                Point point = AndroidUtilities.displaySize;
                iMin = Math.min(point.x, point.y);
            }
            int photoSize = (int) (iMin * 0.7f);
            iDp = AndroidUtilities.dp(100.0f) + photoSize;
            if (photoSize > AndroidUtilities.getPhotoSize()) {
                photoSize = AndroidUtilities.getPhotoSize();
            }
            if (iDp > AndroidUtilities.getPhotoSize()) {
                iDp = AndroidUtilities.getPhotoSize();
            }
            if (z) {
                ArrayList<TLRPC.PhotoSize> arrayList = this.photoThumbs;
                closestPhotoSizeWithSize = (arrayList == null || arrayList.isEmpty()) ? null : this.photoThumbs.get(0);
            } else {
                closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize());
            }
            if (closestPhotoSizeWithSize != null) {
                int iDp3 = (int) (closestPhotoSizeWithSize.h / (closestPhotoSizeWithSize.w / photoSize));
                if (iDp3 == 0) {
                    iDp3 = AndroidUtilities.dp(100.0f);
                }
                if (iDp3 <= iDp) {
                    iDp = iDp3 < AndroidUtilities.dp(120.0f) ? AndroidUtilities.dp(120.0f) : iDp3;
                }
                if (!z && needDrawBluredPreview()) {
                    if (AndroidUtilities.isTablet()) {
                        iMin2 = AndroidUtilities.getMinTabletSide();
                    } else {
                        Point point2 = AndroidUtilities.displaySize;
                        iMin2 = Math.min(point2.x, point2.y);
                    }
                    iDp = (int) (iMin2 * 0.5f);
                }
            }
        }
        return iDp + AndroidUtilities.dp(14.0f);
    }

    public int getApproximateHeightCached() {
        Integer num = this.cachedApproximateHeight;
        if (num != null) {
            return num.intValue();
        }
        int approximateHeight = getApproximateHeight(true);
        this.cachedApproximateHeight = Integer.valueOf(approximateHeight);
        return approximateHeight;
    }

    public String getArtworkUrl(boolean z) {
        TLRPC.Document document = getDocument();
        if (document == null || "audio/ogg".equals(document.mime_type)) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                if (documentAttribute.voice) {
                    return null;
                }
                String strReplace = documentAttribute.performer;
                String str = documentAttribute.title;
                if (!TextUtils.isEmpty(strReplace)) {
                    int i2 = 0;
                    while (true) {
                        String[] strArr = excludeWords;
                        if (i2 >= strArr.length) {
                            break;
                        }
                        strReplace = strReplace.replace(strArr[i2], " ");
                        i2++;
                    }
                }
                if (TextUtils.isEmpty(strReplace) && TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("athumb://itunes.apple.com/search?term=");
                    sb.append(URLEncoder.encode(strReplace + " - " + str, "UTF-8"));
                    sb.append("&entity=song&limit=4");
                    sb.append(z ? "&s=1" : "");
                    return sb.toString();
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public long getChannelId() {
        return getChannelId(this.messageOwner);
    }

    public long getChatId() {
        TLRPC.Peer peer = this.messageOwner.peer_id;
        if (peer instanceof TLRPC.TL_peerChat) {
            return peer.chat_id;
        }
        if (peer instanceof TLRPC.TL_peerChannel) {
            return peer.channel_id;
        }
        return 0L;
    }

    public int getChatMode() {
        if (this.scheduled) {
            return 1;
        }
        return isQuickReply() ? 5 : 0;
    }

    public ArrayList<ReactionsLayoutInBubble.VisibleReaction> getChoosenReactions() {
        ArrayList<ReactionsLayoutInBubble.VisibleReaction> arrayList = new ArrayList<>();
        if (this.messageOwner.reactions == null) {
            return arrayList;
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).chosen) {
                arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromTL(((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction));
            }
        }
        return arrayList;
    }

    public long getDialogId() {
        return getDialogId(this.messageOwner);
    }

    public String getDiceEmoji() {
        if (!isDice()) {
            return null;
        }
        TLRPC.TL_messageMediaDice tL_messageMediaDice = (TLRPC.TL_messageMediaDice) getMedia(this.messageOwner);
        return TextUtils.isEmpty(tL_messageMediaDice.emoticon) ? "🎲" : tL_messageMediaDice.emoticon.replace("️", "");
    }

    public int getDiceValue() {
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
            return ((TLRPC.TL_messageMediaDice) getMedia(this.messageOwner)).value;
        }
        return -1;
    }

    public TLRPC.Document getDocument() {
        VideoPlayer.VideoUri videoUri;
        TLRPC.Document document = this.emojiAnimatedSticker;
        return document != null ? document : (!hasVideoQualities() || (videoUri = this.highestQuality) == null) ? getDocument(this.messageOwner) : videoUri.document;
    }

    public TLRPC.Document getDocumentFast() {
        TLRPC.Document document = this.emojiAnimatedSticker;
        return document != null ? document : getDocument(this.messageOwner);
    }

    public String getDocumentName() {
        return FileLoader.getDocumentFileName(getDocument());
    }

    public double getDuration() {
        TL_stories$StoryItem tL_stories$StoryItem;
        TLRPC.MessageMedia messageMedia;
        double d = this.attributeDuration;
        if (d > 0.0d) {
            return d;
        }
        TLRPC.Document document = getDocument();
        if (document == null && this.type == 23 && (tL_stories$StoryItem = getMedia(this.messageOwner).storyItem) != null && (messageMedia = tL_stories$StoryItem.media) != null) {
            document = messageMedia.document;
        }
        if (document == null) {
            return 0.0d;
        }
        int i = this.audioPlayerDuration;
        if (i > 0) {
            return i;
        }
        for (int i2 = 0; i2 < document.attributes.size(); i2++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                double d2 = documentAttribute.duration;
                this.attributeDuration = d2;
                return d2;
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                double d3 = documentAttribute.duration;
                this.attributeDuration = d3;
                return d3;
            }
        }
        return this.audioPlayerDuration;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getEditedSuggestionFlags() {
        TLRPC.SuggestedPost suggestedPost;
        TLRPC.SuggestedPost suggestedPost2;
        TLRPC.Document document;
        TLRPC.Document document2;
        TLRPC.Photo photo;
        MessageObject messageObject = this.replyMessageObject;
        TLRPC.Message message = messageObject != null ? messageObject.messageOwner : null;
        TLRPC.Message message2 = this.messageOwner;
        if (message == null || (suggestedPost = message.suggested_post) == null || message2 == null || (suggestedPost2 = message2.suggested_post) == null) {
            return 0;
        }
        int i = !AmountUtils$Amount.equals(suggestedPost.price, suggestedPost2.price) ? 1 : 0;
        if (suggestedPost.schedule_date != suggestedPost2.schedule_date) {
            i |= 2;
        }
        if (!TextUtils.equals(this.messageText, this.replyMessageObject.messageText)) {
            i |= 4;
        }
        if (!TextUtils.equals(this.caption, this.replyMessageObject.caption)) {
            i |= 4;
        }
        TLRPC.MessageMedia messageMedia = message.media;
        TLRPC.MessageMedia messageMedia2 = message2.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaEmpty) {
            messageMedia = null;
        }
        TLRPC.MessageMedia messageMedia3 = messageMedia2 instanceof TLRPC.TL_messageMediaEmpty ? null : messageMedia2;
        if (messageMedia == null || messageMedia3 == null) {
            if ((messageMedia == null) == (messageMedia3 == null)) {
                return i;
            }
        } else if (messageMedia.getClass() == messageMedia3.getClass()) {
            TLRPC.Photo photo2 = messageMedia.photo;
            if (photo2 == null || (photo = messageMedia3.photo) == null) {
                if ((photo2 == null) != (messageMedia3.photo == null)) {
                    i |= 8;
                }
                document = messageMedia.document;
                if (document != null || (document2 = messageMedia3.document) == null) {
                    if ((document != null) == (messageMedia3.document == null)) {
                        return i;
                    }
                } else if (document.id == document2.id) {
                    return i;
                }
            } else {
                if (photo2.id != photo.id) {
                }
                document = messageMedia.document;
                if (document != null) {
                    if ((document != null) == (messageMedia3.document == null)) {
                    }
                }
            }
        }
        return i | 8;
    }

    public TLRPC.TL_availableEffect getEffect() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || (message.flags2 & 4) == 0) {
            return null;
        }
        return MessagesController.getInstance(this.currentAccount).getEffect(this.messageOwner.effect);
    }

    public long getEffectId() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || (message.flags2 & 4) == 0) {
            return 0L;
        }
        return message.effect;
    }

    public int getEmojiOnlyCount() {
        return this.emojiOnlyCount;
    }

    public String getExtension() {
        String fileName = getFileName();
        int iLastIndexOf = fileName.lastIndexOf(46);
        String strSubstring = iLastIndexOf != -1 ? fileName.substring(iLastIndexOf + 1) : null;
        if (strSubstring == null || strSubstring.length() == 0) {
            strSubstring = getDocument().mime_type;
        }
        if (strSubstring == null) {
            strSubstring = "";
        }
        return strSubstring.toUpperCase();
    }

    public TLRPC.TL_factCheck getFactCheck() {
        return FactCheckController.getInstance(this.currentAccount).getFactCheck(this);
    }

    public CharSequence getFactCheckText() {
        if (!isFactCheckable()) {
            return null;
        }
        TLRPC.TL_factCheck factCheck = getFactCheck();
        if (factCheck == null || factCheck.text == null) {
            this.factCheckText = null;
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(factCheck.text.text);
        addEntitiesToText(spannableStringBuilder, factCheck.text.entities, isOutOwner(), false, false, false);
        this.factCheckText = spannableStringBuilder;
        return spannableStringBuilder;
    }

    public String getFileName() {
        return getDocument() != null ? getFileName(getDocument()) : getFileName(this.messageOwner);
    }

    public String getFileNameFast() {
        return getDocumentFast() != null ? getFileName(getDocumentFast()) : getFileName(this.messageOwner);
    }

    public Long getForwardedFromId() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (messageFwdHeader = message.fwd_from) == null || (peer = messageFwdHeader.from_id) == null) {
            return null;
        }
        return Long.valueOf(DialogObject.getPeerDialogId(peer));
    }

    public String getForwardedName() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        if (messageFwdHeader == null) {
            return null;
        }
        TLRPC.Peer peer = messageFwdHeader.from_id;
        if (peer instanceof TLRPC.TL_peerChannel) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.channel_id));
            if (chat != null) {
                return chat.title;
            }
            return null;
        }
        if (peer instanceof TLRPC.TL_peerChat) {
            TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.chat_id));
            if (chat2 != null) {
                return chat2.title;
            }
            return null;
        }
        if (peer instanceof TLRPC.TL_peerUser) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.fwd_from.from_id.user_id));
            if (user != null) {
                return UserObject.getUserName(user);
            }
            return null;
        }
        String str = messageFwdHeader.from_name;
        if (str != null) {
            return str;
        }
        return null;
    }

    public long getFromChatId() {
        return getFromChatId(this.messageOwner);
    }

    public TLRPC.Peer getFromPeer() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            return message.from_id;
        }
        return null;
    }

    public TLObject getFromPeerObject() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.Peer peer = message.from_id;
        if ((peer instanceof TLRPC.TL_peerChannel_layer131) || (peer instanceof TLRPC.TL_peerChannel)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.channel_id));
        }
        if ((peer instanceof TLRPC.TL_peerUser_layer131) || (peer instanceof TLRPC.TL_peerUser)) {
            return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
        }
        if ((peer instanceof TLRPC.TL_peerChat_layer131) || (peer instanceof TLRPC.TL_peerChat)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.chat_id));
        }
        return null;
    }

    public long getGroupId() {
        long j = this.localGroupId;
        return j != 0 ? j : getGroupIdForUse();
    }

    public long getGroupIdForUse() {
        long j = this.localSentGroupId;
        return j != 0 ? j : this.messageOwner.grouped_id;
    }

    public int getId() {
        return this.messageOwner.id;
    }

    public BotInlineKeyboard.Source getInlineBotButtons() {
        return this.inlineKeyboardSource;
    }

    public TLRPC.InputStickerSet getInputStickerSet() {
        return getInputStickerSet(this.messageOwner);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getMaxMessageTextWidth() {
        int iDp;
        int iDp2;
        int iDp3;
        this.generatedWithMinSize = (!AndroidUtilities.isTablet() || this.eventId == 0) ? AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : getParentWidth() : AndroidUtilities.dp(530.0f);
        this.generatedWithDensity = AndroidUtilities.density;
        if (this.hasCode && !this.isSaved) {
            iDp = this.generatedWithMinSize - AndroidUtilities.dp(60.0f);
            if (this.sideMenuEnabled) {
                iDp3 = AndroidUtilities.dp(64.0f);
            } else if (needDrawAvatarInternal() && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                iDp3 = AndroidUtilities.dp(52.0f);
            }
            iDp -= iDp3;
        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_background".equals(getMedia(this.messageOwner).webpage.type)) {
            try {
                Uri uri = Uri.parse(getMedia(this.messageOwner).webpage.url);
                String lastPathSegment = uri.getLastPathSegment();
                if (uri.getQueryParameter("bg_color") != null) {
                    iDp = AndroidUtilities.dp(220.0f);
                } else if (lastPathSegment.length() == 6 || (lastPathSegment.length() == 13 && lastPathSegment.charAt(6) == '-')) {
                    iDp = AndroidUtilities.dp(200.0f);
                }
            } catch (Exception unused) {
            }
        } else {
            iDp = isAndroidTheme() ? AndroidUtilities.dp(200.0f) : 0;
        }
        if (iDp == 0) {
            iDp = this.generatedWithMinSize - AndroidUtilities.dp(80.0f);
            if (this.sideMenuEnabled) {
                iDp2 = AndroidUtilities.dp(64.0f);
            } else {
                if (needDrawAvatarInternal() && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                    iDp2 = AndroidUtilities.dp(52.0f);
                }
                if (needDrawShareButton() && (this.isSaved || !isOutOwner())) {
                    iDp -= AndroidUtilities.dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
                if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                    iDp -= AndroidUtilities.dp(10.0f);
                }
            }
            iDp -= iDp2;
            if (needDrawShareButton()) {
                if (this.isSaved) {
                    iDp -= AndroidUtilities.dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
            }
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
            }
        }
        int i = this.emojiOnlyCount;
        if (i < 1) {
            return iDp;
        }
        int i2 = this.totalAnimatedEmojiCount;
        if (i2 <= 100) {
            return i - i2 < (SharedConfig.getDevicePerformanceClass() < 2 ? 50 : 100) ? (hasValidReplyMessageObject() || isForwarded()) ? Math.min(iDp, (int) (this.generatedWithMinSize * 0.65f)) : iDp : iDp;
        }
        return iDp;
    }

    public int getMediaExistanceFlags() {
        boolean z = this.attachPathExists;
        return this.mediaExists ? (z ? 1 : 0) | 2 : z ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x019c, code lost:
    
        if (r8.ttl_seconds == 0) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence getMediaTitle(TLRPC.MessageMedia messageMedia) {
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String publicUsername;
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
            return LocaleController.getString(R.string.BoostingGiveaway);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            return LocaleController.getString(R.string.BoostingGiveawayResults);
        }
        String str = null;
        if (messageMedia instanceof TLRPC.TL_messageMediaStory) {
            if (!messageMedia.via_mention) {
                return LocaleController.getString(R.string.ForwardedStory);
            }
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageMedia.user_id));
            if (user != null && (publicUsername = UserObject.getPublicUsername(user)) != null) {
                str = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + messageMedia.id;
            }
            if (str == null) {
                return "";
            }
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new URLSpanReplacement("https://" + str, new TextStyleSpan.TextStyleRun()), 0, spannableString.length(), 33);
            return spannableString;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDice) {
            return getDiceEmoji();
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) messageMedia).poll.quiz ? LocaleController.getString(R.string.QuizPoll) : LocaleController.getString(R.string.Poll);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
            TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
            return (todoList == null || (tL_textWithEntities = todoList.title) == null || tL_textWithEntities.text.isEmpty()) ? LocaleController.getString(R.string.MessageTodo) : LocaleController.formatSpannable(R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo.todo.title, isOutOwner()));
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            int size = tL_messageMediaPaidMedia.extended_media.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i);
                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                    TLRPC.MessageMedia messageMedia2 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                    z = (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia2.document);
                } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                    if ((((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0) {
                    }
                }
                if (z) {
                    break;
                }
            }
            return StarsIntroActivity.replaceStars(LocaleController.formatString(R.string.AttachPaidMedia, size == 1 ? LocaleController.getString(z ? R.string.AttachVideo : R.string.AttachPhoto) : LocaleController.formatPluralString(z ? "Media" : "Photos", size, new Object[0])));
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            return (messageMedia.ttl_seconds == 0 || (this.messageOwner instanceof TLRPC.TL_message_secret)) ? getGroupId() != 0 ? LocaleController.getString(R.string.Album) : LocaleController.getString(R.string.AttachPhoto) : LocaleController.getString(R.string.AttachDestructingPhoto);
        }
        if (messageMedia != null) {
            if (!isVideoDocument(messageMedia.document)) {
                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    TLRPC.Document document = messageMedia.document;
                    if (!(document instanceof TLRPC.TL_documentEmpty)) {
                        if (document == null) {
                        }
                    }
                }
            }
            return (messageMedia.ttl_seconds == 0 || (this.messageOwner instanceof TLRPC.TL_message_secret)) ? LocaleController.getString(R.string.AttachVideo) : messageMedia.voice ? LocaleController.getString(R.string.AttachVoiceExpired) : messageMedia.round ? LocaleController.getString(R.string.AttachRoundExpired) : LocaleController.getString(R.string.AttachDestructingVideo);
        }
        if (messageMedia != null && isVoiceDocument(messageMedia.document)) {
            return LocaleController.getString(R.string.AttachAudio);
        }
        if (messageMedia != null && isRoundVideoDocument(messageMedia.document)) {
            return LocaleController.getString(R.string.AttachRound);
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
            return LocaleController.getString(R.string.AttachLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
            return LocaleController.getString(R.string.AttachLiveLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
            return LocaleController.getString(R.string.AttachContact);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
            return this.messageOwner.message;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
            return messageMedia.description;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaUnsupported) {
            return LocaleController.getString(R.string.UnsupportedMedia2);
        }
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
            return null;
        }
        if (isStickerDocument(messageMedia.document) || isAnimatedStickerDocument(messageMedia.document, true)) {
            String stickerChar = getStickerChar();
            return (stickerChar == null || stickerChar.length() <= 0) ? LocaleController.getString(R.string.AttachSticker) : String.format("%s %s", stickerChar, LocaleController.getString(R.string.AttachSticker));
        }
        if (isMusic()) {
            return LocaleController.getString(R.string.AttachMusic);
        }
        if (isGif()) {
            return LocaleController.getString(R.string.AttachGif);
        }
        String documentFileName = FileLoader.getDocumentFileName(messageMedia.document);
        return !TextUtils.isEmpty(documentFileName) ? documentFileName : LocaleController.getString(R.string.AttachDocument);
    }

    public int getMediaType() {
        if (isVideo()) {
            return 2;
        }
        if (isVoice()) {
            return 1;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
            return 3;
        }
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? 0 : 4;
    }

    public CharSequence getMessageTextToTranslate(GroupedMessages groupedMessages, int[] iArr) {
        int i;
        if (this.translated || this.isRestrictedMessage || (i = this.type) == 19 || i == 15 || i == 13) {
            return null;
        }
        CharSequence messageCaption = ChatActivity.getMessageCaption(this, groupedMessages, iArr);
        if (messageCaption == null && isPoll()) {
            try {
                TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) this.messageOwner.media).poll;
                StringBuilder sb = new StringBuilder(poll.question.text);
                sb.append("\n");
                Iterator it = poll.answers.iterator();
                while (it.hasNext()) {
                    TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) it.next();
                    sb.append("\n🔘 ");
                    TLRPC.TL_textWithEntities tL_textWithEntities = pollAnswer.text;
                    sb.append(tL_textWithEntities == null ? "" : tL_textWithEntities.text);
                }
                messageCaption = sb.toString();
            } catch (Exception unused) {
            }
        }
        if (messageCaption == null && isMediaEmpty(this.messageOwner)) {
            messageCaption = ChatActivity.getMessageContent(this, 0L, false);
        }
        if (messageCaption == null || !Emoji.fullyConsistsOfEmojis(messageCaption)) {
            return messageCaption;
        }
        return null;
    }

    public String getMimeType() {
        TLRPC.Document document = getDocument();
        if (document != null) {
            return document.mime_type;
        }
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
            return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? "image/jpeg" : (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(this.messageOwner).webpage.photo == null) ? "" : "image/jpeg";
        }
        TLRPC.WebDocument webDocument = ((TLRPC.TL_messageMediaInvoice) getMedia(this.messageOwner)).webPhoto;
        return webDocument != null ? webDocument.mime_type : "";
    }

    public long getMonoForumTopicId() {
        return getMonoForumTopicId(this.messageOwner);
    }

    public String getMusicAuthor() {
        return getMusicAuthor(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getMusicAuthor(boolean z) {
        int i;
        MessagesController messagesController;
        TLRPC.Peer peer;
        MessagesController messagesController2;
        TLRPC.Peer peer2;
        TLRPC.Peer peer3;
        String str;
        TLRPC.Chat chat;
        long j;
        TLRPC.Document document = getDocument();
        if (document != null) {
            boolean z2 = false;
            for (int i2 = 0; i2 < document.attributes.size(); i2++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
                if (!(documentAttribute instanceof TLRPC.TL_documentAttributeAudio)) {
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && documentAttribute.round_message) {
                    }
                    if (!z2) {
                        TLRPC.User user = null;
                        if (!z) {
                            return null;
                        }
                        if (!isOutOwner()) {
                            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
                            if (messageFwdHeader != null) {
                                TLRPC.Peer peer4 = messageFwdHeader.from_id;
                                if ((peer4 instanceof TLRPC.TL_peerUser) && peer4.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                }
                            }
                            TLRPC.Message message = this.messageOwner;
                            TLRPC.MessageFwdHeader messageFwdHeader2 = message.fwd_from;
                            if (messageFwdHeader2 == null || !(messageFwdHeader2.from_id instanceof TLRPC.TL_peerChannel)) {
                                if (messageFwdHeader2 == null || !(messageFwdHeader2.from_id instanceof TLRPC.TL_peerChat)) {
                                    if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerUser)) {
                                        messagesController = MessagesController.getInstance(this.currentAccount);
                                        peer = this.messageOwner.fwd_from.from_id;
                                    } else {
                                        if (messageFwdHeader2 != null && (str = messageFwdHeader2.from_name) != null) {
                                            return str;
                                        }
                                        TLRPC.Peer peer5 = message.from_id;
                                        if (peer5 instanceof TLRPC.TL_peerChat) {
                                            messagesController2 = MessagesController.getInstance(this.currentAccount);
                                            peer3 = this.messageOwner.from_id;
                                        } else if (peer5 instanceof TLRPC.TL_peerChannel) {
                                            messagesController2 = MessagesController.getInstance(this.currentAccount);
                                            peer2 = this.messageOwner.from_id;
                                        } else if (peer5 != null || message.peer_id.channel_id == 0) {
                                            messagesController = MessagesController.getInstance(this.currentAccount);
                                            peer = this.messageOwner.from_id;
                                        } else {
                                            messagesController2 = MessagesController.getInstance(this.currentAccount);
                                            peer2 = this.messageOwner.peer_id;
                                        }
                                    }
                                    TLRPC.User user2 = messagesController.getUser(Long.valueOf(peer.user_id));
                                    chat = null;
                                    user = user2;
                                    if (user != null) {
                                        return UserObject.getUserName(user);
                                    }
                                    if (chat != null) {
                                        return chat.title;
                                    }
                                } else {
                                    messagesController2 = MessagesController.getInstance(this.currentAccount);
                                    peer3 = this.messageOwner.fwd_from.from_id;
                                }
                                j = peer3.chat_id;
                                chat = messagesController2.getChat(Long.valueOf(j));
                                if (user != null) {
                                }
                            } else {
                                messagesController2 = MessagesController.getInstance(this.currentAccount);
                                peer2 = this.messageOwner.fwd_from.from_id;
                            }
                            j = peer2.channel_id;
                            chat = messagesController2.getChat(Long.valueOf(j));
                            if (user != null) {
                            }
                        }
                        i = R.string.FromYou;
                        break;
                    }
                } else if (!documentAttribute.voice) {
                    String str2 = documentAttribute.performer;
                    return (TextUtils.isEmpty(str2) && z) ? LocaleController.getString(R.string.AudioUnknownArtist) : str2;
                }
                z2 = true;
                if (!z2) {
                }
            }
            i = R.string.AudioUnknownArtist;
        } else {
            i = R.string.AudioUnknownArtist;
        }
        return LocaleController.getString(i);
    }

    public String getMusicTitle() {
        return getMusicTitle(true);
    }

    public String getMusicTitle(boolean z) {
        TLRPC.Document document = getDocument();
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    if (documentAttribute.voice) {
                        if (z) {
                            return LocaleController.formatDateAudio(this.messageOwner.date, true);
                        }
                        return null;
                    }
                    String str = documentAttribute.title;
                    if (str != null && str.length() != 0) {
                        return str;
                    }
                    String documentFileName = FileLoader.getDocumentFileName(document);
                    return (TextUtils.isEmpty(documentFileName) && z) ? LocaleController.getString(R.string.AudioUnknownTitle) : documentFileName;
                }
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && documentAttribute.round_message) {
                    if (!isQuickReply()) {
                        return LocaleController.formatDateAudio(this.messageOwner.date, true);
                    }
                    return LocaleController.formatString(R.string.BusinessInReplies, "/" + getQuickReplyDisplayName());
                }
            }
            String documentFileName2 = FileLoader.getDocumentFileName(document);
            if (!TextUtils.isEmpty(documentFileName2)) {
                return documentFileName2;
            }
        }
        return LocaleController.getString(R.string.AudioUnknownTitle);
    }

    public Long getMyPaidReactionPeer() {
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList arrayList;
        long peerDialogId;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) it.next();
            if (messageReactor != null && messageReactor.my) {
                if (messageReactor.anonymous) {
                    peerDialogId = UserObject.ANONYMOUS;
                } else {
                    TLRPC.Peer peer = messageReactor.peer_id;
                    if (peer != null) {
                        peerDialogId = DialogObject.getPeerDialogId(peer);
                    }
                }
                return Long.valueOf(peerDialogId);
            }
        }
        return null;
    }

    public TLObject getPeerObject() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.Peer peer = message.peer_id;
        if ((peer instanceof TLRPC.TL_peerChannel_layer131) || (peer instanceof TLRPC.TL_peerChannel)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.channel_id));
        }
        if ((peer instanceof TLRPC.TL_peerUser_layer131) || (peer instanceof TLRPC.TL_peerUser)) {
            return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.peer_id.user_id));
        }
        if ((peer instanceof TLRPC.TL_peerChat_layer131) || (peer instanceof TLRPC.TL_peerChat)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.chat_id));
        }
        return null;
    }

    public long getPollId() {
        if (this.type != 17) {
            return 0L;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.id;
        }
        return 0L;
    }

    public TLRPC.VideoSize getPremiumStickerAnimation() {
        return getPremiumStickerAnimation(getDocument());
    }

    public float getProgress() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    public String getQuickReplyDisplayName() {
        String quickReplyName = getQuickReplyName();
        if (quickReplyName != null) {
            return quickReplyName;
        }
        QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply(getQuickReplyId());
        return quickReplyFindReply != null ? quickReplyFindReply.name : "";
    }

    public int getQuickReplyId() {
        return getQuickReplyId(this.messageOwner);
    }

    public String getQuickReplyName() {
        return getQuickReplyName(this.messageOwner);
    }

    public TLRPC.MessagePeerReaction getRandomUnreadReaction() {
        ArrayList arrayList;
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || (arrayList = tL_messageReactions.recent_reactions) == null || arrayList.isEmpty()) {
            return null;
        }
        return (TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(0);
    }

    public int getRealId() {
        TLRPC.Message message = this.messageOwner;
        int i = message.realId;
        return i != 0 ? i : message.id;
    }

    public int getRepliesCount() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        if (messageReplies != null) {
            return messageReplies.replies;
        }
        return 0;
    }

    public int getReplyAnyMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader == null) {
            return 0;
        }
        int i = messageReplyHeader.reply_to_top_id;
        return i != 0 ? i : messageReplyHeader.reply_to_msg_id;
    }

    public int getReplyMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null) {
            return messageReplyHeader.reply_to_msg_id;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        if ((r5 instanceof org.telegram.tgnet.TLRPC.TL_peerUser) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
    
        if ((r5 instanceof org.telegram.tgnet.TLRPC.TL_peerUser) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
    
        r0 = peerNameWithIcon(r10.currentAccount, r5, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        r0 = peerNameWithIcon(r10.currentAccount, r5, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence getReplyQuoteNameWithIcon() {
        CharSequence charSequencePeerNameWithIcon;
        CharSequence charSequenceAppend;
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return "";
        }
        TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
        CharSequence charSequencePeerNameWithIcon2 = null;
        if (messageReplyHeader == null) {
            if (DialogObject.isChatDialog(getDialogId())) {
                charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, getDialogId());
            } else {
                charSequenceAppend = peerNameWithIcon(this.currentAccount, getDialogId());
                charSequencePeerNameWithIcon2 = charSequenceAppend;
                charSequencePeerNameWithIcon = null;
            }
        } else if (messageReplyHeader.reply_from == null) {
            charSequencePeerNameWithIcon = null;
        } else {
            TLRPC.Peer peer = messageReplyHeader.reply_to_peer_id;
            boolean z = peer == null || DialogObject.getPeerDialogId(peer) != getDialogId();
            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.reply_to.reply_from;
            TLRPC.Peer peer2 = messageFwdHeader.from_id;
            if (peer2 == null) {
                peer2 = messageFwdHeader.saved_from_peer;
                if (peer2 == null) {
                    if (!TextUtils.isEmpty(messageFwdHeader.from_name)) {
                        charSequenceAppend = z ? new SpannableStringBuilder(userSpan()).append((CharSequence) " ").append((CharSequence) this.messageOwner.reply_to.reply_from.from_name) : new SpannableStringBuilder(this.messageOwner.reply_to.reply_from.from_name);
                        charSequencePeerNameWithIcon2 = charSequenceAppend;
                        charSequencePeerNameWithIcon = null;
                    }
                    charSequencePeerNameWithIcon = null;
                }
            }
        }
        TLRPC.Peer peer3 = this.messageOwner.reply_to.reply_to_peer_id;
        if (peer3 != null && DialogObject.getPeerDialogId(peer3) != getDialogId()) {
            TLRPC.Peer peer4 = this.messageOwner.reply_to.reply_to_peer_id;
            if (peer4 instanceof TLRPC.TL_peerUser) {
                charSequencePeerNameWithIcon2 = peerNameWithIcon(this.currentAccount, peer4, true);
            } else {
                charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, peer4);
            }
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            if (DialogObject.isChatDialog(messageObject.getSenderId())) {
                if (charSequencePeerNameWithIcon == null) {
                    charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, this.replyMessageObject.getSenderId());
                }
            } else if (charSequencePeerNameWithIcon2 == null) {
                charSequencePeerNameWithIcon2 = peerNameWithIcon(this.currentAccount, this.replyMessageObject.getSenderId());
            }
        }
        return (charSequencePeerNameWithIcon == null || charSequencePeerNameWithIcon2 == null) ? charSequencePeerNameWithIcon != null ? charSequencePeerNameWithIcon : charSequencePeerNameWithIcon2 != null ? charSequencePeerNameWithIcon2 : LocaleController.getString(R.string.Loading) : new SpannableStringBuilder(charSequencePeerNameWithIcon2).append((CharSequence) " ").append(charSequencePeerNameWithIcon);
    }

    public int getReplyTopMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null) {
            return messageReplyHeader.reply_to_top_id;
        }
        return 0;
    }

    public int getReplyTopMsgId(boolean z) {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader == null) {
            return 0;
        }
        if (z && (messageReplyHeader.flags & 2) > 0 && messageReplyHeader.reply_to_top_id == 0) {
            return 1;
        }
        return messageReplyHeader.reply_to_top_id;
    }

    public long getSavedDialogId() {
        return getSavedDialogId(UserConfig.getInstance(this.currentAccount).getClientUserId(), this.messageOwner);
    }

    public int getSecretTimeLeft() {
        TLRPC.Message message = this.messageOwner;
        int i = message.ttl;
        int i2 = message.destroyTime;
        return i2 != 0 ? Math.max(0, i2 - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) : i;
    }

    public CharSequence getSecretTimeString() {
        String str;
        if (!isSecretMedia()) {
            return null;
        }
        if (this.messageOwner.ttl == Integer.MAX_VALUE) {
            if (this.secretOnceSpan == null) {
                this.secretOnceSpan = new SpannableString("v");
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.mini_viewonce);
                coloredImageSpan.setTranslateX(-AndroidUtilities.dp(3.0f));
                coloredImageSpan.setWidth(AndroidUtilities.dp(13.0f));
                CharSequence charSequence = this.secretOnceSpan;
                ((Spannable) charSequence).setSpan(coloredImageSpan, 0, charSequence.length(), 33);
            }
            return TextUtils.concat(this.secretOnceSpan, "1");
        }
        int secretTimeLeft = getSecretTimeLeft();
        if (secretTimeLeft < 60) {
            str = secretTimeLeft + "s";
        } else {
            str = (secretTimeLeft / 60) + "m";
        }
        if (this.secretPlaySpan == null) {
            this.secretPlaySpan = new SpannableString("p");
            ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(R.drawable.play_mini_video);
            coloredImageSpan2.setTranslateX(AndroidUtilities.dp(1.0f));
            coloredImageSpan2.setWidth(AndroidUtilities.dp(13.0f));
            CharSequence charSequence2 = this.secretPlaySpan;
            ((Spannable) charSequence2).setSpan(coloredImageSpan2, 0, charSequence2.length(), 33);
        }
        return TextUtils.concat(this.secretPlaySpan, str);
    }

    public long getSenderId() {
        TLRPC.Peer peer;
        TLRPC.Message message = this.messageOwner;
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader == null || (peer = messageFwdHeader.saved_from_peer) == null) {
            TLRPC.Peer peer2 = message.from_id;
            if (peer2 instanceof TLRPC.TL_peerUser) {
                return peer2.user_id;
            }
            if (peer2 instanceof TLRPC.TL_peerChannel) {
                return -peer2.channel_id;
            }
            if (peer2 instanceof TLRPC.TL_peerChat) {
                return -peer2.chat_id;
            }
            if (message.post) {
                return message.peer_id.channel_id;
            }
        } else {
            long j = peer.user_id;
            if (j != 0) {
                TLRPC.Peer peer3 = messageFwdHeader.from_id;
                return peer3 instanceof TLRPC.TL_peerUser ? peer3.user_id : j;
            }
            if (peer.channel_id != 0) {
                if (isSavedFromMegagroup()) {
                    TLRPC.Peer peer4 = this.messageOwner.fwd_from.from_id;
                    if (peer4 instanceof TLRPC.TL_peerUser) {
                        return peer4.user_id;
                    }
                }
                TLRPC.MessageFwdHeader messageFwdHeader2 = this.messageOwner.fwd_from;
                TLRPC.Peer peer5 = messageFwdHeader2.from_id;
                return peer5 instanceof TLRPC.TL_peerChannel ? -peer5.channel_id : peer5 instanceof TLRPC.TL_peerChat ? -peer5.chat_id : -messageFwdHeader2.saved_from_peer.channel_id;
            }
            long j2 = peer.chat_id;
            if (j2 != 0) {
                TLRPC.Peer peer6 = messageFwdHeader.from_id;
                return peer6 instanceof TLRPC.TL_peerUser ? peer6.user_id : peer6 instanceof TLRPC.TL_peerChannel ? -peer6.channel_id : peer6 instanceof TLRPC.TL_peerChat ? -peer6.chat_id : -j2;
            }
        }
        return 0L;
    }

    public long getSize() {
        VideoPlayer.VideoUri videoUri = this.highestQuality;
        if (videoUri != null) {
            return videoUri.document.size;
        }
        VideoPlayer.VideoUri videoUri2 = this.thumbQuality;
        if (videoUri2 != null) {
            return videoUri2.document.size;
        }
        VideoPlayer.VideoUri videoUri3 = this.cachedQuality;
        return videoUri3 != null ? videoUri3.document.size : getMessageSize(this.messageOwner);
    }

    public String getStickerChar() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return null;
        }
        Iterator<TLRPC.DocumentAttribute> it = document.attributes.iterator();
        while (it.hasNext()) {
            TLRPC.DocumentAttribute next = it.next();
            if (next instanceof TLRPC.TL_documentAttributeSticker) {
                return next.alt;
            }
        }
        return null;
    }

    public String getStickerEmoji() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                String str = documentAttribute.alt;
                if (str == null || str.length() <= 0) {
                    return null;
                }
                return documentAttribute.alt;
            }
        }
        return null;
    }

    public TLRPC.WebPage getStoryMentionWebpage() {
        if (!isStoryMention()) {
            return null;
        }
        TLRPC.WebPage webPage = this.storyMentionWebpage;
        if (webPage != null) {
            return webPage;
        }
        TLRPC.TL_webPage tL_webPage = new TLRPC.TL_webPage();
        tL_webPage.type = "telegram_story";
        TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory = new TLRPC.TL_webPageAttributeStory();
        tL_webPageAttributeStory.id = this.messageOwner.media.id;
        tL_webPageAttributeStory.peer = MessagesController.getInstance(this.currentAccount).getPeer(this.messageOwner.media.user_id);
        TL_stories$StoryItem tL_stories$StoryItem = this.messageOwner.media.storyItem;
        if (tL_stories$StoryItem != null) {
            tL_webPageAttributeStory.flags |= 1;
            tL_webPageAttributeStory.storyItem = tL_stories$StoryItem;
        }
        tL_webPage.attributes.add(tL_webPageAttributeStory);
        this.storyMentionWebpage = tL_webPage;
        return tL_webPage;
    }

    public TextPaint getTextPaint() {
        if (this.emojiOnlyCount < 1 || this.messageOwner == null || hasNonEmojiEntities()) {
            return Theme.chat_msgTextPaint;
        }
        int i = this.emojiOnlyCount;
        int i2 = this.animatedEmojiCount;
        boolean z = i == i2;
        switch (Math.max(i, i2)) {
            case 0:
            case 1:
            case 2:
                TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                return z ? textPaintArr[0] : textPaintArr[2];
            case 3:
                TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                return z ? textPaintArr2[1] : textPaintArr2[3];
            case 4:
                TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                return z ? textPaintArr3[2] : textPaintArr3[4];
            case 5:
                TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                return z ? textPaintArr4[3] : textPaintArr4[5];
            case 6:
                TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                return z ? textPaintArr5[4] : textPaintArr5[5];
            default:
                return Theme.chat_msgTextPaintEmoji[5];
        }
    }

    public long getTopicId() {
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()));
        return getTopicId(this.currentAccount, this.messageOwner, ChatObject.isForum(chat), ChatObject.isMonoForum(chat));
    }

    public TLRPC.Photo getVideoCover() {
        TLRPC.WebPage webPage;
        TLRPC.MessageMedia media = getMedia(this);
        if (media instanceof TLRPC.TL_messageMediaDocument) {
            return ((TLRPC.TL_messageMediaDocument) media).video_cover;
        }
        if (media == null || (webPage = media.webpage) == null || !webPage.video_cover_photo) {
            return null;
        }
        return webPage.photo;
    }

    public float getVideoSavedProgress() {
        if (this.cachedSavedTimestamp != null) {
            return PhotoViewer.getSavedProgressFast(this);
        }
        float savedProgress = PhotoViewer.getSavedProgress(this);
        this.cachedSavedTimestamp = Float.valueOf(savedProgress);
        return savedProgress;
    }

    public int getVideoStartsTimestamp() {
        String str;
        Integer num = this.cachedStartsTimestamp;
        if (num != null) {
            return num.intValue();
        }
        if (isVideo()) {
            TLRPC.MessageMedia media = getMedia(this);
            int i = media.video_timestamp;
            if (i != 0) {
                return i;
            }
            TLRPC.WebPage webPage = media.webpage;
            if (webPage != null && (str = webPage.url) != null) {
                try {
                    int timestampFromLink = LaunchActivity.getTimestampFromLink(Uri.parse(str));
                    this.cachedStartsTimestamp = Integer.valueOf(timestampFromLink);
                    return timestampFromLink;
                } catch (Exception unused) {
                }
            }
        }
        this.cachedStartsTimestamp = -1;
        return -1;
    }

    public CharSequence getVoiceTranscription() {
        String str;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (str = message.voiceTranscription) == null) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.messageOwner.voiceTranscription;
            return !TextUtils.isEmpty(str2) ? Emoji.replaceEmoji(str2, Theme.chat_msgTextPaint.getFontMetricsInt(), false) : str2;
        }
        SpannableString spannableString = new SpannableString(LocaleController.getString(R.string.NoWordsRecognized));
        spannableString.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.1
            @Override // android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                textPaint.setColor(Theme.chat_timePaint.getColor());
            }
        }, 0, spannableString.length(), 33);
        return spannableString;
    }

    public byte[] getWaveform() {
        if (getDocument() == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < getDocument().attributes.size(); i2++) {
            TLRPC.DocumentAttribute documentAttribute = getDocument().attributes.get(i2);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                byte[] bArr = documentAttribute.waveform;
                if (bArr == null || bArr.length == 0) {
                    MediaController.getInstance().generateWaveform(this);
                }
                return documentAttribute.waveform;
            }
        }
        if (!isRoundVideo()) {
            return null;
        }
        if (this.randomWaveform == null) {
            this.randomWaveform = new byte[R.styleable.AppCompatTheme_windowFixedHeightMajor];
            while (true) {
                byte[] bArr2 = this.randomWaveform;
                if (i >= bArr2.length) {
                    break;
                }
                bArr2[i] = (byte) (Math.random() * 255.0d);
                i++;
            }
        }
        return this.randomWaveform;
    }

    public ArrayList<MessageObject> getWebPagePhotos(ArrayList<MessageObject> arrayList, ArrayList<TLRPC.PageBlock> arrayList2) {
        TLRPC.WebPage webPage;
        TLRPC.Page page;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (getMedia(this.messageOwner) == null || getMedia(this.messageOwner).webpage == null || (page = (webPage = getMedia(this.messageOwner).webpage).cached_page) == null) {
            return arrayList;
        }
        if (arrayList2 == null) {
            arrayList2 = page.blocks;
        }
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC.PageBlock pageBlock = arrayList2.get(i);
            if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = (TLRPC.TL_pageBlockSlideshow) pageBlock;
                for (int i2 = 0; i2 < tL_pageBlockSlideshow.items.size(); i2++) {
                    arrayList.add(getMessageObjectForBlock(webPage, (TLRPC.PageBlock) tL_pageBlockSlideshow.items.get(i2)));
                }
            } else if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
                TLRPC.TL_pageBlockCollage tL_pageBlockCollage = (TLRPC.TL_pageBlockCollage) pageBlock;
                for (int i3 = 0; i3 < tL_pageBlockCollage.items.size(); i3++) {
                    arrayList.add(getMessageObjectForBlock(webPage, (TLRPC.PageBlock) tL_pageBlockCollage.items.get(i3)));
                }
            }
        }
        return arrayList;
    }

    public boolean hasAttachedStickers() {
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
            return getMedia(this.messageOwner).photo != null && getMedia(this.messageOwner).photo.has_stickers;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
            return isDocumentHasAttachedStickers(getMedia(this.messageOwner).document);
        }
        return false;
    }

    public boolean hasEntitiesFromServer() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || message.entities == null) {
            return false;
        }
        for (int i = 0; i < this.messageOwner.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) this.messageOwner.entities.get(i);
            if ((messageEntity instanceof TLRPC.TL_messageEntityPhone) || (messageEntity instanceof TLRPC.TL_messageEntityBankCard)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasExtendedMedia() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty()) ? false : true;
    }

    public boolean hasExtendedMediaPreview() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty() || !(this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) ? false : true;
    }

    public boolean hasHighlightedWords() {
        ArrayList<String> arrayList = this.highlightedWords;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public boolean hasInlineBotButtons() {
        TLRPC.Message message;
        if (!this.isRestrictedMessage && !this.isRepostPreview && (message = this.messageOwner) != null) {
            TLRPC.ReplyMarkup replyMarkup = message.reply_markup;
            if (((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && !replyMarkup.rows.isEmpty()) || getInlineBotButtons() != null) {
                return true;
            }
        }
        return false;
    }

    public boolean hasLinkMediaToMakeSmall() {
        boolean z = !this.isRestrictedMessage && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage);
        TLRPC.WebPage webPage = z ? getMedia(this.messageOwner).webpage : null;
        String str = webPage != null ? webPage.type : null;
        if (!z || isGiveawayOrGiveawayResults() || webPage == null) {
            return false;
        }
        if (webPage.photo != null || isVideoDocument(webPage.document)) {
            return ((TextUtils.isEmpty(webPage.description) && TextUtils.isEmpty(webPage.title)) || isSponsored() || "telegram_megagroup".equals(str) || "telegram_background".equals(str) || "telegram_voicechat".equals(str) || "telegram_videochat".equals(str) || "telegram_livestream".equals(str) || "telegram_user".equals(str) || "telegram_story".equals(str) || "telegram_channel_boost".equals(str) || "telegram_group_boost".equals(str) || "telegram_chat".equals(str)) ? false : true;
        }
        return false;
    }

    public boolean hasMediaSpoilers() {
        TLRPC.MessageMedia messageMedia;
        return (!this.isRepostPreview && (((messageMedia = this.messageOwner.media) != null && messageMedia.spoiler) || needDrawBluredPreview())) || isHiddenSensitive();
    }

    public boolean hasPaidMediaPreview() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return messageMedia != null && (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) && !messageMedia.extended_media.isEmpty() && (this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview);
    }

    public boolean hasReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (hasReactions() && visibleReaction != null) {
            for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
                if (visibleReaction.isSame(((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasReactions() {
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        return (tL_messageReactions == null || tL_messageReactions.results.isEmpty()) ? false : true;
    }

    public boolean hasReplies() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        return messageReplies != null && messageReplies.replies > 0;
    }

    public boolean hasRevealedExtendedMedia() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty() || !(this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) ? false : true;
    }

    public boolean hasSuggestionInlineButtons() {
        TLRPC.SuggestedPost suggestedPost;
        TLRPC.Message message = this.messageOwner;
        boolean z = (message == null || (suggestedPost = message.suggested_post) == null || suggestedPost.rejected || suggestedPost.accepted || isSendError() || isSending()) ? false : true;
        if (z) {
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            long peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id);
            long peerDialogId2 = DialogObject.getPeerDialogId(this.messageOwner.from_id);
            boolean z2 = clientUserId == peerDialogId;
            boolean z3 = !z2;
            boolean z4 = peerDialogId == peerDialogId2;
            boolean z5 = !z4;
            if (z2 && z4) {
                return false;
            }
            if (z3 && z5) {
                return false;
            }
        }
        return z;
    }

    public boolean hasValidGroupId() {
        ArrayList<TLRPC.PhotoSize> arrayList;
        int i;
        return getGroupId() != 0 && (!((arrayList = this.photoThumbs) == null || arrayList.isEmpty()) || (i = this.type) == 3 || i == 1 || isMusic() || isDocument());
    }

    public boolean hasValidGroupIdFast() {
        ArrayList<TLRPC.PhotoSize> arrayList;
        int i;
        return getGroupId() != 0 && (!((arrayList = this.photoThumbs) == null || arrayList.isEmpty()) || (i = this.type) == 3 || i == 1 || i == 14 || i == 9);
    }

    public boolean hasValidReplyMessageObject() {
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (!(message instanceof TLRPC.TL_messageEmpty)) {
                TLRPC.MessageAction messageAction = message.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionHistoryClear) && !(messageAction instanceof TLRPC.TL_messageActionTopicCreate)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasVideoCover() {
        return getVideoCover() != null;
    }

    public boolean hasVideoQualities() {
        return hasVideoQualities(true);
    }

    public boolean hasVideoQualities(boolean z) {
        TLRPC.MessageMedia messageMedia;
        if (this.videoQualitiesCached == null) {
            try {
                TLRPC.Message message = this.messageOwner;
                boolean z2 = false;
                if (message != null && (messageMedia = message.media) != null && messageMedia.document != null && !messageMedia.alt_documents.isEmpty()) {
                    int i = this.currentAccount;
                    TLRPC.Message message2 = this.messageOwner;
                    ArrayList<VideoPlayer.Quality> qualities = VideoPlayer.getQualities(i, message2 != null ? message2.media : null, z);
                    this.videoQualities = qualities;
                    if (qualities != null && qualities.size() > 1) {
                        z2 = true;
                    }
                    this.videoQualitiesCached = Boolean.valueOf(z2);
                    this.highestQuality = VideoPlayer.getQualityForPlayer(this.videoQualities);
                    this.thumbQuality = VideoPlayer.getQualityForThumb(this.videoQualities);
                    this.cachedQuality = VideoPlayer.getCachedQuality(this.videoQualities);
                }
                this.videoQualitiesCached = Boolean.FALSE;
                return false;
            } catch (Exception e) {
                FileLog.e(e);
                this.videoQualitiesCached = Boolean.FALSE;
            }
        }
        return this.videoQualitiesCached.booleanValue();
    }

    public boolean isAlbumSingle() {
        return getMedia(this) instanceof TLRPC.TL_messageMediaPaidMedia;
    }

    public boolean isAndroidTheme() {
        if (getMedia(this.messageOwner) != null && getMedia(this.messageOwner).webpage != null && !getMedia(this.messageOwner).webpage.attributes.isEmpty()) {
            int size = getMedia(this.messageOwner).webpage.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) getMedia(this.messageOwner).webpage.attributes.get(i);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeTheme) {
                    TLRPC.TL_webPageAttributeTheme tL_webPageAttributeTheme = (TLRPC.TL_webPageAttributeTheme) webPageAttribute;
                    ArrayList arrayList = tL_webPageAttributeTheme.documents;
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if ("application/x-tgtheme-android".equals(((TLRPC.Document) arrayList.get(i2)).mime_type)) {
                            return true;
                        }
                    }
                    if (tL_webPageAttributeTheme.settings != null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean isAnimatedAnimatedEmoji() {
        return isAnimatedEmoji() && isAnimatedEmoji(getDocument());
    }

    public boolean isAnimatedEmoji() {
        return (this.emojiAnimatedSticker == null && this.emojiAnimatedStickerId == null) ? false : true;
    }

    public boolean isAnimatedEmojiStickerSingle() {
        return this.emojiAnimatedStickerId != null;
    }

    public boolean isAnimatedEmojiStickers() {
        return this.type == 19;
    }

    public boolean isAnimatedSticker() {
        int i = this.type;
        if (i != 1000) {
            return i == 15;
        }
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(getDialogId());
        if (zIsEncryptedDialog && this.messageOwner.stickerVerified != 1) {
            return false;
        }
        if (this.emojiAnimatedStickerId == null || this.emojiAnimatedSticker != null) {
            return isAnimatedStickerDocument(getDocument(), (this.emojiAnimatedSticker == null && zIsEncryptedDialog && !isOut()) ? false : true);
        }
        return true;
    }

    public boolean isAnyGift() {
        int i = this.type;
        return i == 30 || i == 18 || i == 25;
    }

    public boolean isAnyKindOfSticker() {
        int i = this.type;
        return i == 13 || i == 15 || i == 19;
    }

    public boolean isBotPreview() {
        return this.storyItem instanceof StoriesController.BotPreview;
    }

    public boolean isComments() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        return messageReplies != null && messageReplies.comments;
    }

    public boolean isConferenceCall() {
        return this.messageOwner.action instanceof TLRPC.TL_messageActionConferenceCall;
    }

    public boolean isContentUnread() {
        return this.messageOwner.media_unread;
    }

    public boolean isCurrentWallpaper() {
        TLRPC.Message message;
        TLRPC.MessageAction messageAction;
        TLRPC.UserFull userFull;
        TLRPC.WallPaper wallPaper;
        return (!isWallpaperAction() || (message = this.messageOwner) == null || (messageAction = message.action) == null || messageAction.wallpaper == null || (userFull = MessagesController.getInstance(this.currentAccount).getUserFull(getDialogId())) == null || (wallPaper = userFull.wallpaper) == null || !userFull.wallpaper_overridden || this.messageOwner.action.wallpaper.id != wallPaper.id) ? false : true;
    }

    public boolean isDice() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice;
    }

    public boolean isDocument() {
        return (getDocument() == null || isVideo() || isMusic() || isVoice() || isAnyKindOfSticker()) ? false : true;
    }

    public boolean isEdited() {
        TLRPC.Message message = this.messageOwner;
        return (message == null || (message.flags & LiteMode.FLAG_CHAT_SCALE) == 0 || message.edit_date == 0 || message.edit_hide) ? false : true;
    }

    public boolean isEditedSuggestionOffer() {
        TLRPC.Message message;
        MessageObject messageObject = this.replyMessageObject;
        return (messageObject == null || messageObject.messageOwner == null || (message = this.messageOwner) == null || message.suggested_post == null) ? false : true;
    }

    public boolean isEditing() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 3 && message.id > 0;
    }

    public boolean isEditingMedia() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? getMedia(this.messageOwner).photo.id == 0 : (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && getMedia(this.messageOwner).document.dc_id == 0;
    }

    public boolean isEmbedVideo() {
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        TLRPC.MessageMedia messageMedia2;
        Boolean bool = this.isEmbedVideoCached;
        boolean z = false;
        if (bool != null) {
            TLRPC.Message message = this.messageOwner;
            return (message == null || (messageMedia2 = message.media) == null || messageMedia2.webpage == null || !bool.booleanValue()) ? false : true;
        }
        TLRPC.Message message2 = this.messageOwner;
        if (message2 != null && (messageMedia = message2.media) != null && (webPage = messageMedia.webpage) != null && !TextUtils.isEmpty(WebPlayerView.getYouTubeVideoId(webPage.url))) {
            z = true;
        }
        this.isEmbedVideoCached = Boolean.valueOf(z);
        return z;
    }

    public boolean isExpiredLiveLocation(int i) {
        TLRPC.Message message = this.messageOwner;
        return message.date + getMedia(message).period <= i;
    }

    public boolean isExpiredStory() {
        int i = this.type;
        return (i == 23 || i == 24) && (this.messageOwner.media.storyItem instanceof TL_stories$TL_storyItemDeleted);
    }

    public boolean isFactCheckable() {
        int i;
        return getId() >= 0 && !isSponsored() && ((i = this.type) == 0 || i == 2 || i == 1 || i == 3 || i == 8 || i == 9);
    }

    public boolean isFcmMessage() {
        return this.localType != 0;
    }

    public boolean isForwarded() {
        return isForwardedMessage(this.messageOwner);
    }

    public boolean isForwardedChannelPost() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Message message = this.messageOwner;
        TLRPC.Peer peer = message.from_id;
        if ((peer instanceof TLRPC.TL_peerChannel) && (messageFwdHeader = message.fwd_from) != null && messageFwdHeader.channel_post != 0) {
            TLRPC.Peer peer2 = messageFwdHeader.saved_from_peer;
            if ((peer2 instanceof TLRPC.TL_peerChannel) && peer.channel_id == peer2.channel_id) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isFromChannel() {
        TLRPC.Chat chat;
        TLRPC.Peer peer = this.messageOwner.peer_id;
        TLRPC.Chat chat2 = null;
        if (peer != null) {
            long j = peer.channel_id;
            chat = j != 0 ? getChat(null, null, j) : null;
        }
        if ((this.messageOwner.peer_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannelAndNotMegaGroup(chat)) {
            return true;
        }
        TLRPC.Peer peer2 = this.messageOwner.from_id;
        if (peer2 != null) {
            long j2 = peer2.channel_id;
            if (j2 != 0) {
                chat2 = getChat(null, null, j2);
            }
        }
        return (this.messageOwner.from_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannelAndNotMegaGroup(chat2);
    }

    public boolean isFromChat() {
        TLRPC.Peer peer;
        if (getDialogId() == UserConfig.getInstance(this.currentAccount).clientUserId) {
            return true;
        }
        TLRPC.Peer peer2 = this.messageOwner.peer_id;
        TLRPC.Chat chat = null;
        if (peer2 != null) {
            long j = peer2.channel_id;
            if (j != 0) {
                chat = getChat(null, null, j);
            }
        }
        if (!(ChatObject.isChannel(chat) && chat.megagroup) && ((peer = this.messageOwner.peer_id) == null || peer.chat_id == 0)) {
            return (peer == null || peer.channel_id == 0 || chat == null || !chat.megagroup) ? false : true;
        }
        return true;
    }

    public boolean isFromGroup() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return false;
        }
        TLRPC.Peer peer = message.peer_id;
        TLRPC.Chat chat = null;
        if (peer != null) {
            long j = peer.channel_id;
            if (j != 0) {
                chat = getChat(null, null, j);
            }
        }
        return (this.messageOwner.from_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannel(chat) && chat.megagroup;
    }

    public boolean isFromUser() {
        TLRPC.Message message = this.messageOwner;
        return (message.from_id instanceof TLRPC.TL_peerUser) && !message.post;
    }

    public boolean isGame() {
        return isGameMessage(this.messageOwner);
    }

    public boolean isGif() {
        return isGifMessage(this.messageOwner);
    }

    public boolean isGiveaway() {
        return this.type == 26;
    }

    public boolean isGiveawayOrGiveawayResults() {
        return isGiveaway() || isGiveawayResults();
    }

    public boolean isGiveawayResults() {
        return this.type == 28;
    }

    public boolean isHiddenSensitive() {
        return isSensitive() && !MessagesController.getInstance(this.currentAccount).showSensitiveContent();
    }

    public boolean isImportedForward() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        return messageFwdHeader != null && messageFwdHeader.imported;
    }

    public boolean isInvoice() {
        return isInvoiceMessage(this.messageOwner);
    }

    public boolean isLinkMediaSmall() {
        TLRPC.WebPage webPage = (!this.isRestrictedMessage && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) ? getMedia(this.messageOwner).webpage : null;
        String str = webPage != null ? webPage.type : null;
        return !(webPage != null && TextUtils.isEmpty(webPage.description) && TextUtils.isEmpty(webPage.title)) && ("app".equals(str) || "profile".equals(str) || "article".equals(str) || "telegram_bot".equals(str) || "telegram_user".equals(str) || "telegram_channel".equals(str) || "telegram_megagroup".equals(str) || "telegram_voicechat".equals(str) || "telegram_videochat".equals(str) || "telegram_livestream".equals(str) || "telegram_channel_boost".equals(str) || "telegram_group_boost".equals(str) || "telegram_chat".equals(str));
    }

    public boolean isLinkedToChat(long j) {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        return messageReplies != null && (j == 0 || messageReplies.channel_id == j);
    }

    public boolean isLiveLocation() {
        return isLiveLocationMessage(this.messageOwner);
    }

    public boolean isLocation() {
        return isLocationMessage(this.messageOwner);
    }

    public boolean isMask() {
        return isMaskMessage(this.messageOwner);
    }

    public boolean isMediaEmpty() {
        return isMediaEmpty(this.messageOwner);
    }

    public boolean isMediaEmpty(boolean z) {
        return isMediaEmpty(this.messageOwner, z);
    }

    public boolean isMediaEmptyWebpage() {
        return isMediaEmptyWebpage(this.messageOwner);
    }

    public boolean isMusic() {
        return (!isMusicMessage(this.messageOwner) || isVideo() || isRoundVideo()) ? false : true;
    }

    public boolean isNewGif() {
        return getMedia(this.messageOwner) != null && isNewGifDocument(getDocument());
    }

    public boolean isOut() {
        return this.messageOwner.out;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isOutOwner() {
        Boolean boolValueOf;
        boolean z = true;
        if (this.previewForward) {
            return true;
        }
        Boolean bool = this.isOutOwnerCached;
        if (bool != null) {
            return bool.booleanValue();
        }
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (!this.isSaved && getDialogId() != clientUserId) {
            TLRPC.Peer peer = this.messageOwner.peer_id;
            TLRPC.Chat chat = null;
            if (peer != null) {
                long j = peer.channel_id;
                if (j != 0) {
                    chat = getChat(null, null, j);
                }
            }
            TLRPC.Message message = this.messageOwner;
            if (message.out) {
                TLRPC.Peer peer2 = message.from_id;
                if ((peer2 instanceof TLRPC.TL_peerUser) || ((peer2 instanceof TLRPC.TL_peerChannel) && !ChatObject.isChannelAndNotMegaGroup(chat))) {
                    TLRPC.Message message2 = this.messageOwner;
                    if (!message2.post) {
                        TLRPC.MessageFwdHeader messageFwdHeader = message2.fwd_from;
                        if (messageFwdHeader != null) {
                            TLRPC.Peer peer3 = messageFwdHeader.saved_from_peer;
                            if (peer3 != null && peer3.user_id != clientUserId) {
                            }
                            boolValueOf = Boolean.valueOf(z);
                        }
                        boolValueOf = Boolean.TRUE;
                    }
                }
            }
            this.isOutOwnerCached = Boolean.FALSE;
            return false;
        }
        TLRPC.MessageFwdHeader messageFwdHeader2 = this.messageOwner.fwd_from;
        if (messageFwdHeader2 != null) {
            TLRPC.Peer peer4 = messageFwdHeader2.from_id;
            if ((peer4 == null || peer4.user_id != clientUserId) && !messageFwdHeader2.saved_out) {
                z = false;
            }
            boolValueOf = Boolean.valueOf(z);
        }
        boolValueOf = Boolean.TRUE;
        this.isOutOwnerCached = boolValueOf;
        return z;
    }

    public boolean isPaid() {
        TLRPC.Message message = this.messageOwner;
        return message != null && message.paid_message_stars > 0;
    }

    public boolean isPaidReactionChosen() {
        if (this.messageOwner.reactions == null) {
            return false;
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
                return ((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).chosen;
            }
        }
        return false;
    }

    public boolean isPaidSuggestedPost() {
        TLRPC.Message message = this.messageOwner;
        return message != null && (message.paid_suggested_post_stars || message.paid_suggested_post_ton);
    }

    public boolean isPaidSuggestedPostProtected() {
        if (isPaidSuggestedPost()) {
            return ((long) (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - this.messageOwner.date)) < MessagesController.getInstance(this.currentAccount).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
        }
        return false;
    }

    public boolean isPhoto() {
        return isPhoto(this.messageOwner);
    }

    public boolean isPoll() {
        return this.type == 17 && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll);
    }

    public boolean isPollClosed() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.closed;
        }
        return false;
    }

    public boolean isPremiumSticker() {
        if (getMedia(this.messageOwner) == null || !getMedia(this.messageOwner).nopremium) {
            return isPremiumSticker(getDocument());
        }
        return false;
    }

    public boolean isPrivateForward() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        return (messageFwdHeader == null || TextUtils.isEmpty(messageFwdHeader.from_name)) ? false : true;
    }

    public boolean isPublicPoll() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.public_voters;
        }
        return false;
    }

    public boolean isQuickReply() {
        return isQuickReply(this.messageOwner);
    }

    public boolean isQuiz() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.quiz;
        }
        return false;
    }

    public boolean isReactionsAvailable() {
        return (isEditing() || isSponsored() || !isSent() || isExpiredStory() || !canSetReaction()) ? false : true;
    }

    public boolean isReply() {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        MessageObject messageObject = this.replyMessageObject;
        return ((messageObject != null && (messageObject.messageOwner instanceof TLRPC.TL_messageEmpty)) || (messageReplyHeader = (message = this.messageOwner).reply_to) == null || (messageReplyHeader.reply_to_msg_id == 0 && messageReplyHeader.reply_to_random_id == 0) || (message.flags & 8) == 0) ? false : true;
    }

    public boolean isReplyToStory() {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        MessageObject messageObject = this.replyMessageObject;
        return ((messageObject != null && (messageObject.messageOwner instanceof TLRPC.TL_messageEmpty)) || (messageReplyHeader = (message = this.messageOwner).reply_to) == null || messageReplyHeader.story_id == 0 || (message.flags & 8) == 0) ? false : true;
    }

    public boolean isRoundOnce() {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        return isRoundVideo() && (message = this.messageOwner) != null && (messageMedia = message.media) != null && messageMedia.ttl_seconds == Integer.MAX_VALUE;
    }

    public boolean isRoundVideo() {
        if (this.isRoundVideoCached == 0) {
            this.isRoundVideoCached = (this.type == 5 || isRoundVideoMessage(this.messageOwner)) ? 1 : 2;
        }
        return this.isRoundVideoCached == 1;
    }

    public boolean isSavedFromMegagroup() {
        TLRPC.Peer peer;
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        if (messageFwdHeader == null || (peer = messageFwdHeader.saved_from_peer) == null || peer.channel_id == 0) {
            return false;
        }
        return ChatObject.isMegagroup(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.saved_from_peer.channel_id)));
    }

    public boolean isSecret() {
        return this.messageOwner instanceof TLRPC.TL_message_secret;
    }

    public boolean isSecretMedia() {
        int i;
        TLRPC.Message message = this.messageOwner;
        return message instanceof TLRPC.TL_message_secret ? (((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isGif()) && (i = this.messageOwner.ttl) > 0 && i <= 60) || isVoice() || isRoundVideo() || isVideo() : (message instanceof TLRPC.TL_message) && getMedia(message) != null && getMedia(this.messageOwner).ttl_seconds != 0 && ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument));
    }

    public boolean isSendError() {
        TLRPC.Message message = this.messageOwner;
        if (message.send_state != 2 || message.id >= 0) {
            if (this.scheduled && message.id > 0) {
                if (message.date < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - (this.messageOwner.video_processing_pending ? LocationRequest.PRIORITY_INDOOR : 60)) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean isSending() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 1 && message.id < 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isSensitive() {
        TLRPC.Chat chat;
        int i;
        Boolean bool = this.isSensitiveCached;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.messageOwner == null || !canBeSensitive()) {
            return false;
        }
        if (this.messageOwner.restriction_reason.isEmpty()) {
            if (getDialogId() < 0) {
                while (i < chat.restriction_reason.size()) {
                }
            }
            this.isSensitiveCached = Boolean.FALSE;
            return false;
        }
        for (int i2 = 0; i2 < this.messageOwner.restriction_reason.size(); i2++) {
            TLRPC.RestrictionReason restrictionReason = (TLRPC.RestrictionReason) this.messageOwner.restriction_reason.get(i2);
            if ("sensitive".equals(restrictionReason.reason) && ("all".equals(restrictionReason.platform) || (((!ApplicationLoader.isStandaloneBuild() && !BuildVars.isBetaApp()) || BuildVars.DEBUG_PRIVATE_VERSION) && "android".equals(restrictionReason.platform)))) {
                break;
            }
        }
        if (getDialogId() < 0 && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) != null && chat.restriction_reason != null) {
            for (i = 0; i < chat.restriction_reason.size(); i++) {
                TLRPC.RestrictionReason restrictionReason2 = (TLRPC.RestrictionReason) chat.restriction_reason.get(i);
                if (!"sensitive".equals(restrictionReason2.reason) || (!"all".equals(restrictionReason2.platform) && (((ApplicationLoader.isStandaloneBuild() || BuildVars.isBetaApp()) && !BuildVars.DEBUG_PRIVATE_VERSION) || !"android".equals(restrictionReason2.platform)))) {
                }
            }
        }
        this.isSensitiveCached = Boolean.FALSE;
        return false;
        this.isSensitiveCached = Boolean.TRUE;
        return true;
    }

    public boolean isSent() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 0 || message.id > 0;
    }

    public boolean isSponsored() {
        return this.sponsoredId != null;
    }

    public boolean isStarGiftAction() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            TLRPC.MessageAction messageAction = message.action;
            if ((messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSticker() {
        int i = this.type;
        return i != 1000 ? i == 13 : isStickerDocument(getDocument()) || isVideoSticker(getDocument());
    }

    public boolean isStory() {
        return this.storyItem != null;
    }

    public boolean isStoryMedia() {
        TLRPC.Message message = this.messageOwner;
        return message != null && (message.media instanceof TLRPC.TL_messageMediaStory);
    }

    public boolean isStoryMention() {
        return this.type == 24 && !isExpiredStory();
    }

    public boolean isSupergroup() {
        if (this.localSupergroup) {
            return true;
        }
        Boolean bool = this.cachedIsSupergroup;
        if (bool != null) {
            return bool.booleanValue();
        }
        TLRPC.Peer peer = this.messageOwner.peer_id;
        if (peer != null) {
            long j = peer.channel_id;
            if (j != 0) {
                TLRPC.Chat chat = getChat(null, null, j);
                if (chat == null) {
                    return false;
                }
                boolean z = chat.megagroup;
                this.cachedIsSupergroup = Boolean.valueOf(z);
                return z;
            }
        }
        this.cachedIsSupergroup = Boolean.FALSE;
        return false;
    }

    public boolean isTheme() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_theme".equals(getMedia(this.messageOwner).webpage.type);
    }

    public boolean isTodo() {
        return this.type == 17 && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo);
    }

    public boolean isUnread() {
        TLRPC.Message message = this.messageOwner;
        return message != null && message.unread;
    }

    public boolean isUnsupported() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported;
    }

    public boolean isVideo() {
        return isVideoMessage(this.messageOwner);
    }

    public boolean isVideoAvatar() {
        TLRPC.Photo photo;
        TLRPC.MessageAction messageAction = this.messageOwner.action;
        return (messageAction == null || (photo = messageAction.photo) == null || photo.video_sizes.isEmpty()) ? false : true;
    }

    public boolean isVideoCall() {
        TLRPC.MessageAction messageAction = this.messageOwner.action;
        return ((messageAction instanceof TLRPC.TL_messageActionPhoneCall) && messageAction.video) || ((messageAction instanceof TLRPC.TL_messageActionConferenceCall) && messageAction.video);
    }

    public boolean isVideoSticker() {
        return getDocument() != null && isVideoStickerDocument(getDocument());
    }

    public boolean isVideoStory() {
        TL_stories$StoryItem tL_stories$StoryItem;
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media == null || (tL_stories$StoryItem = media.storyItem) == null || (messageMedia = tL_stories$StoryItem.media) == null) {
            return false;
        }
        return isVideoDocument(messageMedia.document);
    }

    public boolean isVoice() {
        return isVoiceMessage(this.messageOwner);
    }

    public boolean isVoiceOnce() {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        return isVoice() && (message = this.messageOwner) != null && (messageMedia = message.media) != null && messageMedia.ttl_seconds == Integer.MAX_VALUE;
    }

    public boolean isVoiceTranscriptionOpen() {
        if (this.messageOwner != null && (isVoice() || (isRoundVideo() && TranscribeButton.isVideoTranscriptionOpen(this)))) {
            TLRPC.Message message = this.messageOwner;
            if (message.voiceTranscriptionOpen && message.voiceTranscription != null && (message.voiceTranscriptionFinal || TranscribeButton.isTranscribing(this))) {
                return true;
            }
        }
        return false;
    }

    public boolean isVoted() {
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
        TLRPC.PollResults pollResults;
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaPoll) && (pollResults = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).results) != null && !pollResults.results.isEmpty()) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (((TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i)).chosen) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isWallpaper() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_background".equals(getMedia(this.messageOwner).webpage.type);
    }

    public boolean isWallpaperAction() {
        TLRPC.Message message;
        return this.type == 22 || ((message = this.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionSetSameChatWallPaper));
    }

    public boolean isWallpaperForBoth() {
        TLRPC.Message message;
        if (isWallpaperAction() && (message = this.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if ((messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) && ((TLRPC.TL_messageActionSetChatWallPaper) messageAction).for_both) {
                return true;
            }
        }
        return false;
    }

    public boolean isWebpage() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage;
    }

    public boolean isWebpageDocument() {
        return (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(this.messageOwner).webpage.document == null || isGifDocument(getMedia(this.messageOwner).webpage.document)) ? false : true;
    }

    public boolean isYouTubeVideo() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && !TextUtils.isEmpty(getMedia(this.messageOwner).webpage.embed_url) && "YouTube".equals(getMedia(this.messageOwner).webpage.site_name);
    }

    public void loadAnimatedEmojiDocument() {
        if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId == null || this.emojiAnimatedStickerLoading) {
            return;
        }
        this.emojiAnimatedStickerLoading = true;
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).fetchDocument(this.emojiAnimatedStickerId.longValue(), new AnimatedEmojiDrawable.ReceivedDocument() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.ReceivedDocument
            public final void run(TLRPC.Document document) {
                this.f$0.lambda$loadAnimatedEmojiDocument$1(document);
            }
        });
    }

    public void markReactionsAsRead() {
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || tL_messageReactions.recent_reactions == null) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.messageOwner.reactions.recent_reactions.size(); i++) {
            if (((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i)).unread) {
                ((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i)).unread = false;
                z = true;
            }
        }
        if (z) {
            MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            TLRPC.Message message = this.messageOwner;
            messagesStorage.markMessageReactionsAsRead(message.dialog_id, getTopicId(this.currentAccount, message), this.messageOwner.id, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureInlineBotButtons() {
        BotInlineKeyboard.Source sourceFromSuggestion;
        TLRPC.TL_messageReactions tL_messageReactions;
        CharSequence charSequenceReplaceEmoji;
        if (this.isRestrictedMessage) {
            return;
        }
        this.wantedBotKeyboardWidth = 0;
        this.inlineKeyboardSource = null;
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            TLRPC.ReplyMarkup replyMarkup = message.reply_markup;
            if ((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && replyMarkup.rows != null) {
                sourceFromSuggestion = BotInlineKeyboard.fromBot((TLRPC.TL_replyInlineMarkup) replyMarkup, hasSuggestionInlineButtons());
            } else if (hasSuggestionInlineButtons()) {
                sourceFromSuggestion = BotInlineKeyboard.fromSuggestion();
            }
            this.inlineKeyboardSource = sourceFromSuggestion;
        }
        BotInlineKeyboard.Source source = this.inlineKeyboardSource;
        if ((source != null && !hasExtendedMedia()) || ((tL_messageReactions = this.messageOwner.reactions) != null && !tL_messageReactions.results.isEmpty())) {
            Theme.createCommonMessageResources();
            StringBuilder sb = this.botButtonsLayout;
            if (sb == null) {
                this.botButtonsLayout = new StringBuilder();
            } else {
                sb.setLength(0);
            }
        }
        if (source == null || hasExtendedMedia()) {
            return;
        }
        for (int i = 0; i < source.getRowsCount(); i++) {
            int columnsCount = source.getColumnsCount(i);
            int iMax = 0;
            for (int i2 = 0; i2 < columnsCount; i2++) {
                BotInlineKeyboard.Button button = source.getButton(i, i2);
                StringBuilder sb2 = this.botButtonsLayout;
                sb2.append(i);
                sb2.append(i2);
                if ((button instanceof BotInlineKeyboard.ButtonBot) && (((BotInlineKeyboard.ButtonBot) button).button instanceof TLRPC.TL_keyboardButtonBuy) && (getMedia(this.messageOwner).flags & 4) != 0) {
                    charSequenceReplaceEmoji = LocaleController.getString(R.string.PaymentReceipt);
                } else {
                    String text = button.getText();
                    if (text == null) {
                        text = "";
                    }
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(text, Theme.chat_msgBotButtonPaint.getFontMetricsInt(), false);
                }
                StaticLayout staticLayout = new StaticLayout(charSequenceReplaceEmoji, Theme.chat_msgBotButtonPaint, AndroidUtilities.dp(2000.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                if (staticLayout.getLineCount() > 0) {
                    float lineWidth = staticLayout.getLineWidth(0);
                    float lineLeft = staticLayout.getLineLeft(0);
                    if (lineLeft < lineWidth) {
                        lineWidth -= lineLeft;
                    }
                    if (button.getIcon() != 0) {
                        lineWidth += AndroidUtilities.dp(36.0f);
                    }
                    iMax = Math.max(iMax, ((int) Math.ceil(lineWidth)) + AndroidUtilities.dp(4.0f));
                }
            }
            this.wantedBotKeyboardWidth = Math.max(this.wantedBotKeyboardWidth, ((iMax + AndroidUtilities.dp(12.0f)) * columnsCount) + (AndroidUtilities.dp(5.0f) * (columnsCount - 1)));
        }
    }

    public float measureVoiceTranscriptionHeight() {
        if (getVoiceTranscription() == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int iDp = AndroidUtilities.displaySize.x - AndroidUtilities.dp(needDrawAvatar() ? 147.0f : 95.0f);
        return (Build.VERSION.SDK_INT >= 24 ? StaticLayout.Builder.obtain(r1, 0, r1.length(), Theme.chat_msgTextPaint, iDp).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build() : new StaticLayout(r1, Theme.chat_msgTextPaint, iDp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false)).getHeight();
    }

    public boolean mediaExists() {
        VideoPlayer.VideoUri videoUri;
        return (!hasVideoQualities() || (videoUri = this.highestQuality) == null) ? this.mediaExists : videoUri.isCached();
    }

    public boolean needDrawAvatar() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Chat chat;
        if (this.type == 27) {
            return false;
        }
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || this.searchType != 0) {
            return true;
        }
        boolean z = getDialogId() >= 0 ? getDialogId() == UserObject.VERIFY : !((chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) == null || !chat.signature_profiles);
        if (isSponsored()) {
            return false;
        }
        return isFromUser() || isFromGroup() || z || this.eventId != 0 || !((messageFwdHeader = this.messageOwner.fwd_from) == null || messageFwdHeader.saved_from_peer == null);
    }

    public boolean needDrawBluredPreview() {
        if (this.isRepostPreview) {
            return false;
        }
        if (hasExtendedMediaPreview()) {
            return true;
        }
        TLRPC.Message message = this.messageOwner;
        if (message instanceof TLRPC.TL_message_secret) {
            int iMax = Math.max(message.ttl, getMedia(message).ttl_seconds);
            if (iMax > 0) {
                return (((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || isVideo() || isGif()) && iMax <= 60) || isRoundVideo();
            }
            return false;
        }
        if (!(message instanceof TLRPC.TL_message) || getMedia(message) == null || getMedia(this.messageOwner).ttl_seconds == 0) {
            return false;
        }
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean needDrawForwarded() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (this.type == 23 && !isExpiredStory()) {
            return true;
        }
        if (getDialogId() == UserObject.VERIFY) {
            return false;
        }
        if (this.isSaved) {
            TLRPC.Message message = this.messageOwner;
            if (message == null || message.fwd_from == null) {
                return false;
            }
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            long savedDialogId = getSavedDialogId(clientUserId, this.messageOwner);
            long peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.fwd_from.saved_from_peer);
            if (peerDialogId >= 0) {
                peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.fwd_from.from_id);
            }
            return peerDialogId == 0 ? savedDialogId >= 0 && savedDialogId != UserObject.ANONYMOUS : (savedDialogId == peerDialogId || peerDialogId == clientUserId) ? false : true;
        }
        if (((this.messageOwner.flags & 4) != 0 || (getMedia(this) instanceof TLRPC.TL_messageMediaPaidMedia)) && (messageFwdHeader = this.messageOwner.fwd_from) != null && !messageFwdHeader.imported) {
            TLRPC.Peer peer = messageFwdHeader.saved_from_peer;
            if (peer != null) {
                TLRPC.Peer peer2 = messageFwdHeader.from_id;
                if (!(peer2 instanceof TLRPC.TL_peerChannel) || peer.channel_id != peer2.channel_id) {
                    if (UserConfig.getInstance(this.currentAccount).getClientUserId() != getDialogId()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean needDrawShareButton() {
        int i;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (this.isRepostPreview || this.sideMenuEnabled || getDialogId() == UserObject.VERIFY) {
            return false;
        }
        if (this.isSaved) {
            long j = UserConfig.getInstance(this.currentAccount).clientUserId;
            long savedDialogId = getSavedDialogId(j, this.messageOwner);
            if (savedDialogId == j || savedDialogId == UserObject.ANONYMOUS || (message = this.messageOwner) == null || (messageFwdHeader = message.fwd_from) == null) {
                return false;
            }
            return (messageFwdHeader.from_id == null && messageFwdHeader.saved_from_id == null) ? false : true;
        }
        if (this.type == 27 || isSponsored() || this.hasCode || this.preview || this.scheduled || this.eventId != 0) {
            return false;
        }
        if (this.searchType == 2) {
            return true;
        }
        TLRPC.Message message2 = this.messageOwner;
        if (message2.noforwards) {
            return false;
        }
        if (message2.fwd_from != null && !isOutOwner() && this.messageOwner.fwd_from.saved_from_peer != null && getDialogId() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return true;
        }
        int i2 = this.type;
        if (i2 != 13 && i2 != 15 && i2 != 19) {
            TLRPC.MessageFwdHeader messageFwdHeader2 = this.messageOwner.fwd_from;
            if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerChannel) && !isOutOwner()) {
                return true;
            }
            if (isFromUser()) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
                if (user != null && user.bot && ("reviews_bot".equals(UserObject.getPublicUsername(user)) || "ReviewInsightsBot".equals(UserObject.getPublicUsername(user)))) {
                    return true;
                }
                if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty) || getMedia(this.messageOwner) == null || ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && !(getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage))) {
                    return false;
                }
                if (user != null && user.bot && !hasExtendedMedia()) {
                    return true;
                }
                if (!isOut()) {
                    if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && !hasExtendedMedia()) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage))) {
                        return true;
                    }
                    TLRPC.Peer peer = this.messageOwner.peer_id;
                    TLRPC.Chat chat = null;
                    if (peer != null) {
                        long j2 = peer.channel_id;
                        if (j2 != 0) {
                            chat = getChat(null, null, j2);
                        }
                    }
                    return ChatObject.isChannel(chat) && chat.megagroup && ChatObject.isPublic(chat) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo);
                }
            } else {
                TLRPC.Message message3 = this.messageOwner;
                if ((message3.from_id instanceof TLRPC.TL_peerChannel) || message3.post) {
                    if ((getMedia(message3) instanceof TLRPC.TL_messageMediaWebPage) && !isOutOwner()) {
                        return true;
                    }
                    if (isSupergroup()) {
                        return false;
                    }
                    TLRPC.Message message4 = this.messageOwner;
                    if (message4.peer_id.channel_id != 0 && ((message4.via_bot_id == 0 && message4.reply_to == null) || ((i = this.type) != 13 && i != 15))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean needResendWhenEdit() {
        return (!ChatObject.isMonoForum(this.currentAccount, getDialogId()) || getFromChatId() == UserConfig.getInstance(this.currentAccount).getClientUserId() || isOutOwner()) ? false : true;
    }

    public MessageSuggestionParams obtainSuggestionOffer() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.SuggestedPost suggestedPost = message.suggested_post;
        if (suggestedPost != null) {
            return MessageSuggestionParams.of(suggestedPost);
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
            return MessageSuggestionParams.of((TLRPC.TL_messageActionSuggestedPostApproval) messageAction);
        }
        return null;
    }

    public MessageSuggestionParams obtainSuggestionOfferFromReply() {
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            return messageObject.obtainSuggestionOffer();
        }
        return null;
    }

    public boolean probablyRingtone() {
        if (!isVoiceOnce() && getDocument() != null && RingtoneDataStore.ringtoneSupportedMimeType.contains(getDocument().mime_type) && getDocument().size < MessagesController.getInstance(this.currentAccount).ringtoneSizeMax * 2) {
            for (int i = 0; i < getDocument().attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = getDocument().attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && documentAttribute.duration < 5.0d) {
                    return true;
                }
            }
        }
        return false;
    }

    public Spannable replaceAnimatedEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt) {
        TLRPC.TL_textWithEntities tL_textWithEntities;
        return replaceAnimatedEmoji(charSequence, (!this.translated || (tL_textWithEntities = this.messageOwner.translatedText) == null) ? this.messageOwner.entities : tL_textWithEntities.entities, fontMetricsInt, false);
    }

    public void replaceEmojiToLottieFrame(CharSequence charSequence, int[] iArr) {
        boolean z;
        if (charSequence instanceof Spannable) {
            Spannable spannable = (Spannable) charSequence;
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannable.getSpans(0, spannable.length(), Emoji.EmojiSpan.class);
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannable.getSpans(0, spannable.length(), AnimatedEmojiSpan.class);
            if (emojiSpanArr != null) {
                if (((iArr == null ? 0 : iArr[0]) - emojiSpanArr.length) - (animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length) > 0) {
                    return;
                }
                for (int i = 0; i < emojiSpanArr.length; i++) {
                    CharSequence charSequenceSubSequence = emojiSpanArr[i].emoji;
                    if (Emoji.endsWithRightArrow(charSequenceSubSequence)) {
                        charSequenceSubSequence = charSequenceSubSequence.subSequence(0, charSequenceSubSequence.length() - 2);
                        z = true;
                    } else {
                        z = false;
                    }
                    TLRPC.Document emojiAnimatedSticker = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(charSequenceSubSequence);
                    if (emojiAnimatedSticker != null) {
                        int spanStart = spannable.getSpanStart(emojiSpanArr[i]);
                        int spanEnd = spannable.getSpanEnd(emojiSpanArr[i]);
                        spannable.removeSpan(emojiSpanArr[i]);
                        AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(emojiAnimatedSticker, emojiSpanArr[i].fontMetrics);
                        animatedEmojiSpan.standard = true;
                        animatedEmojiSpan.invert = z;
                        spannable.setSpan(animatedEmojiSpan, spanStart, spanEnd, 33);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0086 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence replaceWithLink(CharSequence charSequence, String str, ArrayList<Long> arrayList, AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray longSparseArray) {
        TLRPC.User user;
        Object obj;
        if (TextUtils.indexOf(charSequence, str) < 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
        for (int i = 0; i < arrayList.size(); i++) {
            if (abstractMap != null) {
                obj = abstractMap.get(arrayList.get(i));
            } else if (longSparseArray != null) {
                obj = longSparseArray.get(arrayList.get(i).longValue());
            } else {
                user = null;
                if (user == null) {
                    user = MessagesController.getInstance(this.currentAccount).getUser(arrayList.get(i));
                }
                if (user == null) {
                    String userName = UserObject.getUserName(user);
                    int length = spannableStringBuilder.length();
                    if (spannableStringBuilder.length() != 0) {
                        spannableStringBuilder.append((CharSequence) ", ");
                    }
                    spannableStringBuilder.append((CharSequence) userName);
                    spannableStringBuilder.setSpan(new URLSpanNoUnderlineBold("" + user.id), length, userName.length() + length, 33);
                }
            }
            user = (TLRPC.User) obj;
            if (user == null) {
            }
            if (user == null) {
            }
        }
        return TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{spannableStringBuilder});
    }

    public void resetLayout() {
        this.layoutCreated = false;
    }

    public void resetPlayingProgress() {
        this.audioProgress = BitmapDescriptorFactory.HUE_RED;
        this.audioProgressSec = 0;
        this.bufferedProgress = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean selectReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
        MessagesController messagesController;
        long dialogId;
        int i;
        TLRPC.TL_messageReactions tL_messageReactions;
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        ArrayList arrayList = new ArrayList();
        TLRPC.ReactionCount tL_reactionCount = null;
        int i2 = 0;
        for (int i3 = 0; i3 < this.messageOwner.reactions.results.size(); i3++) {
            TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
            if (reactionCount.chosen && !(reactionCount.reaction instanceof TLRPC.TL_reactionPaid)) {
                arrayList.add(reactionCount);
                int i4 = reactionCount.chosen_order;
                if (i4 > i2) {
                    i2 = i4;
                }
            }
            TLRPC.Reaction reaction = ((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3)).reaction;
            if (reaction instanceof TLRPC.TL_reactionEmoji) {
                String str = visibleReaction.emojicon;
                if (str != null) {
                    if (((TLRPC.TL_reactionEmoji) reaction).emoticon.equals(str)) {
                        tL_reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
                    }
                    if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                    }
                }
            } else if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                long j = visibleReaction.documentId;
                if (j != 0 && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == j) {
                    tL_reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
                }
            }
        }
        if (!arrayList.isEmpty() && arrayList.contains(tL_reactionCount) && z) {
            return true;
        }
        int maxUserReactionsCount = MessagesController.getInstance(this.currentAccount).getMaxUserReactionsCount();
        if (!arrayList.isEmpty() && arrayList.contains(tL_reactionCount)) {
            if (tL_reactionCount != null) {
                tL_reactionCount.chosen = false;
                int i5 = tL_reactionCount.count - 1;
                tL_reactionCount.count = i5;
                if (i5 <= 0) {
                    this.messageOwner.reactions.results.remove(tL_reactionCount);
                }
            }
            if (this.messageOwner.reactions.can_see_list) {
                int i6 = 0;
                while (i6 < this.messageOwner.reactions.recent_reactions.size()) {
                    if (getPeerId(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i6)).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i6)).reaction, visibleReaction)) {
                        this.messageOwner.reactions.recent_reactions.remove(i6);
                        i6--;
                    }
                    i6++;
                }
            }
            this.reactionsChanged = true;
            return false;
        }
        while (!arrayList.isEmpty() && arrayList.size() >= maxUserReactionsCount) {
            int i7 = 0;
            for (int i8 = 1; i8 < arrayList.size(); i8++) {
                if (!(((TLRPC.ReactionCount) arrayList.get(i8)).reaction instanceof TLRPC.TL_reactionPaid) && ((TLRPC.ReactionCount) arrayList.get(i8)).chosen_order < ((TLRPC.ReactionCount) arrayList.get(i7)).chosen_order) {
                    i7 = i8;
                }
            }
            TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) arrayList.get(i7);
            reactionCount2.chosen = false;
            int i9 = reactionCount2.count - 1;
            reactionCount2.count = i9;
            if (i9 <= 0) {
                this.messageOwner.reactions.results.remove(reactionCount2);
            }
            arrayList.remove(reactionCount2);
            if (this.messageOwner.reactions.can_see_list) {
                int i10 = 0;
                while (i10 < this.messageOwner.reactions.recent_reactions.size()) {
                    if (getPeerId(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i10)).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i10)).reaction, visibleReaction)) {
                        this.messageOwner.reactions.recent_reactions.remove(i10);
                        i10--;
                    }
                    i10++;
                }
            }
        }
        if (tL_reactionCount == null) {
            int chatMaxUniqReactions = MessagesController.getInstance(this.currentAccount).getChatMaxUniqReactions(getDialogId());
            TLRPC.Message message3 = this.messageOwner;
            if (message3 == null || (tL_messageReactions = message3.reactions) == null) {
                i = 0;
            } else {
                Iterator it = tL_messageReactions.results.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (!(((TLRPC.ReactionCount) it.next()).reaction instanceof TLRPC.TL_reactionPaid)) {
                        i++;
                    }
                }
            }
            if (i + 1 > chatMaxUniqReactions) {
                return false;
            }
            tL_reactionCount = new TLRPC.TL_reactionCount();
            tL_reactionCount.reaction = visibleReaction.toTLReaction();
            this.messageOwner.reactions.results.add(tL_reactionCount);
        }
        tL_reactionCount.chosen = true;
        tL_reactionCount.count++;
        tL_reactionCount.chosen_order = i2 + 1;
        TLRPC.Message message4 = this.messageOwner;
        if (message4.reactions.can_see_list || (message4.dialog_id > 0 && maxUserReactionsCount > 1)) {
            TLRPC.TL_messagePeerReaction tL_messagePeerReaction = new TLRPC.TL_messagePeerReaction();
            TLRPC.Message message5 = this.messageOwner;
            if (!message5.isThreadMessage || message5.fwd_from == null) {
                messagesController = MessagesController.getInstance(this.currentAccount);
                dialogId = getDialogId();
            } else {
                messagesController = MessagesController.getInstance(this.currentAccount);
                dialogId = getFromChatId();
            }
            tL_messagePeerReaction.peer_id = messagesController.getSendAsSelectedPeer(dialogId);
            this.messageOwner.reactions.recent_reactions.add(0, tL_messagePeerReaction);
            if (visibleReaction.emojicon != null) {
                TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
                tL_messagePeerReaction.reaction = tL_reactionEmoji;
                tL_reactionEmoji.emoticon = visibleReaction.emojicon;
            } else {
                TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
                tL_messagePeerReaction.reaction = tL_reactionCustomEmoji;
                tL_reactionCustomEmoji.document_id = visibleReaction.documentId;
            }
        }
        this.reactionsChanged = true;
        return true;
    }

    public void setContentIsRead() {
        this.messageOwner.media_unread = false;
    }

    public void setIsRead() {
        this.messageOwner.unread = false;
    }

    public void setMyPaidReactionDialogId(long j) {
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList arrayList;
        TLRPC.Peer peer;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) it.next();
            if (messageReactor != null && messageReactor.my) {
                boolean z = j == UserObject.ANONYMOUS;
                messageReactor.anonymous = z;
                if (z) {
                    messageReactor.flags &= -9;
                    peer = null;
                } else {
                    messageReactor.flags |= 8;
                    peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                }
                messageReactor.peer_id = peer;
            }
        }
    }

    public void setQuery(String str) {
        setQuery(str, true);
    }

    public void setQuery(String str, boolean z) {
        String strSubstring;
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            this.highlightedWords = null;
            this.messageTrimmedToHighlight = null;
            this.messageTrimmedToHighlightCut = true;
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        String lowerCase = str.trim().toLowerCase();
        String[] strArrSplit = lowerCase.split("[^\\p{L}#$]+");
        ArrayList arrayList2 = new ArrayList();
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null && !TextUtils.isEmpty(messageReplyHeader.quote_text)) {
            String lowerCase2 = this.messageOwner.reply_to.quote_text.trim().toLowerCase();
            if (lowerCase2.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
                handleFoundWords(arrayList, strArrSplit, true, z);
                return;
            }
            arrayList2.addAll(Arrays.asList(lowerCase2.split("[^\\p{L}#$]+")));
        }
        if (!TextUtils.isEmpty(this.messageOwner.message)) {
            String lowerCase3 = this.messageOwner.message.trim().toLowerCase();
            if (lowerCase3.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
                handleFoundWords(arrayList, strArrSplit, false, z);
                return;
            }
            arrayList2.addAll(Arrays.asList(lowerCase3.split("[^\\p{L}#$]+")));
        }
        if (getDocument() != null) {
            String lowerCase4 = FileLoader.getDocumentFileName(getDocument()).toLowerCase();
            if (lowerCase4.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
            }
            arrayList2.addAll(Arrays.asList(lowerCase4.split("[^\\p{L}#$]+")));
        }
        if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) {
            TLRPC.WebPage webPage = getMedia(this.messageOwner).webpage;
            String str2 = webPage.title;
            if (str2 == null) {
                str2 = webPage.site_name;
            }
            if (str2 != null) {
                String lowerCase5 = str2.toLowerCase();
                if (lowerCase5.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                    arrayList.add(lowerCase);
                }
                arrayList2.addAll(Arrays.asList(lowerCase5.split("[^\\p{L}#$]+")));
            }
        }
        String musicAuthor = getMusicAuthor();
        if (musicAuthor != null) {
            String lowerCase6 = musicAuthor.toLowerCase();
            if (lowerCase6.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
            }
            arrayList2.addAll(Arrays.asList(lowerCase6.split("[^\\p{L}#$]+")));
        }
        for (String str3 : strArrSplit) {
            if (str3.length() >= 2) {
                for (int i = 0; i < arrayList2.size(); i++) {
                    if (!arrayList.contains(arrayList2.get(i)) && (iIndexOf = (strSubstring = (String) arrayList2.get(i)).indexOf(str3.charAt(0))) >= 0) {
                        int iMax = Math.max(str3.length(), strSubstring.length());
                        if (iIndexOf != 0) {
                            strSubstring = strSubstring.substring(iIndexOf);
                        }
                        int iMin = Math.min(str3.length(), strSubstring.length());
                        int i2 = 0;
                        for (int i3 = 0; i3 < iMin && strSubstring.charAt(i3) == str3.charAt(i3); i3++) {
                            i2++;
                        }
                        if (i2 / iMax >= 0.5d) {
                            arrayList.add((String) arrayList2.get(i));
                        }
                    }
                }
            }
        }
        handleFoundWords(arrayList, strArrSplit, false, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0135, code lost:
    
        if ((r3 instanceof org.telegram.tgnet.TLRPC.TL_decryptedMessageActionSetMessageTTL) == false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:198:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setType() {
        int i;
        int i2;
        TLObject tLObject;
        TLRPC.WallPaper wallPaper;
        int i3 = this.type;
        this.type = 1000;
        this.isRoundVideoCached = 0;
        if (isSponsored()) {
            i = 0;
            this.type = i;
        } else {
            i = 1;
            if (this.channelJoined) {
                this.type = 27;
                this.channelJoinedExpanded = MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("c" + getDialogId() + "_rec", true);
            } else {
                TLRPC.Message message = this.messageOwner;
                if (!(message instanceof TLRPC.TL_message) && !(message instanceof TLRPC.TL_messageForwarded_old2)) {
                    TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = this.currentEvent;
                    if (tL_channelAdminLogEvent != null) {
                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                            TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                            this.contentType = 1;
                            TLRPC.WallPaper wallPaper2 = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                            if (!(wallPaper2 instanceof TLRPC.TL_wallPaperNoFile) || wallPaper2.id != 0 || wallPaper2.settings != null) {
                                this.type = 22;
                                ArrayList<TLRPC.PhotoSize> arrayList = new ArrayList<>();
                                this.photoThumbs = arrayList;
                                TLRPC.Document document = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                if (document != null) {
                                    arrayList.addAll(document.thumbs);
                                    wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                                    tLObject = wallPaper.document;
                                }
                            }
                            i = 10;
                            this.type = i;
                        } else if (message instanceof TLRPC.TL_messageService) {
                            TLRPC.MessageAction messageAction = message.action;
                            if (!(messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper)) {
                                if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                                    this.contentType = 1;
                                    this.type = 22;
                                    TLRPC.TL_messageActionSetChatWallPaper tL_messageActionSetChatWallPaper = (TLRPC.TL_messageActionSetChatWallPaper) messageAction;
                                    ArrayList<TLRPC.PhotoSize> arrayList2 = new ArrayList<>();
                                    this.photoThumbs = arrayList2;
                                    TLRPC.Document document2 = tL_messageActionSetChatWallPaper.wallpaper.document;
                                    if (document2 != null) {
                                        arrayList2.addAll(document2.thumbs);
                                        wallPaper = tL_messageActionSetChatWallPaper.wallpaper;
                                        tLObject = wallPaper.document;
                                    }
                                } else if (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                                    this.contentType = 1;
                                    this.type = 21;
                                    ArrayList<TLRPC.PhotoSize> arrayList3 = new ArrayList<>();
                                    this.photoThumbs = arrayList3;
                                    arrayList3.addAll(this.messageOwner.action.photo.sizes);
                                    tLObject = this.messageOwner.action.photo;
                                } else {
                                    if (!(messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation)) {
                                        boolean z = messageAction instanceof TLRPC.TL_messageActionGiftCode;
                                        if (z && ((TLRPC.TL_messageActionGiftCode) messageAction).boost_peer != null) {
                                            this.contentType = 1;
                                            i = 25;
                                        } else if ((messageAction instanceof TLRPC.TL_messageActionGiftPremium) || z) {
                                            this.contentType = 1;
                                            i = 18;
                                        } else if ((messageAction instanceof TLRPC.TL_messageActionGiftStars) || (messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionPrizeStars) || (((messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction).refunded) || (messageAction instanceof TLRPC.TL_messageActionGiftTon))) {
                                            this.contentType = 1;
                                            i = 30;
                                        } else if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto)) {
                                            this.contentType = 1;
                                            i = 11;
                                        } else if (messageAction instanceof TLRPC.TL_messageEncryptedAction) {
                                            TLRPC.DecryptedMessageAction decryptedMessageAction = messageAction.encryptedAction;
                                            if (!(decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages)) {
                                            }
                                        } else if (messageAction instanceof TLRPC.TL_messageActionHistoryClear) {
                                            i = -1;
                                            this.contentType = -1;
                                        } else if ((messageAction instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction instanceof TLRPC.TL_messageActionConferenceCall)) {
                                            i = 16;
                                        }
                                    }
                                    this.type = i;
                                }
                            }
                            this.contentType = 1;
                            i = 10;
                            this.type = i;
                        }
                        this.photoThumbsObject = tLObject;
                    }
                } else if (!this.isRestrictedMessage) {
                    if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId != null) {
                        i = isSticker() ? 13 : 15;
                    } else if (message.media instanceof TLRPC.TL_messageMediaPaidMedia) {
                        i = 29;
                    } else if (isMediaEmpty(false) && !isDice() && !isSponsored() && this.emojiOnlyCount >= 1 && !this.hasUnwrappedEmoji && this.messageOwner != null && !hasNonEmojiEntities()) {
                        i = 19;
                    } else if (isMediaEmpty()) {
                        this.type = 0;
                        if (TextUtils.isEmpty(this.messageText) && this.eventId == 0) {
                            this.messageText = "";
                        }
                    } else if (hasExtendedMediaPreview()) {
                        i = 20;
                    } else {
                        if (getMedia(this.messageOwner).ttl_seconds == 0 || (!(getMedia(this.messageOwner).photo instanceof TLRPC.TL_photoEmpty) && !(getDocument() instanceof TLRPC.TL_documentEmpty) && ((!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) || getDocument() != null) && !this.forceExpired))) {
                            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveaway) {
                                i = 26;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                i = 28;
                            } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
                                this.type = 15;
                                if (getMedia(this.messageOwner).document == null) {
                                    getMedia(this.messageOwner).document = new TLRPC.TL_document();
                                    getMedia(this.messageOwner).document.file_reference = new byte[0];
                                    getMedia(this.messageOwner).document.mime_type = "application/x-tgsdice";
                                    getMedia(this.messageOwner).document.dc_id = Integer.MIN_VALUE;
                                    getMedia(this.messageOwner).document.id = -2147483648L;
                                    TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                    tL_documentAttributeImageSize.w = LiteMode.FLAG_CALLS_ANIMATIONS;
                                    tL_documentAttributeImageSize.h = LiteMode.FLAG_CALLS_ANIMATIONS;
                                    getMedia(this.messageOwner).document.attributes.add(tL_documentAttributeImageSize);
                                }
                            } else if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto)) {
                                if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaVenue) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeoLive)) {
                                    i = 4;
                                } else if (isRoundVideo()) {
                                    i = 5;
                                } else if (isVideo()) {
                                    i = 3;
                                } else if (isVoice()) {
                                    i = 2;
                                } else if (isMusic()) {
                                    i = 14;
                                } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) {
                                    i = 12;
                                } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo)) {
                                    this.type = 17;
                                    this.checkedVotes = new ArrayList<>();
                                } else if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported)) {
                                    if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                                        TLRPC.Document document3 = getDocument();
                                        if (document3 == null || document3.mime_type == null) {
                                            i = 9;
                                        } else if (isGifDocument(document3, hasValidGroupId())) {
                                            i = 8;
                                        } else {
                                            if (!isSticker()) {
                                                if (isAnimatedSticker()) {
                                                }
                                            }
                                        }
                                    } else {
                                        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaStory) {
                                                int i4 = getMedia(this.messageOwner).via_mention ? 24 : 23;
                                                this.type = i4;
                                                if (i4 == 24) {
                                                    this.contentType = 1;
                                                }
                                            }
                                        }
                                        i = 0;
                                    }
                                }
                            }
                        }
                        this.contentType = 1;
                        i = 10;
                    }
                    this.type = i;
                }
            }
        }
        if (i3 == 1000 || i3 == (i2 = this.type) || i2 == 19) {
            return;
        }
        updateMessageText(MessagesController.getInstance(this.currentAccount).getUsers(), MessagesController.getInstance(this.currentAccount).getChats(), null, null);
        generateThumbs(false);
    }

    public boolean shouldAnimateSending() {
        return this.wasJustSent && (this.type == 5 || isVoice() || ((isAnyKindOfSticker() && this.sendAnimationData != null) || !(this.messageText == null || this.sendAnimationData == null)));
    }

    public boolean shouldDrawReactions() {
        return !this.isRepostPreview;
    }

    public boolean shouldDrawReactionsInLayout() {
        return true;
    }

    public boolean shouldDrawWithoutBackground() {
        int i;
        return !isSponsored() && ((i = this.type) == 13 || i == 15 || i == 5 || i == 19 || isExpiredStory());
    }

    public boolean shouldEncryptPhotoOrVideo() {
        return shouldEncryptPhotoOrVideo(this.currentAccount, this.messageOwner);
    }

    public void spoilLoginCode() {
        TLRPC.Message message;
        if (this.spoiledLoginCode || this.messageText == null || (message = this.messageOwner) == null || message.entities == null) {
            return;
        }
        TLRPC.Peer peer = message.from_id;
        if (peer instanceof TLRPC.TL_peerUser) {
            long j = peer.user_id;
            if (j == 777000 || j == UserObject.VERIFY) {
                if (loginCodePattern == null) {
                    loginCodePattern = Pattern.compile("[\\d\\-]{5,8}");
                }
                try {
                    Matcher matcher = loginCodePattern.matcher(this.messageText);
                    if (matcher.find()) {
                        TLRPC.TL_messageEntitySpoiler tL_messageEntitySpoiler = new TLRPC.TL_messageEntitySpoiler();
                        tL_messageEntitySpoiler.offset = matcher.start();
                        tL_messageEntitySpoiler.length = matcher.end() - tL_messageEntitySpoiler.offset;
                        this.messageOwner.entities.add(tL_messageEntitySpoiler);
                    }
                } catch (Exception e) {
                    FileLog.e((Throwable) e, false);
                }
                this.spoiledLoginCode = true;
            }
        }
    }

    public int textHeight() {
        if (this.textLayoutBlocks == null) {
            return 0;
        }
        int iHeight = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height() + this.textLayoutBlocks.get(i).padBottom;
        }
        return iHeight;
    }

    public int textHeight(ChatMessageCell.TransitionParams transitionParams) {
        if (this.textLayoutBlocks == null) {
            return 0;
        }
        int iHeight = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height(transitionParams) + this.textLayoutBlocks.get(i).padBottom;
        }
        return iHeight;
    }

    public int textHeightCached() {
        Integer num = this.cachedTextHeight;
        if (num != null) {
            return num.intValue();
        }
        if (this.textLayoutBlocks == null) {
            this.cachedTextHeight = 0;
            return 0;
        }
        int iHeightCollapsed = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeightCollapsed += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).heightCollapsed() + this.textLayoutBlocks.get(i).padBottom;
        }
        this.cachedTextHeight = Integer.valueOf(iHeightCollapsed);
        return iHeightCollapsed;
    }

    public void toggleChannelRecommendations() {
        expandChannelRecommendations(!this.channelJoinedExpanded);
    }

    public void updateMessageText() {
        updateMessageText(MessagesController.getInstance(this.currentAccount).getUsers(), MessagesController.getInstance(this.currentAccount).getChats(), null, null);
    }

    public void updateQualitiesCached(boolean z) {
        ArrayList<VideoPlayer.Quality> arrayList = this.videoQualities;
        if (arrayList == null) {
            this.cachedQuality = null;
            hasVideoQualities(z);
            return;
        }
        Iterator<VideoPlayer.Quality> it = arrayList.iterator();
        while (it.hasNext()) {
            Iterator it2 = it.next().uris.iterator();
            while (it2.hasNext()) {
                ((VideoPlayer.VideoUri) it2.next()).updateCached(z);
            }
        }
        this.highestQuality = VideoPlayer.getQualityForPlayer(this.videoQualities);
        this.thumbQuality = VideoPlayer.getQualityForThumb(this.videoQualities);
        this.cachedQuality = VideoPlayer.getCachedQuality(this.videoQualities);
    }

    public boolean updateSideMenuEnabled(boolean z) {
        if (this.sideMenuEnabled == z) {
            return false;
        }
        this.sideMenuEnabled = z;
        generateLayout(null);
        return true;
    }

    public boolean updateTranslation() {
        return updateTranslation(false);
    }

    public boolean updateTranslation(boolean z) {
        TLRPC.Message message;
        MessageObject messageObject = this.replyMessageObject;
        boolean z2 = (messageObject == null || messageObject == this || !messageObject.updateTranslation(z)) ? false : true;
        TranslateController translateController = MessagesController.getInstance(this.currentAccount).getTranslateController();
        if (TranslateController.isTranslatable(this) && translateController.isTranslatingDialog(getDialogId()) && !translateController.isTranslateDialogHidden(getDialogId()) && (message = this.messageOwner) != null && ((message.translatedText != null || message.translatedPoll != null) && TextUtils.equals(translateController.getDialogTranslateTo(getDialogId()), this.messageOwner.translatedToLanguage))) {
            if (this.translated) {
                return z2;
            }
            this.translated = true;
            TLRPC.TL_textWithEntities tL_textWithEntities = this.messageOwner.translatedText;
            if (tL_textWithEntities != null) {
                applyNewText(tL_textWithEntities.text);
                generateCaption();
            }
            return true;
        }
        TLRPC.Message message2 = this.messageOwner;
        if (message2 == null || !(z || this.translated)) {
            return z2;
        }
        this.translated = false;
        applyNewText(message2.message);
        generateCaption();
        return true;
    }
}
