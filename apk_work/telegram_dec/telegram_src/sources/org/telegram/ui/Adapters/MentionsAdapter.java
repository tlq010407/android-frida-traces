package org.telegram.ui.Adapters;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Build;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots$BotInfo;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Business.QuickRepliesActivity;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.BotSwitchCell;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.MentionCell;
import org.telegram.ui.Cells.StickerCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.PremiumPreviewFragment;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class MentionsAdapter extends RecyclerListView.SelectionAdapter implements NotificationCenter.NotificationCenterDelegate {
    private LongSparseArray botInfo;
    private int botsCount;
    private HashtagHint bottomHint;
    private Runnable cancelDelayRunnable;
    private int channelLastReqId;
    private int channelReqId;
    public TLRPC.Chat chat;
    private Runnable checkAgainRunnable;
    private boolean contextMedia;
    private int contextQueryReqid;
    private Runnable contextQueryRunnable;
    private int contextUsernameReqid;
    private boolean delayLocalResults;
    private MentionsAdapterDelegate delegate;
    private long dialog_id;
    private TLRPC.User foundContextBot;
    private String hintHashtag;
    private boolean hintHashtagDivider;
    private TLRPC.ChatFull info;
    private boolean isDarkTheme;
    private boolean isSearchingMentions;
    private Object[] lastData;
    private boolean lastForSearch;
    private Location lastKnownLocation;
    private int lastPosition;
    private int lastReqId;
    private String[] lastSearchKeyboardLanguage;
    private String lastSticker;
    private String lastText;
    private boolean lastUsernameOnly;
    private final Context mContext;
    private EmojiView.ChooseStickerActionTracker mentionsStickersActionTracker;
    private ArrayList messages;
    private String nextQueryOffset;
    private boolean noUserName;
    public ChatActivity parentFragment;
    private ArrayList quickReplies;
    private String quickRepliesQuery;
    private final Theme.ResourcesProvider resourcesProvider;
    private int resultLength;
    private int resultStartPosition;
    private SearchAdapterHelper searchAdapterHelper;
    private Runnable searchGlobalRunnable;
    private ArrayList searchResultBotContext;
    private TLRPC.TL_inlineBotSwitchPM searchResultBotContextSwitch;
    private long searchResultBotContextSwitchUserId;
    private TLRPC.TL_inlineBotWebView searchResultBotWebViewSwitch;
    private ArrayList searchResultCommands;
    private ArrayList searchResultCommandsHelp;
    private ArrayList searchResultCommandsUsers;
    private ArrayList searchResultHashtags;
    private ArrayList searchResultSuggestions;
    private ArrayList searchResultUsernames;
    private LongSparseArray searchResultUsernamesMap;
    private String searchingContextQuery;
    private String searchingContextUsername;
    private ArrayList stickers;
    private HashMap stickersMap;
    private final boolean stories;
    private long threadMessageId;
    private HashtagHint topHint;
    private TLRPC.User user;
    private boolean visibleByStickersSearch;
    private boolean allowStickers = true;
    private boolean allowBots = true;
    private boolean allowChats = true;
    private final boolean USE_DIVIDERS = false;
    private int currentAccount = UserConfig.selectedAccount;
    private boolean needUsernames = true;
    private boolean needBotContext = true;
    private boolean inlineMediaEnabled = true;
    private boolean searchInDailogs = false;
    private ArrayList stickersToLoad = new ArrayList();
    private SendMessagesHelper.LocationProvider locationProvider = new SendMessagesHelper.LocationProvider(new SendMessagesHelper.LocationProvider.LocationProviderDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter.1
        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
        public void onLocationAcquired(Location location) {
            if (MentionsAdapter.this.foundContextBot == null || !MentionsAdapter.this.foundContextBot.bot_inline_geo) {
                return;
            }
            MentionsAdapter.this.lastKnownLocation = location;
            MentionsAdapter mentionsAdapter = MentionsAdapter.this;
            mentionsAdapter.searchForContextBotResults(true, mentionsAdapter.foundContextBot, MentionsAdapter.this.searchingContextQuery, "");
        }

        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
        public void onUnableLocationAcquire() {
            MentionsAdapter.this.onLocationUnavailable();
        }
    }) { // from class: org.telegram.ui.Adapters.MentionsAdapter.2
        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider
        public void stop() {
            super.stop();
            MentionsAdapter.this.lastKnownLocation = null;
        }
    };
    private boolean isReversed = false;
    private int lastItemCount = -1;

    /* renamed from: org.telegram.ui.Adapters.MentionsAdapter$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ MessagesController val$messagesController;
        final /* synthetic */ MessagesStorage val$messagesStorage;
        final /* synthetic */ String val$query;
        final /* synthetic */ String val$username;

        AnonymousClass4(String str, String str2, MessagesController messagesController, MessagesStorage messagesStorage) {
            this.val$query = str;
            this.val$username = str2;
            this.val$messagesController = messagesController;
            this.val$messagesStorage = messagesStorage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(String str, TLRPC.TL_error tL_error, TLObject tLObject, MessagesController messagesController, MessagesStorage messagesStorage) {
            if (MentionsAdapter.this.searchingContextUsername == null || !MentionsAdapter.this.searchingContextUsername.equals(str)) {
                return;
            }
            TLRPC.User user = null;
            if (tL_error == null) {
                TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
                if (!tL_contacts_resolvedPeer.users.isEmpty()) {
                    TLRPC.User user2 = (TLRPC.User) tL_contacts_resolvedPeer.users.get(0);
                    messagesController.putUser(user2, false);
                    messagesStorage.putUsersAndChats(tL_contacts_resolvedPeer.users, null, true, true);
                    user = user2;
                }
            }
            MentionsAdapter.this.processFoundUser(user);
            MentionsAdapter.this.contextUsernameReqid = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final String str, final MessagesController messagesController, final MessagesStorage messagesStorage, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(str, tL_error, tLObject, messagesController, messagesStorage);
                }
            });
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MentionsAdapter.this.contextQueryRunnable != this) {
                return;
            }
            MentionsAdapter.this.contextQueryRunnable = null;
            if (MentionsAdapter.this.foundContextBot != null || MentionsAdapter.this.noUserName) {
                if (MentionsAdapter.this.noUserName) {
                    return;
                }
                MentionsAdapter mentionsAdapter = MentionsAdapter.this;
                mentionsAdapter.searchForContextBotResults(true, mentionsAdapter.foundContextBot, this.val$query, "");
                return;
            }
            MentionsAdapter.this.searchingContextUsername = this.val$username;
            TLObject userOrChat = this.val$messagesController.getUserOrChat(MentionsAdapter.this.searchingContextUsername);
            if (userOrChat instanceof TLRPC.User) {
                MentionsAdapter.this.processFoundUser((TLRPC.User) userOrChat);
                return;
            }
            TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
            tL_contacts_resolveUsername.username = MentionsAdapter.this.searchingContextUsername;
            MentionsAdapter mentionsAdapter2 = MentionsAdapter.this;
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(mentionsAdapter2.currentAccount);
            final String str = this.val$username;
            final MessagesController messagesController = this.val$messagesController;
            final MessagesStorage messagesStorage = this.val$messagesStorage;
            mentionsAdapter2.contextUsernameReqid = connectionsManager.sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$4$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$run$1(str, messagesController, messagesStorage, tLObject, tL_error);
                }
            });
        }
    }

    /* renamed from: org.telegram.ui.Adapters.MentionsAdapter$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ TLRPC.Chat val$chat;
        final /* synthetic */ MessagesController val$messagesController;
        final /* synthetic */ LongSparseArray val$newMap;
        final /* synthetic */ ArrayList val$newResult;
        final /* synthetic */ long val$threadId;
        final /* synthetic */ String val$usernameString;

        AnonymousClass7(TLRPC.Chat chat, String str, long j, ArrayList arrayList, LongSparseArray longSparseArray, MessagesController messagesController) {
            this.val$chat = chat;
            this.val$usernameString = str;
            this.val$threadId = j;
            this.val$newResult = arrayList;
            this.val$newMap = longSparseArray;
            this.val$messagesController = messagesController;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(int i, ArrayList arrayList, LongSparseArray longSparseArray, TLRPC.TL_error tL_error, TLObject tLObject, MessagesController messagesController) {
            TLObject chat;
            if (MentionsAdapter.this.channelReqId != 0 && i == MentionsAdapter.this.channelLastReqId && MentionsAdapter.this.searchResultUsernamesMap != null && MentionsAdapter.this.searchResultUsernames != null) {
                MentionsAdapter.this.showUsersResult(arrayList, longSparseArray, false);
                if (tL_error == null) {
                    TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) tLObject;
                    messagesController.putUsers(tL_channels_channelParticipants.users, false);
                    messagesController.putChats(tL_channels_channelParticipants.chats, false);
                    MentionsAdapter.this.searchResultUsernames.isEmpty();
                    if (!tL_channels_channelParticipants.participants.isEmpty()) {
                        long clientUserId = UserConfig.getInstance(MentionsAdapter.this.currentAccount).getClientUserId();
                        for (int i2 = 0; i2 < tL_channels_channelParticipants.participants.size(); i2++) {
                            long peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) tL_channels_channelParticipants.participants.get(i2)).peer);
                            if (MentionsAdapter.this.searchResultUsernamesMap.indexOfKey(peerId) < 0 && ((peerId != 0 || MentionsAdapter.this.searchResultUsernamesMap.indexOfKey(clientUserId) < 0) && (MentionsAdapter.this.isSearchingMentions || (peerId != clientUserId && peerId != 0)))) {
                                if (peerId >= 0) {
                                    chat = messagesController.getUser(Long.valueOf(peerId));
                                    if (chat == null) {
                                        return;
                                    }
                                } else {
                                    chat = messagesController.getChat(Long.valueOf(-peerId));
                                    if (chat == null) {
                                        return;
                                    }
                                }
                                MentionsAdapter.this.searchResultUsernames.add(chat);
                            }
                        }
                    }
                }
                MentionsAdapter.this.notifyDataSetChanged();
                MentionsAdapter.this.delegate.needChangePanelVisibility(!MentionsAdapter.this.searchResultUsernames.isEmpty());
            }
            MentionsAdapter.this.channelReqId = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final int i, final ArrayList arrayList, final LongSparseArray longSparseArray, final MessagesController messagesController, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$7$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(i, arrayList, longSparseArray, tL_error, tLObject, messagesController);
                }
            });
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MentionsAdapter.this.searchGlobalRunnable != this) {
                return;
            }
            TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
            tL_channels_getParticipants.channel = MessagesController.getInputChannel(this.val$chat);
            tL_channels_getParticipants.limit = 20;
            tL_channels_getParticipants.offset = 0;
            TLRPC.TL_channelParticipantsMentions tL_channelParticipantsMentions = new TLRPC.TL_channelParticipantsMentions();
            int i = tL_channelParticipantsMentions.flags;
            tL_channelParticipantsMentions.flags = i | 1;
            tL_channelParticipantsMentions.q = this.val$usernameString;
            long j = this.val$threadId;
            if (j != 0) {
                tL_channelParticipantsMentions.flags = i | 3;
                tL_channelParticipantsMentions.top_msg_id = (int) j;
            }
            tL_channels_getParticipants.filter = tL_channelParticipantsMentions;
            final int iAccess$1704 = MentionsAdapter.access$1704(MentionsAdapter.this);
            MentionsAdapter mentionsAdapter = MentionsAdapter.this;
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(mentionsAdapter.currentAccount);
            final ArrayList arrayList = this.val$newResult;
            final LongSparseArray longSparseArray = this.val$newMap;
            final MessagesController messagesController = this.val$messagesController;
            mentionsAdapter.channelReqId = connectionsManager.sendRequest(tL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$7$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$run$1(iAccess$1704, arrayList, longSparseArray, messagesController, tLObject, tL_error);
                }
            });
        }
    }

    public static class HashtagHint extends LinearLayout {
        private final AvatarDrawable avatarDrawable;
        private final BackupImageView imageView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final LinearLayout textLayout;
        private final TextView textView;
        private final TextView titleView;
        private final boolean transparent;

        public HashtagHint(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.resourcesProvider = resourcesProvider;
            this.transparent = z;
            setOrientation(0);
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(28.0f));
            addView(backupImageView, LayoutHelper.createLinear(28, 28, 19, 12, 0, 12, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createLinear(-1, -2, 55, 0, 4, 12, 4));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 15.0f);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            TextView textView2 = new TextView(context);
            this.textView = textView2;
            textView2.setTextSize(1, 13.0f);
            textView2.setTextColor(z ? Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.5f) : Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }

        public void set(int i, String str, TLRPC.Chat chat) {
            TextView textView;
            int i2;
            if (str == null) {
                return;
            }
            if (i == 0) {
                CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)), getContext().getResources().getDrawable(R.drawable.menu_hashtag).mutate());
                combinedDrawable.setIconOffset(AndroidUtilities.dp(-0.66f), 0);
                combinedDrawable.setIconSize(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f));
                this.imageView.setImageDrawable(combinedDrawable);
                this.titleView.setText(LocaleController.formatString(R.string.HashtagSuggestion1Title, str));
                textView = this.textView;
                i2 = R.string.HashtagSuggestion1Text;
            } else {
                this.avatarDrawable.setInfo(chat);
                this.imageView.setForUserOrChat(chat, this.avatarDrawable);
                this.titleView.setText(PremiumPreviewFragment.applyNewSpan(LocaleController.formatString(R.string.HashtagSuggestion2Title, str + "@" + ChatObject.getPublicUsername(chat)), 8));
                textView = this.textView;
                i2 = R.string.HashtagSuggestion2Text;
            }
            textView.setText(LocaleController.getString(i2));
        }
    }

    public interface MentionsAdapterDelegate {
        void needChangePanelVisibility(boolean z);

        void onContextClick(TLRPC.BotInlineResult botInlineResult);

        void onContextSearch(boolean z);

        void onItemCountUpdate(int i, int i2);
    }

    private static class StickerResult {
        public Object parent;
        public TLRPC.Document sticker;

        public StickerResult(TLRPC.Document document, Object obj) {
            this.sticker = document;
            this.parent = obj;
        }
    }

    public MentionsAdapter(Context context, boolean z, long j, long j2, MentionsAdapterDelegate mentionsAdapterDelegate, Theme.ResourcesProvider resourcesProvider, boolean z2) {
        this.resourcesProvider = resourcesProvider;
        this.mContext = context;
        this.delegate = mentionsAdapterDelegate;
        this.isDarkTheme = z;
        this.dialog_id = j;
        this.stories = z2;
        this.threadMessageId = j2;
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter.3
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ boolean canApplySearchResults(int i) {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$canApplySearchResults(this, i);
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ LongSparseArray getExcludeUsers() {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onDataSetChanged(int i) {
                MentionsAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onSetHashtags(ArrayList arrayList, HashMap map) {
                if (MentionsAdapter.this.lastText != null) {
                    MentionsAdapter mentionsAdapter = MentionsAdapter.this;
                    mentionsAdapter.lambda$searchUsernameOrHashtag$7(mentionsAdapter.lastText, MentionsAdapter.this.lastPosition, MentionsAdapter.this.messages, MentionsAdapter.this.lastUsernameOnly, MentionsAdapter.this.lastForSearch);
                }
            }
        });
        if (!z) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadFailed);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentDocumentsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
    }

    static /* synthetic */ int access$1704(MentionsAdapter mentionsAdapter) {
        int i = mentionsAdapter.channelLastReqId + 1;
        mentionsAdapter.channelLastReqId = i;
        return i;
    }

    private void addStickerToResult(TLRPC.Document document, Object obj) {
        if (document == null) {
            return;
        }
        String str = document.dc_id + "_" + document.id;
        HashMap map = this.stickersMap;
        if (map == null || !map.containsKey(str)) {
            if (UserConfig.getInstance(this.currentAccount).isPremium() || !MessageObject.isPremiumSticker(document)) {
                if (this.stickers == null) {
                    this.stickers = new ArrayList();
                    this.stickersMap = new HashMap();
                }
                this.stickers.add(new StickerResult(document, obj));
                this.stickersMap.put(str, document);
                EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = this.mentionsStickersActionTracker;
                if (chooseStickerActionTracker != null) {
                    chooseStickerActionTracker.checkVisibility();
                }
            }
        }
    }

    private void addStickersToResult(ArrayList arrayList, Object obj) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Document document = (TLRPC.Document) arrayList.get(i);
            String str = document.dc_id + "_" + document.id;
            HashMap map = this.stickersMap;
            if ((map == null || !map.containsKey(str)) && (UserConfig.getInstance(this.currentAccount).isPremium() || !MessageObject.isPremiumSticker(document))) {
                int size2 = document.attributes.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                        obj = documentAttribute.stickerset;
                        break;
                    }
                    i2++;
                }
                if (this.stickers == null) {
                    this.stickers = new ArrayList();
                    this.stickersMap = new HashMap();
                }
                this.stickers.add(new StickerResult(document, obj));
                this.stickersMap.put(str, document);
            }
        }
    }

    private void checkLocationPermissionsOrStart() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23 && this.parentFragment.getParentActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            this.parentFragment.getParentActivity().requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 2);
            return;
        }
        TLRPC.User user = this.foundContextBot;
        if (user == null || !user.bot_inline_geo) {
            return;
        }
        this.locationProvider.start();
    }

    private boolean checkStickerFilesExistAndDownload() {
        if (this.stickers == null) {
            return false;
        }
        this.stickersToLoad.clear();
        int iMin = Math.min(6, this.stickers.size());
        for (int i = 0; i < iMin; i++) {
            StickerResult stickerResult = (StickerResult) this.stickers.get(i);
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(stickerResult.sticker.thumbs, 90);
            if (((closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive)) && !FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, "webp", true).exists()) {
                this.stickersToLoad.add(FileLoader.getAttachFileName(closestPhotoSizeWithSize, "webp"));
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerResult.sticker), stickerResult.parent, "webp", 1, 1);
            }
        }
        return this.stickersToLoad.isEmpty();
    }

    private void clearStickers() {
        this.lastSticker = null;
        this.stickers = null;
        this.stickersMap = null;
        notifyDataSetChanged();
        this.visibleByStickersSearch = false;
        if (this.lastReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.lastReqId, true);
            this.lastReqId = 0;
        }
        EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = this.mentionsStickersActionTracker;
        if (chooseStickerActionTracker != null) {
            chooseStickerActionTracker.checkVisibility();
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private boolean isValidSticker(TLRPC.Document document, String str) {
        int size = document.attributes.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                String str2 = documentAttribute.alt;
                if (str2 == null || !str2.contains(str)) {
                    break;
                }
                return true;
            }
            i++;
        }
        return false;
    }

    private boolean itemsEqual(Object obj, Object obj2) {
        MediaDataController.KeywordResult keywordResult;
        String str;
        String str2;
        if (obj instanceof QuickRepliesController.QuickReply) {
            return false;
        }
        if (obj == obj2) {
            return true;
        }
        if ((obj instanceof StickerResult) && (obj2 instanceof StickerResult) && ((StickerResult) obj).sticker == ((StickerResult) obj2).sticker) {
            return true;
        }
        if ((obj instanceof TLRPC.User) && (obj2 instanceof TLRPC.User) && ((TLRPC.User) obj).id == ((TLRPC.User) obj2).id) {
            return true;
        }
        if ((obj instanceof TLRPC.Chat) && (obj2 instanceof TLRPC.Chat) && ((TLRPC.Chat) obj).id == ((TLRPC.Chat) obj2).id) {
            return true;
        }
        if ((obj instanceof String) && (obj2 instanceof String) && obj.equals(obj2)) {
            return true;
        }
        if ((obj instanceof MediaDataController.KeywordResult) && (obj2 instanceof MediaDataController.KeywordResult) && (str = (keywordResult = (MediaDataController.KeywordResult) obj).keyword) != null) {
            MediaDataController.KeywordResult keywordResult2 = (MediaDataController.KeywordResult) obj2;
            if (str.equals(keywordResult2.keyword) && (str2 = keywordResult.emoji) != null && str2.equals(keywordResult2.emoji)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$10(ContextLinkCell contextLinkCell) {
        this.delegate.onContextClick(contextLinkCell.getResult());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$2(boolean[] zArr, TLRPC.User user, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        if (user != null) {
            MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean("inlinegeo_" + user.id, true).commit();
            checkLocationPermissionsOrStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$3(boolean[] zArr, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        onLocationUnavailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$4(boolean[] zArr, DialogInterface dialogInterface) {
        if (zArr[0]) {
            return;
        }
        onLocationUnavailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForContextBotResults$5(String str, boolean z, TLObject tLObject, TLRPC.User user, String str2, MessagesStorage messagesStorage, String str3) {
        boolean z2;
        if (str.equals(this.searchingContextQuery)) {
            this.contextQueryReqid = 0;
            if (z && tLObject == null) {
                searchForContextBotResults(false, user, str, str2);
            } else {
                MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
                if (mentionsAdapterDelegate != null) {
                    mentionsAdapterDelegate.onContextSearch(false);
                }
            }
            if (tLObject instanceof TLRPC.TL_messages_botResults) {
                TLRPC.TL_messages_botResults tL_messages_botResults = (TLRPC.TL_messages_botResults) tLObject;
                if (!z && tL_messages_botResults.cache_time != 0) {
                    messagesStorage.saveBotCache(str3, tL_messages_botResults);
                }
                this.nextQueryOffset = tL_messages_botResults.next_offset;
                if (this.searchResultBotContextSwitch == null) {
                    this.searchResultBotContextSwitch = tL_messages_botResults.switch_pm;
                }
                this.searchResultBotWebViewSwitch = tL_messages_botResults.switch_webview;
                int i = 0;
                while (i < tL_messages_botResults.results.size()) {
                    TLRPC.BotInlineResult botInlineResult = (TLRPC.BotInlineResult) tL_messages_botResults.results.get(i);
                    if (!(botInlineResult.document instanceof TLRPC.TL_document) && !(botInlineResult.photo instanceof TLRPC.TL_photo) && !"game".equals(botInlineResult.type) && botInlineResult.content == null && (botInlineResult.send_message instanceof TLRPC.TL_botInlineMessageMediaAuto)) {
                        tL_messages_botResults.results.remove(i);
                        i--;
                    }
                    botInlineResult.query_id = tL_messages_botResults.query_id;
                    i++;
                }
                if (this.searchResultBotContext == null || str2.length() == 0) {
                    this.searchResultBotContext = tL_messages_botResults.results;
                    this.contextMedia = tL_messages_botResults.gallery;
                    z2 = false;
                } else {
                    this.searchResultBotContext.addAll(tL_messages_botResults.results);
                    if (tL_messages_botResults.results.isEmpty()) {
                        this.nextQueryOffset = "";
                    }
                    z2 = true;
                }
                Runnable runnable = this.cancelDelayRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.cancelDelayRunnable = null;
                }
                this.searchResultHashtags = null;
                this.stickers = null;
                this.searchResultUsernames = null;
                this.searchResultUsernamesMap = null;
                this.searchResultCommands = null;
                this.quickReplies = null;
                this.searchResultSuggestions = null;
                this.searchResultCommandsHelp = null;
                this.searchResultCommandsUsers = null;
                this.visibleByStickersSearch = false;
                this.delegate.needChangePanelVisibility((this.searchResultBotContext.isEmpty() && this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? false : true);
                if (!z2) {
                    notifyDataSetChanged();
                    return;
                }
                int i2 = (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? 0 : 1;
                notifyItemChanged(((this.searchResultBotContext.size() - tL_messages_botResults.results.size()) + i2) - 1);
                notifyItemRangeInserted((this.searchResultBotContext.size() - tL_messages_botResults.results.size()) + i2, tL_messages_botResults.results.size());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForContextBotResults$6(final String str, final boolean z, final TLRPC.User user, final String str2, final MessagesStorage messagesStorage, final String str3, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchForContextBotResults$5(str, z, tLObject, user, str2, messagesStorage, str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchServerStickers$0(String str, TLObject tLObject) {
        ArrayList arrayList;
        this.lastReqId = 0;
        if (str.equals(this.lastSticker) && (tLObject instanceof TLRPC.TL_messages_stickers)) {
            this.delayLocalResults = false;
            TLRPC.TL_messages_stickers tL_messages_stickers = (TLRPC.TL_messages_stickers) tLObject;
            ArrayList arrayList2 = this.stickers;
            int size = arrayList2 != null ? arrayList2.size() : 0;
            addStickersToResult(tL_messages_stickers.stickers, "sticker_search_" + str);
            ArrayList arrayList3 = this.stickers;
            int size2 = arrayList3 != null ? arrayList3.size() : 0;
            if (!this.visibleByStickersSearch && (arrayList = this.stickers) != null && !arrayList.isEmpty()) {
                checkStickerFilesExistAndDownload();
                this.delegate.needChangePanelVisibility(getItemCountInternal() > 0);
                this.visibleByStickersSearch = true;
            }
            if (size != size2) {
                notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchServerStickers$1(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchServerStickers$0(str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchUsernameOrHashtag$8(ArrayList arrayList, LongSparseArray longSparseArray) {
        this.cancelDelayRunnable = null;
        showUsersResult(arrayList, longSparseArray, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchUsernameOrHashtag$9(ArrayList arrayList, String str) {
        this.searchResultSuggestions = arrayList;
        this.searchResultHashtags = null;
        this.stickers = null;
        this.searchResultUsernames = null;
        this.searchResultUsernamesMap = null;
        this.searchResultCommands = null;
        this.quickReplies = null;
        this.searchResultCommandsHelp = null;
        this.searchResultCommandsUsers = null;
        notifyDataSetChanged();
        MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
        ArrayList arrayList2 = this.searchResultSuggestions;
        mentionsAdapterDelegate.needChangePanelVisibility((arrayList2 == null || arrayList2.isEmpty()) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocationUnavailable() {
        TLRPC.User user = this.foundContextBot;
        if (user == null || !user.bot_inline_geo) {
            return;
        }
        Location location = new Location("network");
        this.lastKnownLocation = location;
        location.setLatitude(-1000.0d);
        this.lastKnownLocation.setLongitude(-1000.0d);
        searchForContextBotResults(true, this.foundContextBot, this.searchingContextQuery, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processFoundUser(TLRPC.User user) {
        ChatActivity chatActivity;
        TLRPC.Chat currentChat;
        this.contextUsernameReqid = 0;
        this.locationProvider.stop();
        if (user == null || !user.bot || user.bot_inline_placeholder == null) {
            this.foundContextBot = null;
            this.searchResultBotContextSwitch = null;
            this.inlineMediaEnabled = true;
        } else {
            this.foundContextBot = user;
            long j = user.id;
            if (j != this.searchResultBotContextSwitchUserId) {
                this.searchResultBotContextSwitch = null;
                this.searchResultBotContextSwitchUserId = j;
            }
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 != null && (currentChat = chatActivity2.getCurrentChat()) != null) {
                boolean zCanSendStickers = ChatObject.canSendStickers(currentChat);
                this.inlineMediaEnabled = zCanSendStickers;
                if (!zCanSendStickers) {
                    notifyDataSetChanged();
                    this.delegate.needChangePanelVisibility(true);
                    return;
                }
            }
            if (this.foundContextBot.bot_inline_geo) {
                if (MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("inlinegeo_" + this.foundContextBot.id, false) || (chatActivity = this.parentFragment) == null || chatActivity.getParentActivity() == null) {
                    checkLocationPermissionsOrStart();
                } else {
                    final TLRPC.User user2 = this.foundContextBot;
                    AlertDialog.Builder builder = new AlertDialog.Builder(this.parentFragment.getParentActivity());
                    builder.setTitle(LocaleController.getString(R.string.ShareYouLocationTitle));
                    builder.setMessage(LocaleController.getString(R.string.ShareYouLocationInline));
                    final boolean[] zArr = new boolean[1];
                    builder.setPositiveButton(LocaleController.getString(R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            this.f$0.lambda$processFoundUser$2(zArr, user2, alertDialog, i);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda1
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            this.f$0.lambda$processFoundUser$3(zArr, alertDialog, i);
                        }
                    });
                    this.parentFragment.showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda2
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f$0.lambda$processFoundUser$4(zArr, dialogInterface);
                        }
                    });
                }
            }
        }
        if (this.foundContextBot == null) {
            this.noUserName = true;
            this.searchResultBotContextSwitch = null;
        } else {
            MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
            if (mentionsAdapterDelegate != null) {
                mentionsAdapterDelegate.onContextSearch(true);
            }
            searchForContextBotResults(true, this.foundContextBot, this.searchingContextQuery, "");
        }
    }

    private void searchForContextBot(String str, String str2) {
        String str3;
        String str4;
        String str5;
        TLRPC.User user = this.foundContextBot;
        if (user == null || (str4 = user.username) == null || !str4.equals(str) || (str5 = this.searchingContextQuery) == null || !str5.equals(str2)) {
            if (this.foundContextBot != null) {
                if (!this.inlineMediaEnabled && str != null && str2 != null) {
                    return;
                } else {
                    this.delegate.needChangePanelVisibility(false);
                }
            }
            Runnable runnable = this.contextQueryRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.contextQueryRunnable = null;
            }
            if (TextUtils.isEmpty(str) || ((str3 = this.searchingContextUsername) != null && !str3.equals(str))) {
                if (this.contextUsernameReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextUsernameReqid, true);
                    this.contextUsernameReqid = 0;
                }
                if (this.contextQueryReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
                    this.contextQueryReqid = 0;
                }
                this.foundContextBot = null;
                this.searchResultBotContextSwitch = null;
                this.inlineMediaEnabled = true;
                this.searchingContextUsername = null;
                this.searchingContextQuery = null;
                this.locationProvider.stop();
                this.noUserName = false;
                MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
                if (mentionsAdapterDelegate != null) {
                    mentionsAdapterDelegate.onContextSearch(false);
                }
                if (str == null || str.length() == 0) {
                    return;
                }
            }
            if (str2 == null) {
                if (this.contextQueryReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
                    this.contextQueryReqid = 0;
                }
                this.searchingContextQuery = null;
                MentionsAdapterDelegate mentionsAdapterDelegate2 = this.delegate;
                if (mentionsAdapterDelegate2 != null) {
                    mentionsAdapterDelegate2.onContextSearch(false);
                    return;
                }
                return;
            }
            MentionsAdapterDelegate mentionsAdapterDelegate3 = this.delegate;
            if (mentionsAdapterDelegate3 != null) {
                if (this.foundContextBot != null) {
                    mentionsAdapterDelegate3.onContextSearch(true);
                } else if (str.equals("gif")) {
                    this.searchingContextUsername = "gif";
                    this.delegate.onContextSearch(false);
                }
            }
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            this.searchingContextQuery = str2;
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(str2, str, messagesController, messagesStorage);
            this.contextQueryRunnable = anonymousClass4;
            AndroidUtilities.runOnUIThread(anonymousClass4, 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void searchForContextBotResults(final boolean z, final TLRPC.User user, final String str, final String str2) {
        Location location;
        if (this.contextQueryReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
            this.contextQueryReqid = 0;
        }
        if (!this.inlineMediaEnabled || !this.allowBots) {
            MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
            if (mentionsAdapterDelegate != null) {
                mentionsAdapterDelegate.onContextSearch(false);
                return;
            }
            return;
        }
        if (str == null || user == null) {
            this.searchingContextQuery = null;
            return;
        }
        if (user.bot_inline_geo && this.lastKnownLocation == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.dialog_id);
        sb.append("_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("_");
        sb.append(this.dialog_id);
        sb.append("_");
        sb.append(user.id);
        sb.append("_");
        sb.append((!user.bot_inline_geo || this.lastKnownLocation.getLatitude() == -1000.0d) ? "" : Double.valueOf(this.lastKnownLocation.getLatitude() + this.lastKnownLocation.getLongitude()));
        final String string = sb.toString();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchForContextBotResults$6(str, z, user, str2, messagesStorage, string, tLObject, tL_error);
            }
        };
        long j = user.id;
        if (j != this.searchResultBotContextSwitchUserId) {
            this.searchResultBotContextSwitch = null;
            this.searchResultBotContextSwitchUserId = j;
        }
        if (z) {
            messagesStorage.getBotCache(string, requestDelegate);
            return;
        }
        TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
        tL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(user);
        tL_messages_getInlineBotResults.query = str;
        tL_messages_getInlineBotResults.offset = str2;
        if (user.bot_inline_geo && (location = this.lastKnownLocation) != null && location.getLatitude() != -1000.0d) {
            tL_messages_getInlineBotResults.flags |= 1;
            TLRPC.TL_inputGeoPoint tL_inputGeoPoint = new TLRPC.TL_inputGeoPoint();
            tL_messages_getInlineBotResults.geo_point = tL_inputGeoPoint;
            tL_inputGeoPoint.lat = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLatitude());
            tL_messages_getInlineBotResults.geo_point._long = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLongitude());
        }
        tL_messages_getInlineBotResults.peer = DialogObject.isEncryptedDialog(this.dialog_id) ? new TLRPC.TL_inputPeerEmpty() : MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialog_id);
        this.contextQueryReqid = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getInlineBotResults, requestDelegate, 2);
    }

    private void searchServerStickers(final String str, String str2) {
        TLRPC.TL_messages_getStickers tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
        tL_messages_getStickers.emoticon = str2;
        tL_messages_getStickers.hash = 0L;
        this.lastReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchServerStickers$1(str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUsersResult(ArrayList arrayList, LongSparseArray longSparseArray, boolean z) {
        this.searchResultUsernames = arrayList;
        if ((!this.allowBots || !this.allowChats) && arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                TLObject tLObject = (TLObject) it.next();
                if (!(tLObject instanceof TLRPC.Chat) || this.allowChats) {
                    if (tLObject instanceof TLRPC.User) {
                        TLRPC.User user = (TLRPC.User) tLObject;
                        if (user.bot || UserObject.isService(user.id)) {
                        }
                    }
                }
                it.remove();
            }
        }
        this.searchResultUsernamesMap = longSparseArray;
        Runnable runnable = this.cancelDelayRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelDelayRunnable = null;
        }
        this.searchResultBotContext = null;
        this.stickers = null;
        if (z) {
            notifyDataSetChanged();
            this.delegate.needChangePanelVisibility(!this.searchResultUsernames.isEmpty());
        }
    }

    public void addHashtagsFromMessage(CharSequence charSequence) {
        this.searchAdapterHelper.addHashtagsFromMessage(charSequence);
    }

    public void clearRecentHashtags() {
        this.searchAdapterHelper.clearRecentHashtags();
        this.searchResultHashtags.clear();
        notifyDataSetChanged();
        MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
        if (mentionsAdapterDelegate != null) {
            mentionsAdapterDelegate.needChangePanelVisibility(false);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        Runnable runnable;
        if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed) {
            ArrayList arrayList = this.stickers;
            if (arrayList == null || arrayList.isEmpty() || this.stickersToLoad.isEmpty() || !this.visibleByStickersSearch) {
                return;
            }
            this.stickersToLoad.remove((String) objArr[0]);
            if (this.stickersToLoad.isEmpty()) {
                this.delegate.needChangePanelVisibility(getItemCountInternal() > 0);
                return;
            }
            return;
        }
        if (i == NotificationCenter.recentDocumentsDidLoad) {
            runnable = this.checkAgainRunnable;
            if (runnable == null) {
                return;
            }
        } else if (i != NotificationCenter.stickersDidLoad || ((Integer) objArr[0]).intValue() != 0 || (runnable = this.checkAgainRunnable) == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
        this.checkAgainRunnable = null;
    }

    public void doSomeStickersAction() {
        if (isStickers()) {
            if (this.mentionsStickersActionTracker == null) {
                EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = new EmojiView.ChooseStickerActionTracker(this.currentAccount, this.dialog_id, this.threadMessageId) { // from class: org.telegram.ui.Adapters.MentionsAdapter.9
                    @Override // org.telegram.ui.Components.EmojiView.ChooseStickerActionTracker
                    public boolean isShown() {
                        return MentionsAdapter.this.isStickers();
                    }
                };
                this.mentionsStickersActionTracker = chooseStickerActionTracker;
                chooseStickerActionTracker.checkVisibility();
            }
            this.mentionsStickersActionTracker.doSomeAction();
        }
    }

    public String getBotCaption() {
        TLRPC.User user = this.foundContextBot;
        if (user != null) {
            return user.bot_inline_placeholder;
        }
        String str = this.searchingContextUsername;
        if (str == null || !str.equals("gif")) {
            return null;
        }
        return LocaleController.getString(R.string.SearchGifsTitle);
    }

    public TLRPC.TL_inlineBotSwitchPM getBotContextSwitch() {
        TLRPC.User user = this.foundContextBot;
        if (user == null || user.id == this.searchResultBotContextSwitchUserId) {
            return this.searchResultBotContextSwitch;
        }
        return null;
    }

    public TLRPC.TL_inlineBotWebView getBotWebViewSwitch() {
        return this.searchResultBotWebViewSwitch;
    }

    public long getContextBotId() {
        TLRPC.User user = this.foundContextBot;
        if (user != null) {
            return user.id;
        }
        return 0L;
    }

    public String getContextBotName() {
        TLRPC.User user = this.foundContextBot;
        return user != null ? user.username : "";
    }

    public TLRPC.User getContextBotUser() {
        return this.foundContextBot;
    }

    public TLRPC.User getFoundContextBot() {
        return this.foundContextBot;
    }

    public String getHashtagHint() {
        return this.hintHashtag;
    }

    public Object getItem(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return null;
            }
            i -= 2;
        }
        ArrayList arrayList = this.stickers;
        if (arrayList != null) {
            if (i < 0 || i >= arrayList.size()) {
                return null;
            }
            return ((StickerResult) this.stickers.get(i)).sticker;
        }
        ArrayList arrayList2 = this.searchResultBotContext;
        if (arrayList2 != null) {
            TLRPC.TL_inlineBotWebView tL_inlineBotWebView = this.searchResultBotWebViewSwitch;
            if (tL_inlineBotWebView == null) {
                TLRPC.TL_inlineBotSwitchPM tL_inlineBotSwitchPM = this.searchResultBotContextSwitch;
                if (tL_inlineBotSwitchPM != null) {
                    if (i == 0) {
                        return tL_inlineBotSwitchPM;
                    }
                }
                if (i >= 0 || i >= arrayList2.size()) {
                    return null;
                }
                return this.searchResultBotContext.get(i);
            }
            if (i == 0) {
                return tL_inlineBotWebView;
            }
            i--;
            if (i >= 0) {
            }
            return null;
        }
        ArrayList arrayList3 = this.searchResultUsernames;
        if (arrayList3 != null) {
            if (i < 0 || i >= arrayList3.size()) {
                return null;
            }
            return this.searchResultUsernames.get(i);
        }
        ArrayList arrayList4 = this.searchResultHashtags;
        if (arrayList4 != null) {
            if (i < 0 || i >= arrayList4.size()) {
                return null;
            }
            return this.searchResultHashtags.get(i);
        }
        ArrayList arrayList5 = this.searchResultSuggestions;
        if (arrayList5 != null) {
            if (i < 0 || i >= arrayList5.size()) {
                return null;
            }
            return this.searchResultSuggestions.get(i);
        }
        ArrayList arrayList6 = this.quickReplies;
        if (arrayList6 != null || this.searchResultCommands != null) {
            if (arrayList6 != null) {
                if (i >= 0 && i < arrayList6.size()) {
                    return this.quickReplies.get(i);
                }
                ArrayList arrayList7 = this.quickReplies;
                if (arrayList7 != null) {
                    i -= arrayList7.size();
                }
            }
            ArrayList arrayList8 = this.searchResultCommands;
            if (arrayList8 != null && i >= 0 && i < arrayList8.size()) {
                ArrayList arrayList9 = this.searchResultCommandsUsers;
                if (arrayList9 == null || (this.botsCount == 1 && !(this.info instanceof TLRPC.TL_channelFull))) {
                    return this.searchResultCommands.get(i);
                }
                if (arrayList9.get(i) != null) {
                    return String.format("%s@%s", this.searchResultCommands.get(i), this.searchResultCommandsUsers.get(i) != null ? ((TLRPC.User) this.searchResultCommandsUsers.get(i)).username : "");
                }
                return String.format("%s", this.searchResultCommands.get(i));
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int itemCountInternal = getItemCountInternal();
        this.lastItemCount = itemCountInternal;
        return itemCountInternal;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0031 A[PHI: r3
      0x0031: PHI (r3v1 java.util.ArrayList) = (r3v0 java.util.ArrayList), (r3v3 java.util.ArrayList), (r3v4 java.util.ArrayList) binds: [B:12:0x0014, B:22:0x002a, B:25:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0058 A[PHI: r3
      0x0058: PHI (r3v10 int) = (r3v6 int), (r3v11 int) binds: [B:41:0x0056, B:19:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getItemCountInternal() {
        int size;
        int size2;
        int size3 = 1;
        if (this.foundContextBot != null && !this.inlineMediaEnabled) {
            return 1;
        }
        int i = this.hintHashtag != null ? 2 : 0;
        ArrayList arrayList = this.stickers;
        if (arrayList == null) {
            ArrayList arrayList2 = this.searchResultBotContext;
            if (arrayList2 != null) {
                size2 = arrayList2.size();
                if (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) {
                    size3 = 0;
                }
            } else {
                arrayList = this.searchResultUsernames;
                if (arrayList != null || (arrayList = this.searchResultHashtags) != null) {
                    size = arrayList.size();
                } else if (this.searchResultCommands == null && this.quickReplies == null) {
                    ArrayList arrayList3 = this.searchResultSuggestions;
                    if (arrayList3 == null) {
                        return i;
                    }
                    size = arrayList3.size();
                } else {
                    ArrayList arrayList4 = this.quickReplies;
                    size2 = arrayList4 == null ? 0 : arrayList4.size();
                    ArrayList arrayList5 = this.searchResultCommands;
                    if (arrayList5 != null) {
                        size3 = arrayList5.size();
                    }
                }
            }
            return i + size2 + size3;
        }
        return i + size;
    }

    public Object getItemParent(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return null;
            }
            i -= 2;
        }
        ArrayList arrayList = this.stickers;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return null;
        }
        return ((StickerResult) this.stickers.get(i)).parent;
    }

    public int getItemPosition(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return 0;
            }
            i -= 2;
        }
        return this.searchResultBotContext != null ? (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? i : i - 1 : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return 6;
            }
            i -= 2;
        }
        if (this.stickers != null) {
            return 4;
        }
        if (this.foundContextBot != null && !this.inlineMediaEnabled) {
            return 3;
        }
        if (this.searchResultBotContext == null) {
            ArrayList arrayList = this.quickReplies;
            return (arrayList == null || i < 0 || i >= arrayList.size()) ? 0 : 5;
        }
        if (i == 0) {
            return (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? 1 : 2;
        }
        return 1;
    }

    public int getLastItemCount() {
        return this.lastItemCount;
    }

    public int getResultLength() {
        return this.resultLength;
    }

    public int getResultStartPosition() {
        return this.resultStartPosition;
    }

    public ArrayList getSearchResultBotContext() {
        return this.searchResultBotContext;
    }

    public boolean isBannedInline() {
        return (this.foundContextBot == null || this.inlineMediaEnabled) ? false : true;
    }

    public boolean isBotCommands() {
        return this.searchResultCommands != null;
    }

    public boolean isBotContext() {
        return this.searchResultBotContext != null;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return (this.foundContextBot == null || this.inlineMediaEnabled) && this.stickers == null;
    }

    public boolean isGlobalHashtagHint(int i) {
        return this.hintHashtag != null && i == 0;
    }

    public boolean isLocalHashtagHint(int i) {
        return this.hintHashtag != null && i == 1;
    }

    public boolean isLongClickEnabled() {
        return (this.searchResultHashtags == null && this.searchResultCommands == null) ? false : true;
    }

    public boolean isMediaLayout() {
        return this.contextMedia || this.stickers != null;
    }

    public boolean isStickers() {
        return this.stickers != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void notifyDataSetChanged() {
        MentionsAdapterDelegate mentionsAdapterDelegate;
        int i = this.lastItemCount;
        int i2 = 0;
        if (i != -1 && this.lastData != null) {
            int itemCount = getItemCount();
            boolean z = i != itemCount;
            int iMin = Math.min(i, itemCount);
            Object[] objArr = new Object[itemCount];
            for (int i3 = 0; i3 < itemCount; i3++) {
                objArr[i3] = getItem(i3);
            }
            while (i2 < iMin) {
                if (i2 >= 0) {
                    Object[] objArr2 = this.lastData;
                    if (i2 >= objArr2.length || i2 >= itemCount || !itemsEqual(objArr2[i2], objArr[i2])) {
                        notifyItemChanged(i2);
                        z = true;
                    }
                }
                i2++;
            }
            notifyItemRangeRemoved(iMin, i - iMin);
            notifyItemRangeInserted(iMin, itemCount - iMin);
            if (z && (mentionsAdapterDelegate = this.delegate) != null) {
                mentionsAdapterDelegate.onItemCountUpdate(i, itemCount);
            }
            this.lastData = objArr;
            return;
        }
        MentionsAdapterDelegate mentionsAdapterDelegate2 = this.delegate;
        if (mentionsAdapterDelegate2 != null) {
            mentionsAdapterDelegate2.onItemCountUpdate(0, getItemCount());
        }
        super.notifyDataSetChanged();
        this.lastData = new Object[getItemCount()];
        while (true) {
            Object[] objArr3 = this.lastData;
            if (i2 >= objArr3.length) {
                return;
            }
            objArr3[i2] = getItem(i2);
            i2++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ChatActivity chatActivity;
        String string;
        int i2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        if (this.hintHashtag != null) {
            i -= 2;
        }
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 4) {
            StickerCell stickerCell = (StickerCell) viewHolder.itemView;
            if (i < 0 || i >= this.stickers.size()) {
                return;
            }
            StickerResult stickerResult = (StickerResult) this.stickers.get(i);
            stickerCell.setSticker(stickerResult.sticker, stickerResult.parent);
            stickerCell.setClearsInputField(true);
            return;
        }
        if (itemViewType == 3) {
            TextView textView = (TextView) viewHolder.itemView;
            TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
            if (currentChat != null) {
                if (!ChatObject.hasAdminRights(currentChat) && (tL_chatBannedRights = currentChat.default_banned_rights) != null && tL_chatBannedRights.send_inline) {
                    i2 = R.string.GlobalAttachInlineRestricted;
                } else {
                    if (!AndroidUtilities.isBannedForever(currentChat.banned_rights)) {
                        string = LocaleController.formatString("AttachInlineRestricted", R.string.AttachInlineRestricted, LocaleController.formatDateForBan(currentChat.banned_rights.until_date));
                        textView.setText(string);
                        return;
                    }
                    i2 = R.string.AttachInlineRestrictedForever;
                }
                string = LocaleController.getString(i2);
                textView.setText(string);
                return;
            }
            return;
        }
        if (itemViewType == 5) {
            QuickRepliesActivity.QuickReplyView quickReplyView = (QuickRepliesActivity.QuickReplyView) viewHolder.itemView;
            ArrayList arrayList = this.quickReplies;
            if (arrayList == null || i < 0 || i >= arrayList.size()) {
                return;
            }
            quickReplyView.set((QuickRepliesController.QuickReply) this.quickReplies.get(i), this.quickRepliesQuery, false);
            return;
        }
        if (this.searchResultBotContext != null) {
            boolean z = (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? false : true;
            if (viewHolder.getItemViewType() == 2) {
                if (z) {
                    BotSwitchCell botSwitchCell = (BotSwitchCell) viewHolder.itemView;
                    TLRPC.TL_inlineBotSwitchPM tL_inlineBotSwitchPM = this.searchResultBotContextSwitch;
                    botSwitchCell.setText(tL_inlineBotSwitchPM != null ? tL_inlineBotSwitchPM.text : this.searchResultBotWebViewSwitch.text);
                    return;
                }
                return;
            }
            if (z) {
                i--;
            }
            if (i < 0 || i >= this.searchResultBotContext.size()) {
                return;
            }
            ((ContextLinkCell) viewHolder.itemView).setLink((TLRPC.BotInlineResult) this.searchResultBotContext.get(i), this.foundContextBot, this.contextMedia, i != this.searchResultBotContext.size() - 1, z && i == 0, "gif".equals(this.searchingContextUsername));
            return;
        }
        if (itemViewType == 6) {
            HashtagHint hashtagHint = (HashtagHint) viewHolder.itemView;
            int i3 = i + 2;
            if (i3 == 0) {
                this.topHint = hashtagHint;
            } else {
                this.bottomHint = hashtagHint;
            }
            TLRPC.Chat currentChat2 = this.chat;
            if (currentChat2 == null && (chatActivity = this.parentFragment) != null) {
                currentChat2 = chatActivity.getCurrentChat();
            }
            hashtagHint.set(i3, this.hintHashtag, currentChat2);
            return;
        }
        if (itemViewType == 7) {
            return;
        }
        MentionCell mentionCell = (MentionCell) viewHolder.itemView;
        ArrayList arrayList2 = this.searchResultUsernames;
        if (arrayList2 != null) {
            TLObject tLObject = (TLObject) arrayList2.get(i);
            if (tLObject instanceof TLRPC.User) {
                mentionCell.setUser((TLRPC.User) tLObject);
            } else if (tLObject instanceof TLRPC.Chat) {
                mentionCell.setChat((TLRPC.Chat) tLObject);
            }
        } else {
            ArrayList arrayList3 = this.searchResultHashtags;
            if (arrayList3 == null || i < 0 || i >= arrayList3.size()) {
                ArrayList arrayList4 = this.searchResultSuggestions;
                if (arrayList4 == null || i < 0 || i >= arrayList4.size()) {
                    ArrayList arrayList5 = this.searchResultCommands;
                    if (arrayList5 != null && i >= 0 && i < arrayList5.size()) {
                        ArrayList arrayList6 = this.searchResultCommandsHelp;
                        TLRPC.User user = null;
                        String str = (arrayList6 == null || i < 0 || i >= arrayList6.size()) ? null : (String) this.searchResultCommandsHelp.get(i);
                        ArrayList arrayList7 = this.searchResultCommandsUsers;
                        if (arrayList7 != null && i >= 0 && i < arrayList7.size()) {
                            user = (TLRPC.User) this.searchResultCommandsUsers.get(i);
                        }
                        mentionCell.setBotCommand((String) this.searchResultCommands.get(i), str, user);
                    }
                } else {
                    mentionCell.setEmojiSuggestion((MediaDataController.KeywordResult) this.searchResultSuggestions.get(i));
                }
            } else {
                mentionCell.setText((String) this.searchResultHashtags.get(i));
            }
        }
        mentionCell.setDivider(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View botSwitchCell;
        View view;
        if (i == 0) {
            MentionCell mentionCell = new MentionCell(this.mContext, this.resourcesProvider);
            mentionCell.setIsDarkTheme(this.isDarkTheme);
            botSwitchCell = mentionCell;
        } else if (i == 1) {
            ContextLinkCell contextLinkCell = new ContextLinkCell(this.mContext);
            contextLinkCell.setDelegate(new ContextLinkCell.ContextLinkCellDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.Cells.ContextLinkCell.ContextLinkCellDelegate
                public final void didPressedImage(ContextLinkCell contextLinkCell2) {
                    this.f$0.lambda$onCreateViewHolder$10(contextLinkCell2);
                }
            });
            botSwitchCell = contextLinkCell;
        } else if (i != 2) {
            if (i == 3) {
                TextView textView = new TextView(this.mContext);
                textView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                textView.setTextSize(1, 14.0f);
                textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
                view = textView;
            } else if (i == 5) {
                botSwitchCell = new QuickRepliesActivity.QuickReplyView(this.mContext, false, this.resourcesProvider);
            } else if (i == 6) {
                botSwitchCell = new HashtagHint(this.mContext, this.stories, this.resourcesProvider);
            } else if (i != 7) {
                botSwitchCell = new StickerCell(this.mContext, this.resourcesProvider);
            } else {
                View view2 = new View(this.mContext) { // from class: org.telegram.ui.Adapters.MentionsAdapter.8
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(8.0f), 1073741824));
                    }
                };
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(this.stories ? Theme.multAlpha(-1, 0.15f) : Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)), Theme.getThemedDrawable(this.mContext, R.drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, this.resourcesProvider)), 0, 0);
                combinedDrawable.setFullsize(true);
                view2.setBackground(combinedDrawable);
                view = view2;
            }
            botSwitchCell = view;
        } else {
            botSwitchCell = new BotSwitchCell(this.mContext);
        }
        return new RecyclerListView.Holder(botSwitchCell);
    }

    public void onDestroy() {
        SendMessagesHelper.LocationProvider locationProvider = this.locationProvider;
        if (locationProvider != null) {
            locationProvider.stop();
        }
        Runnable runnable = this.contextQueryRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.contextQueryRunnable = null;
        }
        if (this.contextUsernameReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextUsernameReqid, true);
            this.contextUsernameReqid = 0;
        }
        if (this.contextQueryReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
            this.contextQueryReqid = 0;
        }
        this.foundContextBot = null;
        this.searchResultBotContextSwitch = null;
        this.inlineMediaEnabled = true;
        this.searchingContextUsername = null;
        this.searchingContextQuery = null;
        this.noUserName = false;
        if (!this.isDarkTheme) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadFailed);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recentDocumentsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        TLRPC.User user;
        if (i == 2 && (user = this.foundContextBot) != null && user.bot_inline_geo) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                onLocationUnavailable();
            } else {
                this.locationProvider.start();
            }
        }
    }

    public void searchForContextBotForNextOffset() {
        String str;
        TLRPC.User user;
        String str2;
        if (this.contextQueryReqid != 0 || (str = this.nextQueryOffset) == null || str.length() == 0 || (user = this.foundContextBot) == null || (str2 = this.searchingContextQuery) == null) {
            return;
        }
        searchForContextBotResults(true, user, str2, this.nextQueryOffset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x06f1  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x07a6  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x07d6 A[PHI: r6 r14 r33
      0x07d6: PHI (r6v42 org.telegram.tgnet.TLRPC$Chat) = 
      (r6v93 org.telegram.tgnet.TLRPC$Chat)
      (r6v94 org.telegram.tgnet.TLRPC$Chat)
      (r6v95 org.telegram.tgnet.TLRPC$Chat)
      (r6v96 org.telegram.tgnet.TLRPC$Chat)
      (r6v97 org.telegram.tgnet.TLRPC$Chat)
      (r6v98 org.telegram.tgnet.TLRPC$Chat)
     binds: [B:478:0x0835, B:474:0x0825, B:457:0x07d4, B:454:0x07c4, B:450:0x07b4, B:446:0x07a4] A[DONT_GENERATE, DONT_INLINE]
      0x07d6: PHI (r14v28 long) = (r14v27 long), (r14v27 long), (r14v29 long), (r14v29 long), (r14v29 long), (r14v29 long) binds: [B:478:0x0835, B:474:0x0825, B:457:0x07d4, B:454:0x07c4, B:450:0x07b4, B:446:0x07a4] A[DONT_GENERATE, DONT_INLINE]
      0x07d6: PHI (r33v3 java.util.ArrayList) = 
      (r33v2 java.util.ArrayList)
      (r33v2 java.util.ArrayList)
      (r33v7 java.util.ArrayList)
      (r33v7 java.util.ArrayList)
      (r33v7 java.util.ArrayList)
      (r33v7 java.util.ArrayList)
     binds: [B:478:0x0835, B:474:0x0825, B:457:0x07d4, B:454:0x07c4, B:450:0x07b4, B:446:0x07a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0827  */
    /* JADX WARN: Type inference failed for: r0v149 */
    /* JADX WARN: Type inference failed for: r0v72, types: [org.telegram.tgnet.TLRPC$User] */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v91, types: [org.telegram.ui.Adapters.MentionsAdapter$MentionsAdapterDelegate] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v18, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v42 */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r30v0, types: [androidx.recyclerview.widget.RecyclerView$Adapter, org.telegram.ui.Adapters.MentionsAdapter] */
    /* JADX WARN: Type inference failed for: r3v31, types: [org.telegram.ui.Adapters.MentionsAdapter$HashtagHint] */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38, types: [androidx.collection.LongSparseArray, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r6v61, types: [java.lang.Object, org.telegram.tgnet.TLRPC$User] */
    /* renamed from: searchUsernameOrHashtag, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$searchUsernameOrHashtag$7(final CharSequence charSequence, final int i, final ArrayList arrayList, final boolean z, final boolean z2) {
        String str;
        StringBuilder sb;
        String str2;
        String str3;
        StringBuilder sb2;
        int i2;
        String str4;
        char c;
        TLRPC.Chat chat;
        String str5;
        ChatActivity chatActivity;
        String str6;
        char c2;
        String strSubstring;
        String strSubstring2;
        String str7;
        StringBuilder sb3;
        ?? r14;
        int i3;
        int i4;
        int i5;
        ?? r3;
        HashtagHint hashtagHint;
        ?? r32;
        MentionsAdapterDelegate mentionsAdapterDelegate;
        ArrayList arrayList2;
        String str8;
        boolean z3;
        String str9;
        TLRPC.Chat chat2;
        ArrayList arrayList3;
        TLRPC.Chat chat3;
        long threadId;
        ArrayList arrayList4;
        TLRPC.Chat chat4;
        long j;
        TLRPC.Chat chat5;
        TLRPC.Chat chat6;
        TLRPC.ChatFull chatFull;
        long j2;
        String str10;
        String publicUsername;
        long j3;
        TLRPC.Chat chat7;
        String str11;
        Object obj;
        int i6;
        boolean z4;
        TLRPC.Chat chat8;
        String str12;
        int i7;
        ?? r15;
        boolean z5;
        int i8;
        boolean z6 = z;
        boolean z7 = z2;
        String str13 = "";
        String string = charSequence == null ? "" : charSequence.toString();
        TLRPC.Chat currentChat = this.chat;
        ChatActivity chatActivity2 = this.parentFragment;
        if (chatActivity2 != null) {
            currentChat = chatActivity2.getCurrentChat();
            this.parentFragment.getCurrentUser();
        }
        TLRPC.Chat chat9 = currentChat;
        Runnable runnable = this.cancelDelayRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelDelayRunnable = null;
        }
        if (this.channelReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.channelReqId, true);
            this.channelReqId = 0;
        }
        Runnable runnable2 = this.searchGlobalRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.searchGlobalRunnable = null;
        }
        Runnable runnable3 = this.checkAgainRunnable;
        if (runnable3 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable3);
            this.checkAgainRunnable = null;
        }
        if (TextUtils.isEmpty(string) || string.length() > MessagesController.getInstance(this.currentAccount).maxMessageLength) {
            searchForContextBot(null, null);
            this.delegate.needChangePanelVisibility(false);
            this.lastText = null;
            clearStickers();
            return;
        }
        int i9 = string.length() > 0 ? i - 1 : i;
        this.lastText = null;
        this.lastUsernameOnly = z6;
        this.lastForSearch = z7;
        StringBuilder sb4 = new StringBuilder();
        boolean z8 = !z6 && string.length() > 0 && string.length() <= 14;
        if (z8) {
            int length = string.length();
            CharSequence charSequenceConcat = string;
            int i10 = 0;
            while (true) {
                str = str13;
                if (i10 >= length) {
                    break;
                }
                char cCharAt = charSequenceConcat.charAt(i10);
                StringBuilder sb5 = sb4;
                int i11 = length - 1;
                String str14 = string;
                char cCharAt2 = i10 < i11 ? charSequenceConcat.charAt(i10 + 1) : (char) 0;
                if (i10 >= i11 || cCharAt != 55356 || cCharAt2 < 57339 || cCharAt2 > 57343) {
                    if (cCharAt == 65039) {
                        i8 = 1;
                        charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i10), charSequenceConcat.subSequence(i10 + 1, charSequenceConcat.length()));
                        length--;
                        i10--;
                    }
                    i10 += i8;
                    str13 = str;
                    sb4 = sb5;
                    string = str14;
                } else {
                    charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i10), charSequenceConcat.subSequence(i10 + 2, charSequenceConcat.length()));
                    length -= 2;
                    i10--;
                }
                i8 = 1;
                i10 += i8;
                str13 = str;
                sb4 = sb5;
                string = str14;
            }
            sb = sb4;
            str2 = string;
            this.lastSticker = charSequenceConcat.toString().trim();
            str3 = str2;
        } else {
            str = "";
            sb = sb4;
            str2 = string;
            str3 = str;
        }
        boolean z9 = z8 && (Emoji.isValidEmoji(str3) || Emoji.isValidEmoji(this.lastSticker));
        if (z9 && (charSequence instanceof Spanned)) {
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class);
            z9 = animatedEmojiSpanArr == null || animatedEmojiSpanArr.length == 0;
        }
        if (this.allowStickers && z9 && (chat9 == null || ChatObject.canSendStickers(chat9))) {
            this.stickersToLoad.clear();
            int i12 = SharedConfig.suggestStickers;
            if (i12 == 2 || !z9) {
                if (this.visibleByStickersSearch && i12 == 2) {
                    this.visibleByStickersSearch = false;
                    this.delegate.needChangePanelVisibility(false);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            this.stickers = null;
            this.stickersMap = null;
            if (this.lastReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.lastReqId, true);
                z4 = false;
                this.lastReqId = 0;
            } else {
                z4 = false;
            }
            boolean z10 = MessagesController.getInstance(this.currentAccount).suggestStickersApiOnly;
            this.delayLocalResults = z4;
            if (z10) {
                chat8 = chat9;
                sb2 = sb;
                str12 = str2;
                i7 = 5;
                r15 = 1;
                z5 = z10;
            } else {
                sb2 = sb;
                z5 = z10;
                i7 = 5;
                chat8 = chat9;
                str12 = str2;
                r15 = 1;
                r15 = 1;
                this.checkAgainRunnable = new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$searchUsernameOrHashtag$7(charSequence, i, arrayList, z, z2);
                    }
                };
                MediaDataController.getInstance(this.currentAccount).loadRecents(0, false, true, false);
                MediaDataController.getInstance(this.currentAccount).loadRecents(2, false, true, false);
                final ArrayList<TLRPC.Document> recentStickersNoCopy = MediaDataController.getInstance(this.currentAccount).getRecentStickersNoCopy(0);
                final ArrayList<TLRPC.Document> recentStickersNoCopy2 = MediaDataController.getInstance(this.currentAccount).getRecentStickersNoCopy(2);
                int iMin = Math.min(20, recentStickersNoCopy.size());
                int i13 = 0;
                for (int i14 = 0; i14 < iMin; i14++) {
                    TLRPC.Document document = recentStickersNoCopy.get(i14);
                    if (isValidSticker(document, this.lastSticker)) {
                        addStickerToResult(document, "recent");
                        i13++;
                        if (i13 >= 5) {
                            break;
                        }
                    }
                }
                int size = recentStickersNoCopy2.size();
                for (int i15 = 0; i15 < size; i15++) {
                    TLRPC.Document document2 = recentStickersNoCopy2.get(i15);
                    if (isValidSticker(document2, this.lastSticker)) {
                        addStickerToResult(document2, "fav");
                    }
                }
                MediaDataController.getInstance(this.currentAccount).checkStickers(0);
                HashMap<String, ArrayList<TLRPC.Document>> allStickers = MediaDataController.getInstance(this.currentAccount).getAllStickers();
                ArrayList<TLRPC.Document> arrayList5 = allStickers != null ? allStickers.get(this.lastSticker) : null;
                if (arrayList5 != null && !arrayList5.isEmpty()) {
                    addStickersToResult(arrayList5, null);
                }
                ArrayList arrayList6 = this.stickers;
                if (arrayList6 != null) {
                    Collections.sort(arrayList6, new Comparator() { // from class: org.telegram.ui.Adapters.MentionsAdapter.5
                        private int getIndex(StickerResult stickerResult) {
                            for (int i16 = 0; i16 < recentStickersNoCopy2.size(); i16++) {
                                if (((TLRPC.Document) recentStickersNoCopy2.get(i16)).id == stickerResult.sticker.id) {
                                    return i16 + 2000000;
                                }
                            }
                            for (int i17 = 0; i17 < Math.min(20, recentStickersNoCopy.size()); i17++) {
                                if (((TLRPC.Document) recentStickersNoCopy.get(i17)).id == stickerResult.sticker.id) {
                                    return (recentStickersNoCopy.size() - i17) + MediaController.VIDEO_BITRATE_480;
                                }
                            }
                            return -1;
                        }

                        @Override // java.util.Comparator
                        public int compare(StickerResult stickerResult, StickerResult stickerResult2) {
                            boolean zIsAnimatedStickerDocument = MessageObject.isAnimatedStickerDocument(stickerResult.sticker, true);
                            if (zIsAnimatedStickerDocument != MessageObject.isAnimatedStickerDocument(stickerResult2.sticker, true)) {
                                return zIsAnimatedStickerDocument ? -1 : 1;
                            }
                            int index = getIndex(stickerResult);
                            int index2 = getIndex(stickerResult2);
                            if (index > index2) {
                                return -1;
                            }
                            return index < index2 ? 1 : 0;
                        }
                    });
                }
            }
            if (SharedConfig.suggestStickers == 0 || z5) {
                searchServerStickers(this.lastSticker, str3);
            }
            ArrayList arrayList7 = this.stickers;
            if (arrayList7 == null || arrayList7.isEmpty()) {
                if (this.visibleByStickersSearch) {
                    this.delegate.needChangePanelVisibility(false);
                    this.visibleByStickersSearch = false;
                }
                chat = chat8;
                str7 = str12;
                c = ' ';
                str5 = null;
                c2 = 4;
                i2 = r15;
            } else {
                if (SharedConfig.suggestStickers != 0 || this.stickers.size() >= i7) {
                    checkStickerFilesExistAndDownload();
                    this.delegate.needChangePanelVisibility(this.stickersToLoad.isEmpty());
                    this.visibleByStickersSearch = r15;
                } else {
                    this.delayLocalResults = r15;
                    this.delegate.needChangePanelVisibility(false);
                    this.visibleByStickersSearch = false;
                }
                notifyDataSetChanged();
            }
            chat = chat8;
            str7 = str12;
            c = ' ';
            str5 = null;
            c2 = 4;
            i2 = r15;
        } else {
            sb2 = sb;
            String str15 = str2;
            i2 = 1;
            if (z6 || !this.needBotContext) {
                str4 = str15;
            } else {
                String str16 = str15;
                char cCharAt3 = str16.charAt(0);
                str4 = str16;
                if (cCharAt3 == '@') {
                    c = ' ';
                    int iIndexOf = str16.indexOf(32);
                    int length2 = str16.length();
                    if (iIndexOf > 0) {
                        strSubstring2 = str16.substring(1, iIndexOf);
                        strSubstring = str16.substring(iIndexOf + 1);
                    } else if (str16.charAt(length2 - 1) == 't' && str16.charAt(length2 - 2) == 'o' && str16.charAt(length2 - 3) == 'b') {
                        strSubstring2 = str16.substring(1);
                        strSubstring = str;
                    } else {
                        searchForContextBot(null, null);
                        strSubstring = null;
                        strSubstring2 = null;
                    }
                    if (strSubstring2 == null || strSubstring2.length() < 1) {
                        strSubstring2 = str;
                        searchForContextBot(strSubstring2, strSubstring);
                        chat = chat9;
                        str5 = null;
                        str6 = str16;
                    } else {
                        for (int i16 = 1; i16 < strSubstring2.length(); i16++) {
                            char cCharAt4 = strSubstring2.charAt(i16);
                            if ((cCharAt4 < '0' || cCharAt4 > '9') && ((cCharAt4 < 'a' || cCharAt4 > 'z') && ((cCharAt4 < 'A' || cCharAt4 > 'Z') && cCharAt4 != '_'))) {
                                strSubstring2 = str;
                                break;
                            }
                        }
                        searchForContextBot(strSubstring2, strSubstring);
                        chat = chat9;
                        str5 = null;
                        str6 = str16;
                    }
                }
                c2 = 65535;
                str7 = str6;
            }
            c = ' ';
            if (this.allowStickers && (chatActivity = this.parentFragment) != null && chatActivity.getCurrentEncryptedChat() == null) {
                chat = chat9;
                if ((chat == null || ChatObject.canSendStickers(chat)) && str4.trim().length() >= 2) {
                    str4.trim().indexOf(32);
                }
            } else {
                chat = chat9;
            }
            str5 = null;
            searchForContextBot(null, null);
            str6 = str4;
            c2 = 65535;
            str7 = str6;
        }
        if (this.foundContextBot != null) {
            return;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        String str17 = this.hintHashtag;
        this.hintHashtag = str5;
        this.hintHashtagDivider = false;
        if (!z6) {
            sb3 = sb2;
            while (i9 >= 0) {
                if (i9 >= str7.length()) {
                    i5 = -1;
                } else {
                    char cCharAt5 = str7.charAt(i9);
                    if (i9 != 0) {
                        int i17 = i9 - 1;
                        if (str7.charAt(i17) == c || str7.charAt(i17) == '\n' || cCharAt5 == ':') {
                            if (cCharAt5 != '@') {
                                if (cCharAt5 == '#') {
                                    if (ChatObject.isChannelAndNotMegaGroup(chat) && !TextUtils.isEmpty(ChatObject.getPublicUsername(chat))) {
                                        String strSubstring3 = str7.substring(i9);
                                        this.hintHashtag = strSubstring3;
                                        if (strSubstring3.length() < 4 || !this.hintHashtag.matches("^[#$][\\p{L}_-]+$")) {
                                            this.hintHashtag = null;
                                        }
                                    }
                                    if (!this.searchAdapterHelper.loadRecentHashtags()) {
                                        this.lastText = str7;
                                        this.lastPosition = i;
                                        this.messages = arrayList;
                                        return;
                                    } else {
                                        this.resultStartPosition = i9;
                                        this.resultLength = sb3.length() + 1;
                                        sb3.insert(0, cCharAt5);
                                        i3 = -1;
                                        c2 = 1;
                                    }
                                } else if (i9 == 0 && this.botInfo != null && cCharAt5 == '/') {
                                    this.resultStartPosition = i9;
                                    this.resultLength = sb3.length() + 1;
                                    i3 = -1;
                                    c2 = 2;
                                } else if (cCharAt5 == ':' && sb3.length() > 0) {
                                    if (" !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(sb3.charAt(0)) >= 0) {
                                        i4 = 1;
                                        if (sb3.length() > 1) {
                                        }
                                    } else {
                                        i4 = 1;
                                    }
                                    this.resultStartPosition = i9;
                                    this.resultLength = sb3.length() + i4;
                                    i3 = -1;
                                    c2 = 3;
                                }
                                r14 = 0;
                                break;
                            }
                            boolean z11 = this.searchInDailogs;
                            if (z11 || this.needUsernames || (this.needBotContext && i9 == 0)) {
                                if (!z11 && this.info == null && i9 != 0) {
                                    this.lastText = str7;
                                    this.lastPosition = i;
                                    this.messages = arrayList;
                                    this.delegate.needChangePanelVisibility(false);
                                    return;
                                }
                                this.resultStartPosition = i9;
                                this.resultLength = sb3.length() + 1;
                                i3 = i9;
                            }
                        }
                        sb3.insert(0, cCharAt5);
                        i5 = -1;
                    }
                }
                i9 += i5;
            }
            r14 = 0;
            i3 = -1;
            if (str17 != null && this.hintHashtag != null) {
                notifyItemRangeInserted(r14, 2);
            } else if (str17 == null && this.hintHashtag == null) {
                notifyItemRangeRemoved(r14, 2);
            } else {
                r3 = this.topHint;
                if (r3 != 0) {
                    r3.set(r14, this.hintHashtag, chat);
                }
                hashtagHint = this.bottomHint;
                if (hashtagHint != null) {
                    hashtagHint.set(1, this.hintHashtag, chat);
                }
            }
            if (c2 != 65535) {
                this.contextMedia = r14;
                this.searchResultBotContext = null;
                this.delegate.needChangePanelVisibility(r14);
                return;
            }
            if (c2 != 0) {
                if (c2 == 1) {
                    ArrayList arrayList8 = new ArrayList();
                    String lowerCase = sb3.toString().toLowerCase();
                    ArrayList hashtags = this.searchAdapterHelper.getHashtags();
                    for (int i18 = 0; i18 < hashtags.size(); i18++) {
                        SearchAdapterHelper.HashtagObject hashtagObject = (SearchAdapterHelper.HashtagObject) hashtags.get(i18);
                        if (hashtagObject != null && (str9 = hashtagObject.hashtag) != null && str9.startsWith(lowerCase)) {
                            arrayList8.add(hashtagObject.hashtag);
                        }
                    }
                    this.searchResultHashtags = arrayList8;
                    this.stickers = null;
                    this.searchResultUsernames = null;
                    this.searchResultUsernamesMap = null;
                    this.quickReplies = null;
                    this.searchResultCommands = null;
                    this.searchResultCommandsHelp = null;
                    this.searchResultCommandsUsers = null;
                    this.searchResultSuggestions = null;
                    this.contextMedia = false;
                    this.searchResultBotContext = null;
                    notifyDataSetChanged();
                    mentionsAdapterDelegate = this.delegate;
                    z3 = (this.searchResultHashtags.isEmpty() && this.hintHashtag == null) ? false : true;
                } else {
                    if (c2 != 2) {
                        if (c2 == 3) {
                            String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
                            if (!Arrays.equals(currentKeyboardLanguage, this.lastSearchKeyboardLanguage)) {
                                MediaDataController.getInstance(this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
                            }
                            this.lastSearchKeyboardLanguage = currentKeyboardLanguage;
                            MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(this.lastSearchKeyboardLanguage, sb3.toString(), false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda5
                                @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                                public final void run(ArrayList arrayList9, String str18) {
                                    this.f$0.lambda$searchUsernameOrHashtag$9(arrayList9, str18);
                                }
                            }, SharedConfig.suggestAnimatedEmoji && UserConfig.getInstance(this.currentAccount).isPremium());
                            return;
                        }
                        if (c2 == 4) {
                            this.searchResultHashtags = null;
                            this.searchResultUsernames = null;
                            this.searchResultUsernamesMap = null;
                            this.searchResultSuggestions = null;
                            this.searchResultCommands = null;
                            this.quickReplies = null;
                            this.searchResultCommandsHelp = null;
                            this.searchResultCommandsUsers = null;
                            return;
                        }
                        return;
                    }
                    ArrayList arrayList9 = new ArrayList();
                    ArrayList arrayList10 = new ArrayList();
                    ArrayList arrayList11 = new ArrayList();
                    String lowerCase2 = sb3.toString().toLowerCase();
                    for (int i19 = 0; i19 < this.botInfo.size(); i19++) {
                        TL_bots$BotInfo tL_bots$BotInfo = (TL_bots$BotInfo) this.botInfo.valueAt(i19);
                        for (int i20 = 0; i20 < tL_bots$BotInfo.commands.size(); i20++) {
                            TLRPC.TL_botCommand tL_botCommand = (TLRPC.TL_botCommand) tL_bots$BotInfo.commands.get(i20);
                            if (tL_botCommand != null && (str8 = tL_botCommand.command) != null && str8.startsWith(lowerCase2)) {
                                arrayList9.add("/" + tL_botCommand.command);
                                arrayList10.add(tL_botCommand.description);
                                arrayList11.add(messagesController.getUser(Long.valueOf(tL_bots$BotInfo.user_id)));
                            }
                        }
                    }
                    if (this.parentFragment == null || DialogObject.isEncryptedDialog(this.dialog_id) || this.parentFragment.getChatMode() != 0 || this.parentFragment.getCurrentUser() == null || this.parentFragment.getCurrentUser().bot || UserObject.isReplyUser(this.parentFragment.getCurrentUser()) || UserObject.isService(this.parentFragment.getCurrentUser().id)) {
                        r32 = 0;
                        this.quickRepliesQuery = null;
                        this.quickReplies = null;
                    } else {
                        QuickRepliesController quickRepliesController = QuickRepliesController.getInstance(this.currentAccount);
                        quickRepliesController.load();
                        this.quickRepliesQuery = lowerCase2;
                        this.quickReplies = new ArrayList();
                        for (int i21 = 0; i21 < quickRepliesController.replies.size(); i21++) {
                            QuickRepliesController.QuickReply quickReply = (QuickRepliesController.QuickReply) quickRepliesController.replies.get(i21);
                            if (!quickReply.isSpecial()) {
                                String lowerCase3 = quickReply.name.toLowerCase();
                                if (lowerCase3.startsWith(lowerCase2) || AndroidUtilities.translitSafe(lowerCase3).startsWith(lowerCase2)) {
                                    this.quickReplies.add(quickReply);
                                }
                            }
                        }
                        r32 = 0;
                    }
                    this.searchResultHashtags = r32;
                    this.stickers = r32;
                    this.searchResultUsernames = r32;
                    this.searchResultUsernamesMap = r32;
                    this.searchResultSuggestions = r32;
                    this.searchResultCommands = arrayList9;
                    this.searchResultCommandsHelp = arrayList10;
                    this.searchResultCommandsUsers = arrayList11;
                    this.contextMedia = false;
                    this.searchResultBotContext = r32;
                    notifyDataSetChanged();
                    MentionsAdapterDelegate mentionsAdapterDelegate2 = this.delegate;
                    if (arrayList9.isEmpty() && ((arrayList2 = this.quickReplies) == null || arrayList2.isEmpty())) {
                        mentionsAdapterDelegate = mentionsAdapterDelegate2;
                    } else {
                        mentionsAdapterDelegate = mentionsAdapterDelegate2;
                    }
                }
                mentionsAdapterDelegate.needChangePanelVisibility(z3);
                return;
            }
            this.contextMedia = r14;
            this.searchResultBotContext = null;
            ArrayList arrayList12 = new ArrayList();
            if (arrayList != null) {
                for (int i22 = 0; i22 < Math.min(100, arrayList.size()); i22++) {
                    long fromChatId = ((MessageObject) arrayList.get(i22)).getFromChatId();
                    if (fromChatId > 0 && !arrayList12.contains(Long.valueOf(fromChatId))) {
                        arrayList12.add(Long.valueOf(fromChatId));
                    }
                }
            }
            String lowerCase4 = sb3.toString().toLowerCase();
            boolean z12 = lowerCase4.indexOf(c) >= 0;
            final ArrayList arrayList13 = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            final LongSparseArray longSparseArray2 = new LongSparseArray();
            ArrayList<TLRPC.TL_topPeer> arrayList14 = MediaDataController.getInstance(this.currentAccount).inlineBots;
            if (z6 || !this.needBotContext || i3 != 0 || arrayList14.isEmpty()) {
                chat2 = chat;
                arrayList3 = arrayList12;
            } else {
                int i23 = 0;
                int i24 = 0;
                while (i23 < arrayList14.size()) {
                    TLRPC.User user = messagesController.getUser(Long.valueOf(arrayList14.get(i23).peer.user_id));
                    if (user != null) {
                        String publicUsername2 = UserObject.getPublicUsername(user);
                        if (TextUtils.isEmpty(publicUsername2) || !(lowerCase4.length() == 0 || publicUsername2.toLowerCase().startsWith(lowerCase4))) {
                            chat2 = chat;
                            arrayList3 = arrayList12;
                            i6 = 1;
                        } else {
                            arrayList13.add(user);
                            chat2 = chat;
                            arrayList3 = arrayList12;
                            longSparseArray.put(user.id, user);
                            longSparseArray2.put(user.id, user);
                            i6 = 1;
                            i24++;
                        }
                        if (i24 == 5) {
                            break;
                        }
                    } else {
                        chat2 = chat;
                        arrayList3 = arrayList12;
                        i6 = 1;
                    }
                    i23 += i6;
                    arrayList12 = arrayList3;
                    chat = chat2;
                }
                chat2 = chat;
                arrayList3 = arrayList12;
            }
            ChatActivity chatActivity3 = this.parentFragment;
            if (chatActivity3 != null) {
                TLRPC.Chat currentChat2 = chatActivity3.getCurrentChat();
                threadId = this.parentFragment.getThreadId();
                chat3 = currentChat2;
            } else {
                TLRPC.ChatFull chatFull2 = this.info;
                chat3 = chatFull2 != null ? messagesController.getChat(Long.valueOf(chatFull2.id)) : chat2;
                threadId = 0;
            }
            TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
            if (chat3 != null && (chatFull = this.info) != null && chatFull.participants != null && (!ChatObject.isChannel(chat3) || chat3.megagroup)) {
                int i25 = -2;
                ?? r0 = currentUser;
                while (i25 < this.info.participants.participants.size()) {
                    if (i25 != -2) {
                        j2 = threadId;
                        if (i25 == -1) {
                            if (z7) {
                                if (lowerCase4.length() == 0) {
                                    arrayList13.add(chat3);
                                } else {
                                    String str18 = chat3.title;
                                    publicUsername = ChatObject.getPublicUsername(chat3);
                                    chat7 = chat3;
                                    str10 = null;
                                    str11 = str18;
                                    arrayList3 = arrayList3;
                                    j3 = -chat3.id;
                                    obj = r0;
                                    if (TextUtils.isEmpty(publicUsername)) {
                                        arrayList13.add(chat7);
                                        longSparseArray2.put(j3, chat7);
                                    } else {
                                        arrayList13.add(chat7);
                                        longSparseArray2.put(j3, chat7);
                                    }
                                }
                            }
                            obj = r0;
                        } else {
                            ArrayList arrayList15 = arrayList3;
                            TLRPC.ChatParticipant chatParticipant = (TLRPC.ChatParticipant) this.info.participants.participants.get(i25);
                            if (r0 != 0) {
                                arrayList3 = arrayList15;
                                if (chatParticipant.user_id != r0.id) {
                                }
                                obj = r0;
                            } else {
                                arrayList3 = arrayList15;
                            }
                            ?? user2 = messagesController.getUser(Long.valueOf(chatParticipant.user_id));
                            if (user2 != 0 && !UserObject.isUserSelf(user2) && longSparseArray.indexOfKey(user2.id) < 0) {
                                if (lowerCase4.length() != 0 || user2.deleted) {
                                    String str19 = user2.first_name;
                                    str10 = user2.last_name;
                                    publicUsername = UserObject.getPublicUsername(user2);
                                    j3 = user2.id;
                                    chat7 = user2;
                                    str11 = str19;
                                    obj = r0;
                                    if (TextUtils.isEmpty(publicUsername)) {
                                    }
                                } else {
                                    arrayList13.add(user2);
                                }
                            }
                            obj = r0;
                        }
                    } else if (r0 == 0) {
                        j2 = threadId;
                        obj = r0;
                    } else if (z6) {
                        String str20 = r0.first_name;
                        String str21 = r0.last_name;
                        publicUsername = UserObject.getPublicUsername(r0);
                        j2 = threadId;
                        j3 = r0.id;
                        chat7 = r0;
                        str10 = str21;
                        str11 = str20;
                        obj = r0;
                        if ((TextUtils.isEmpty(publicUsername) && publicUsername.toLowerCase().startsWith(lowerCase4)) || ((!TextUtils.isEmpty(str11) && str11.toLowerCase().startsWith(lowerCase4)) || ((!TextUtils.isEmpty(str10) && str10.toLowerCase().startsWith(lowerCase4)) || (z12 && ContactsController.formatName(str11, str10).toLowerCase().startsWith(lowerCase4))))) {
                            arrayList13.add(chat7);
                            longSparseArray2.put(j3, chat7);
                        }
                    } else {
                        obj = r0;
                        j2 = threadId;
                    }
                    i25++;
                    r0 = obj;
                    z6 = z;
                    z7 = z2;
                    threadId = j2;
                }
            }
            long j4 = threadId;
            if (this.searchInDailogs) {
                ArrayList<TLRPC.Dialog> allDialogs = MessagesController.getInstance(this.currentAccount).getAllDialogs();
                int i26 = 0;
                while (i26 < allDialogs.size()) {
                    if (allDialogs.get(i26).id > 0) {
                        TLRPC.User user3 = messagesController.getUser(Long.valueOf(allDialogs.get(i26).id));
                        if (user3 == null || UserObject.isUserSelf(user3) || longSparseArray.indexOfKey(user3.id) >= 0) {
                            arrayList4 = arrayList3;
                        } else if (lowerCase4.length() != 0 || user3.deleted) {
                            String str22 = user3.first_name;
                            String str23 = user3.last_name;
                            String publicUsername3 = UserObject.getPublicUsername(user3);
                            j = user3.id;
                            arrayList4 = arrayList3;
                            if (!TextUtils.isEmpty(publicUsername3)) {
                                chat5 = user3;
                                if (!publicUsername3.toLowerCase().startsWith(lowerCase4)) {
                                    if (!TextUtils.isEmpty(str22)) {
                                        chat5 = user3;
                                        if (!str22.toLowerCase().startsWith(lowerCase4)) {
                                            if (!TextUtils.isEmpty(str23)) {
                                                chat5 = user3;
                                                if (!str23.toLowerCase().startsWith(lowerCase4)) {
                                                    if (z12) {
                                                        chat5 = user3;
                                                        if (ContactsController.formatName(str22, str23).toLowerCase().startsWith(lowerCase4)) {
                                                            arrayList13.add(chat5);
                                                            longSparseArray2.put(j, chat5);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            arrayList4 = arrayList3;
                            chat6 = user3;
                            arrayList13.add(chat6);
                        }
                    } else {
                        arrayList4 = arrayList3;
                        if (!TextUtils.isEmpty(lowerCase4) && (chat4 = messagesController.getChat(Long.valueOf(-allDialogs.get(i26).id))) != null && chat4.username != null && longSparseArray.indexOfKey(chat4.id) < 0) {
                            chat6 = chat4;
                            if (lowerCase4.length() == 0) {
                                arrayList13.add(chat6);
                            } else {
                                String str24 = chat4.title;
                                String str25 = chat4.username;
                                j = chat4.id;
                                if (!TextUtils.isEmpty(str25)) {
                                    chat5 = chat4;
                                    if (!str25.toLowerCase().startsWith(lowerCase4)) {
                                        if (!TextUtils.isEmpty(str24)) {
                                            chat5 = chat4;
                                            if (str24.toLowerCase().startsWith(lowerCase4)) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i26++;
                    arrayList3 = arrayList4;
                }
            }
            final ArrayList arrayList16 = arrayList3;
            Collections.sort(arrayList13, new Comparator() { // from class: org.telegram.ui.Adapters.MentionsAdapter.6
                private long getId(TLObject tLObject) {
                    return tLObject instanceof TLRPC.User ? ((TLRPC.User) tLObject).id : -((TLRPC.Chat) tLObject).id;
                }

                @Override // java.util.Comparator
                public int compare(TLObject tLObject, TLObject tLObject2) {
                    long id = getId(tLObject);
                    long id2 = getId(tLObject2);
                    if (longSparseArray2.indexOfKey(id) >= 0 && longSparseArray2.indexOfKey(id2) >= 0) {
                        return 0;
                    }
                    if (longSparseArray2.indexOfKey(id) >= 0) {
                        return -1;
                    }
                    if (longSparseArray2.indexOfKey(id2) >= 0) {
                        return 1;
                    }
                    int iIndexOf2 = arrayList16.indexOf(Long.valueOf(id));
                    int iIndexOf3 = arrayList16.indexOf(Long.valueOf(id2));
                    if (iIndexOf2 != -1 && iIndexOf3 != -1) {
                        if (iIndexOf2 < iIndexOf3) {
                            return -1;
                        }
                        return iIndexOf2 == iIndexOf3 ? 0 : 1;
                    }
                    if (iIndexOf2 == -1 || iIndexOf3 != -1) {
                        return (iIndexOf2 != -1 || iIndexOf3 == -1) ? 0 : 1;
                    }
                    return -1;
                }
            });
            this.searchResultHashtags = null;
            this.stickers = null;
            this.quickReplies = null;
            this.searchResultCommands = null;
            this.searchResultCommandsHelp = null;
            this.searchResultCommandsUsers = null;
            this.searchResultSuggestions = null;
            if (((chat3 == null || !chat3.megagroup) && !this.searchInDailogs) || lowerCase4.length() <= 0) {
                showUsersResult(arrayList13, longSparseArray2, true);
                return;
            }
            if (arrayList13.size() < 5) {
                Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$searchUsernameOrHashtag$8(arrayList13, longSparseArray2);
                    }
                };
                this.cancelDelayRunnable = runnable4;
                AndroidUtilities.runOnUIThread(runnable4, 1000L);
            } else {
                showUsersResult(arrayList13, longSparseArray2, true);
            }
            AnonymousClass7 anonymousClass7 = new AnonymousClass7(chat3, lowerCase4, j4, arrayList13, longSparseArray2, messagesController);
            this.searchGlobalRunnable = anonymousClass7;
            AndroidUtilities.runOnUIThread(anonymousClass7, 200L);
            return;
        }
        sb3 = sb2;
        sb3.append(str7.substring(i2));
        this.resultStartPosition = 0;
        this.resultLength = sb3.length();
        i3 = -1;
        c2 = 0;
        r14 = 0;
        if (str17 != null) {
            if (str17 == null) {
                r3 = this.topHint;
                if (r3 != 0) {
                }
                hashtagHint = this.bottomHint;
                if (hashtagHint != null) {
                }
            }
        }
        if (c2 != 65535) {
        }
    }

    public void setAllowBots(boolean z) {
        this.allowBots = z;
    }

    public void setAllowChats(boolean z) {
        this.allowChats = z;
    }

    public void setAllowStickers(boolean z) {
        this.allowStickers = z;
    }

    public void setBotInfo(LongSparseArray longSparseArray) {
        this.botInfo = longSparseArray;
    }

    public void setBotsCount(int i) {
        this.botsCount = i;
    }

    public void setChatInfo(TLRPC.ChatFull chatFull) {
        ChatActivity chatActivity;
        TLRPC.Chat currentChat;
        this.currentAccount = UserConfig.selectedAccount;
        this.info = chatFull;
        if (!this.inlineMediaEnabled && this.foundContextBot != null && (chatActivity = this.parentFragment) != null && (currentChat = chatActivity.getCurrentChat()) != null) {
            boolean zCanSendStickers = ChatObject.canSendStickers(currentChat);
            this.inlineMediaEnabled = zCanSendStickers;
            if (zCanSendStickers) {
                this.searchResultUsernames = null;
                notifyDataSetChanged();
                this.delegate.needChangePanelVisibility(false);
                processFoundUser(this.foundContextBot);
            }
        }
        String str = this.lastText;
        if (str != null) {
            lambda$searchUsernameOrHashtag$7(str, this.lastPosition, this.messages, this.lastUsernameOnly, this.lastForSearch);
        }
    }

    public void setDialogId(long j) {
        this.dialog_id = j;
    }

    public void setIsReversed(boolean z) {
        if (this.isReversed != z) {
            this.isReversed = z;
            int lastItemCount = getLastItemCount();
            if (lastItemCount > 0) {
                notifyItemChanged(0);
            }
            if (lastItemCount > 1) {
                notifyItemChanged(lastItemCount - 1);
            }
        }
    }

    public void setNeedBotContext(boolean z) {
        this.needBotContext = z;
    }

    public void setNeedUsernames(boolean z) {
        this.needUsernames = z;
    }

    public void setParentFragment(ChatActivity chatActivity) {
        this.parentFragment = chatActivity;
    }

    public void setSearchInDailogs(boolean z) {
        this.searchInDailogs = z;
    }

    public void setSearchingMentions(boolean z) {
        this.isSearchingMentions = z;
    }

    public void setUserOrChat(TLRPC.User user, TLRPC.Chat chat) {
        this.user = user;
        this.chat = chat;
    }
}
