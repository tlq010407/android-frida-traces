package org.telegram.messenger;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ImageDecoder;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.PostProcessor;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.Person;
import androidx.core.app.RemoteInput;
import androidx.core.content.FileProvider;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import j$.util.Comparator$CC;
import j$.util.function.Consumer;
import j$.util.function.ToLongFunction;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.messenger.voip.VoIPGroupNotification;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$ReactionNotificationsFrom;
import org.telegram.tgnet.tl.TL_account$TL_reactionNotificationsFromAll;
import org.telegram.tgnet.tl.TL_account$TL_reactionNotificationsFromContacts;
import org.telegram.tgnet.tl.TL_account$TL_reactionsNotifySettings;
import org.telegram.tgnet.tl.TL_account$setReactionsNotifySettings;
import org.telegram.tgnet.tl.TL_account$updateNotifySettings;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.BubbleActivity;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PopupNotificationActivity;
import org.telegram.ui.Stories.recorder.StoryEntry;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class NotificationsController extends BaseController {
    public static final String EXTRA_VOICE_REPLY = "extra_voice_reply";
    private static volatile NotificationsController[] Instance = null;
    public static String OTHER_NOTIFICATIONS_CHANNEL = null;
    public static final int SETTING_MUTE_2_DAYS = 2;
    public static final int SETTING_MUTE_8_HOURS = 1;
    public static final int SETTING_MUTE_CUSTOM = 5;
    public static final int SETTING_MUTE_FOREVER = 3;
    public static final int SETTING_MUTE_HOUR = 0;
    public static final int SETTING_MUTE_UNMUTE = 4;
    public static final int SETTING_SOUND_OFF = 1;
    public static final int SETTING_SOUND_ON = 0;
    public static final int TYPE_CHANNEL = 2;
    public static final int TYPE_GROUP = 0;
    public static final int TYPE_PRIVATE = 1;
    public static final int TYPE_REACTIONS_MESSAGES = 4;
    public static final int TYPE_REACTIONS_STORIES = 5;
    public static final int TYPE_STORIES = 3;
    protected static AudioManager audioManager;
    private static final Object[] lockObjects;
    private static NotificationManagerCompat notificationManager;
    private static final LongSparseArray sharedPrefCachedKeys;
    private static NotificationManager systemNotificationManager;
    private AlarmManager alarmManager;
    private boolean channelGroupsCreated;
    private Runnable checkStoryPushesRunnable;
    private final ArrayList<MessageObject> delayedPushMessages;
    NotificationsSettingsFacade dialogsNotificationsFacade;
    private final LongSparseArray fcmRandomMessagesDict;
    private Boolean groupsCreated;
    private boolean inChatSoundEnabled;
    private int lastBadgeCount;
    private int lastButtonId;
    public long lastNotificationChannelCreateTime;
    private int lastOnlineFromOtherDevice;
    private long lastSoundOutPlay;
    private long lastSoundPlay;
    private final LongSparseArray lastWearNotifiedMessageId;
    private String launcherClassName;
    private SpoilerEffect mediaSpoilerEffect;
    private Runnable notificationDelayRunnable;
    private PowerManager.WakeLock notificationDelayWakelock;
    private String notificationGroup;
    private int notificationId;
    private boolean notifyCheck;
    private long openedDialogId;
    private final HashSet<Long> openedInBubbleDialogs;
    private long openedTopicId;
    private int personalCount;
    public final ArrayList<MessageObject> popupMessages;
    public ArrayList<MessageObject> popupReplyMessages;
    private final LongSparseArray pushDialogs;
    private final LongSparseArray pushDialogsOverrideMention;
    private final ArrayList<MessageObject> pushMessages;
    private final LongSparseArray pushMessagesDict;
    public boolean showBadgeMessages;
    public boolean showBadgeMuted;
    public boolean showBadgeNumber;
    private final LongSparseArray smartNotificationsDialogs;
    private int soundIn;
    private boolean soundInLoaded;
    private int soundOut;
    private boolean soundOutLoaded;
    private SoundPool soundPool;
    private int soundRecord;
    private boolean soundRecordLoaded;
    char[] spoilerChars;
    private final ArrayList<StoryNotification> storyPushMessages;
    private final LongSparseArray storyPushMessagesDict;
    private int total_unread_count;
    private final LongSparseArray wearNotificationsIds;
    private static final DispatchQueue notificationsQueue = new DispatchQueue("notificationsQueue");
    public static long globalSecretChatId = DialogObject.makeEncryptedDialogId(1);

    /* renamed from: org.telegram.messenger.NotificationsController$1NotificationHolder, reason: invalid class name */
    class C1NotificationHolder {
        TLRPC.Chat chat;
        long dialogId;
        int id;
        String name;
        NotificationCompat.Builder notification;
        boolean story;
        long topicId;
        TLRPC.User user;
        final /* synthetic */ String val$chatName;
        final /* synthetic */ int val$chatType;
        final /* synthetic */ int val$importance;
        final /* synthetic */ boolean val$isDefault;
        final /* synthetic */ boolean val$isInApp;
        final /* synthetic */ boolean val$isSilent;
        final /* synthetic */ long val$lastTopicId;
        final /* synthetic */ int val$ledColor;
        final /* synthetic */ Uri val$sound;
        final /* synthetic */ long[] val$vibrationPattern;

        C1NotificationHolder(int i, long j, boolean z, long j2, String str, TLRPC.User user, TLRPC.Chat chat, NotificationCompat.Builder builder, long j3, String str2, long[] jArr, int i2, Uri uri, int i3, boolean z2, boolean z3, boolean z4, int i4) {
            this.val$lastTopicId = j3;
            this.val$chatName = str2;
            this.val$vibrationPattern = jArr;
            this.val$ledColor = i2;
            this.val$sound = uri;
            this.val$importance = i3;
            this.val$isDefault = z2;
            this.val$isInApp = z3;
            this.val$isSilent = z4;
            this.val$chatType = i4;
            this.id = i;
            this.name = str;
            this.user = user;
            this.chat = chat;
            this.notification = builder;
            this.dialogId = j;
            this.story = z;
            this.topicId = j2;
        }

        void call() throws IOException {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.w("show dialog notification with id " + this.id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.e(e);
                NotificationsController.this.resetNotificationSound(this.notification, this.dialogId, this.val$lastTopicId, this.val$chatName, this.val$vibrationPattern, this.val$ledColor, this.val$sound, this.val$importance, this.val$isDefault, this.val$isInApp, this.val$isSilent, this.val$chatType);
            }
        }
    }

    private static class DialogKey {
        final long dialogId;
        final boolean story;
        final long topicId;

        private DialogKey(long j, long j2, boolean z) {
            this.dialogId = j;
            this.topicId = j2;
            this.story = z;
        }
    }

    public static class StoryNotification {
        public long date;
        final HashMap<Integer, Pair<Long, Long>> dateByIds;
        final long dialogId;
        boolean hidden;
        String localName;

        public StoryNotification(long j, String str, int i, long j2) {
            this(j, str, i, j2, j2 + 86400000);
        }

        public StoryNotification(long j, String str, int i, long j2, long j3) {
            HashMap<Integer, Pair<Long, Long>> map = new HashMap<>();
            this.dateByIds = map;
            this.dialogId = j;
            this.localName = str;
            map.put(Integer.valueOf(i), new Pair<>(Long.valueOf(j2), Long.valueOf(j3)));
            this.date = j2;
        }

        public long getLeastDate() {
            long jLongValue = -1;
            for (Pair<Long, Long> pair : this.dateByIds.values()) {
                if (jLongValue == -1 || jLongValue > ((Long) pair.first).longValue()) {
                    jLongValue = ((Long) pair.first).longValue();
                }
            }
            return jLongValue;
        }
    }

    static {
        notificationManager = null;
        systemNotificationManager = null;
        if (Build.VERSION.SDK_INT >= 26 && ApplicationLoader.applicationContext != null) {
            notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
            systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService(RemoteMessageConst.NOTIFICATION);
            checkOtherNotificationsChannel();
        }
        audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        Instance = new NotificationsController[4];
        lockObjects = new Object[4];
        for (int i = 0; i < 4; i++) {
            lockObjects[i] = new Object();
        }
        sharedPrefCachedKeys = new LongSparseArray();
    }

    public NotificationsController(int i) {
        super(i);
        this.pushMessages = new ArrayList<>();
        this.delayedPushMessages = new ArrayList<>();
        this.pushMessagesDict = new LongSparseArray();
        this.fcmRandomMessagesDict = new LongSparseArray();
        this.smartNotificationsDialogs = new LongSparseArray();
        this.pushDialogs = new LongSparseArray();
        this.wearNotificationsIds = new LongSparseArray();
        this.lastWearNotifiedMessageId = new LongSparseArray();
        this.pushDialogsOverrideMention = new LongSparseArray();
        this.popupMessages = new ArrayList<>();
        this.popupReplyMessages = new ArrayList<>();
        this.openedInBubbleDialogs = new HashSet<>();
        this.storyPushMessages = new ArrayList<>();
        this.storyPushMessagesDict = new LongSparseArray();
        this.openedDialogId = 0L;
        this.openedTopicId = 0L;
        this.lastButtonId = 5000;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.notifyCheck = false;
        this.lastOnlineFromOtherDevice = 0;
        this.lastBadgeCount = -1;
        this.mediaSpoilerEffect = new SpoilerEffect();
        this.spoilerChars = new char[]{10252, 10338, 10385, 10280, 10277, 10286, 10321};
        this.checkStoryPushesRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkStoryPushes();
            }
        };
        this.notificationId = this.currentAccount + 1;
        StringBuilder sb = new StringBuilder();
        sb.append("messages");
        int i2 = this.currentAccount;
        sb.append(i2 == 0 ? "" : Integer.valueOf(i2));
        this.notificationGroup = sb.toString();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        this.inChatSoundEnabled = notificationsSettings.getBoolean("EnableInChatSound", true);
        this.showBadgeNumber = notificationsSettings.getBoolean("badgeNumber", true);
        this.showBadgeMuted = notificationsSettings.getBoolean("badgeNumberMuted", false);
        this.showBadgeMessages = notificationsSettings.getBoolean("badgeNumberMessages", true);
        notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
        systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService(RemoteMessageConst.NOTIFICATION);
        try {
            audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        try {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.e(e3);
        }
        this.notificationDelayRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.dialogsNotificationsFacade = new NotificationsSettingsFacade(this.currentAccount);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int addToPopupMessages(ArrayList<MessageObject> arrayList, MessageObject messageObject, long j, boolean z, SharedPreferences sharedPreferences) {
        int i;
        if (messageObject.isStoryReactionPush) {
            return 0;
        }
        if (!DialogObject.isEncryptedDialog(j)) {
            if (sharedPreferences.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + j, false)) {
                i = sharedPreferences.getInt("popup_" + j, 0);
            } else {
                i = 0;
            }
            if (i == 0) {
                i = sharedPreferences.getInt(z ? "popupChannel" : DialogObject.isChatDialog(j) ? "popupGroup" : "popupAll", 0);
            } else if (i == 1) {
                i = 3;
            } else if (i == 2) {
                i = 0;
            }
        }
        if (i != 0 && messageObject.messageOwner.peer_id.channel_id != 0 && !messageObject.isSupergroup()) {
            i = 0;
        }
        if (i != 0) {
            arrayList.add(0, messageObject);
        }
        return i;
    }

    private void appendMessage(MessageObject messageObject) {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            if (this.pushMessages.get(i).getId() == messageObject.getId() && this.pushMessages.get(i).getDialogId() == messageObject.getDialogId() && this.pushMessages.get(i).isStoryPush == messageObject.isStoryPush) {
                return;
            }
        }
        this.pushMessages.add(0, messageObject);
    }

    public static void checkOtherNotificationsChannel() {
        SharedPreferences sharedPreferences;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            OTHER_NOTIFICATIONS_CHANNEL = sharedPreferences.getString("OtherKey", "Other3");
        } else {
            sharedPreferences = null;
        }
        NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
        if (notificationChannel != null && notificationChannel.getImportance() == 0) {
            try {
                systemNotificationManager.deleteNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
            } catch (Exception e) {
                FileLog.e(e);
            }
            OTHER_NOTIFICATIONS_CHANNEL = null;
            notificationChannel = null;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            if (sharedPreferences == null) {
                sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            }
            OTHER_NOTIFICATIONS_CHANNEL = "Other" + Utilities.random.nextLong();
            sharedPreferences.edit().putString("OtherKey", OTHER_NOTIFICATIONS_CHANNEL).commit();
        }
        if (notificationChannel == null) {
            NotificationChannel notificationChannel2 = new NotificationChannel(OTHER_NOTIFICATIONS_CHANNEL, "Internal notifications", 3);
            notificationChannel2.enableLights(false);
            notificationChannel2.enableVibration(false);
            notificationChannel2.setSound(null, null);
            try {
                systemNotificationManager.createNotificationChannel(notificationChannel2);
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStoryPushes() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = 0;
        boolean z = false;
        while (i < this.storyPushMessages.size()) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            Iterator<Map.Entry<Integer, Pair<Long, Long>>> it = storyNotification.dateByIds.entrySet().iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis >= ((Long) it.next().getValue().second).longValue()) {
                    it.remove();
                    z = true;
                }
            }
            if (z) {
                if (storyNotification.dateByIds.isEmpty()) {
                    getMessagesStorage().deleteStoryPushMessage(storyNotification.dialogId);
                    this.storyPushMessages.remove(i);
                    i--;
                } else {
                    getMessagesStorage().putStoryPushMessage(storyNotification);
                }
            }
            i++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
        updateStoryPushesRunnable();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String createNotificationShortcut(NotificationCompat.Builder builder, long j, String str, TLRPC.User user, TLRPC.Chat chat, Person person, boolean z) {
        Bitmap bitmap;
        IconCompat iconCompatCreateWithResource;
        if (unsupportedNotificationShortcut() || (ChatObject.isChannel(chat) && !chat.megagroup)) {
            return null;
        }
        try {
            String str2 = "ndid_" + j;
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenChatReceiver.class);
            intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            if (j > 0) {
                intent.putExtra("userId", j);
            } else {
                intent.putExtra("chatId", -j);
            }
            ShortcutInfoCompat.Builder locusId = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str2).setShortLabel(chat != null ? str : UserObject.getFirstName(user)).setLongLabel(str).setIntent(new Intent("android.intent.action.VIEW")).setIntent(intent).setLongLived(true).setLocusId(new LocusIdCompat(str2));
            if (person != null) {
                locusId.setPerson(person);
                locusId.setIcon(person.getIcon());
                bitmap = person.getIcon() != null ? person.getIcon().getBitmap() : null;
            }
            ShortcutInfoCompat shortcutInfoCompatBuild = locusId.build();
            ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, shortcutInfoCompatBuild);
            builder.setShortcutInfo(shortcutInfoCompatBuild);
            Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) BubbleActivity.class);
            intent2.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            if (DialogObject.isUserDialog(j)) {
                intent2.putExtra("userId", j);
            } else {
                intent2.putExtra("chatId", -j);
            }
            intent2.putExtra("currentAccount", this.currentAccount);
            if (bitmap != null) {
                iconCompatCreateWithResource = IconCompat.createWithAdaptiveBitmap(bitmap);
            } else if (user != null) {
                iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, user.bot ? R.drawable.book_bot : R.drawable.book_user);
            } else {
                iconCompatCreateWithResource = IconCompat.createWithResource(ApplicationLoader.applicationContext, R.drawable.book_group);
            }
            if (z) {
                NotificationCompat.BubbleMetadata.Builder builder2 = new NotificationCompat.BubbleMetadata.Builder(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 167772160), iconCompatCreateWithResource);
                builder2.setSuppressNotification(this.openedDialogId == j);
                builder2.setAutoExpandBubble(false);
                builder2.setDesiredHeight(AndroidUtilities.dp(640.0f));
                builder.setBubbleMetadata(builder2.build());
            } else {
                builder.setBubbleMetadata(null);
            }
            return str2;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    private String cutLastName(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(32);
        if (iIndexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, iIndexOf));
        sb.append(str.endsWith("…") ? "…" : "");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteNotificationChannelInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$deleteNotificationChannel$39(long j, long j2, int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            if (i == 0 || i == -1) {
                String str = "org.telegram.key" + j;
                if (j2 != 0) {
                    str = str + ".topic" + j2;
                }
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    editorEdit.remove(str).remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("delete channel internal " + string);
                    }
                }
            }
            if (i == 1 || i == -1) {
                String str2 = "org.telegram.keyia" + j;
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    editorEdit.remove(str2).remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("delete channel internal " + string2);
                    }
                }
            }
            editorEdit.commit();
        } catch (Exception e3) {
            FileLog.e(e3);
        }
    }

    private void dismissNotification() {
        FileLog.d("NotificationsController dismissNotification");
        try {
            notificationManager.cancel(this.notificationId);
            this.pushMessages.clear();
            this.pushMessagesDict.clear();
            this.lastWearNotifiedMessageId.clear();
            for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
                if (!this.openedInBubbleDialogs.contains(Long.valueOf(this.wearNotificationsIds.keyAt(i)))) {
                    notificationManager.cancel(((Integer) this.wearNotificationsIds.valueAt(i)).intValue());
                }
            }
            this.wearNotificationsIds.clear();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.lambda$dismissNotification$35();
                }
            });
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static String getGlobalNotificationsKey(int i) {
        return i == 0 ? "EnableGroup2" : i == 1 ? "EnableAll2" : "EnableChannel2";
    }

    private TLRPC.NotificationSound getInputSound(SharedPreferences sharedPreferences, String str, String str2, String str3) {
        long j = sharedPreferences.getLong(str2, 0L);
        String string = sharedPreferences.getString(str3, "NoSound");
        if (j != 0) {
            TLRPC.TL_notificationSoundRingtone tL_notificationSoundRingtone = new TLRPC.TL_notificationSoundRingtone();
            tL_notificationSoundRingtone.id = j;
            return tL_notificationSoundRingtone;
        }
        if (string == null) {
            return new TLRPC.TL_notificationSoundDefault();
        }
        if (string.equalsIgnoreCase("NoSound")) {
            return new TLRPC.TL_notificationSoundNone();
        }
        TLRPC.TL_notificationSoundLocal tL_notificationSoundLocal = new TLRPC.TL_notificationSoundLocal();
        tL_notificationSoundLocal.title = sharedPreferences.getString(str, null);
        tL_notificationSoundLocal.data = string;
        return tL_notificationSoundLocal;
    }

    public static NotificationsController getInstance(int i) {
        NotificationsController notificationsController = Instance[i];
        if (notificationsController == null) {
            synchronized (lockObjects[i]) {
                try {
                    notificationsController = Instance[i];
                    if (notificationsController == null) {
                        NotificationsController[] notificationsControllerArr = Instance;
                        NotificationsController notificationsController2 = new NotificationsController(i);
                        notificationsControllerArr[i] = notificationsController2;
                        notificationsController = notificationsController2;
                    }
                } finally {
                }
            }
        }
        return notificationsController;
    }

    private int getNotifyOverride(SharedPreferences sharedPreferences, long j, long j2) {
        int property = this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY, j, j2, -1);
        if (property != 3 || this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL, j, j2, 0) < getConnectionsManager().getCurrentTime()) {
            return property;
        }
        return 2;
    }

    public static String getSharedPrefKey(long j, long j2) {
        return getSharedPrefKey(j, j2, false);
    }

    public static String getSharedPrefKey(long j, long j2, boolean z) {
        if (z) {
            return j2 != 0 ? String.format(Locale.US, "%d_%d", Long.valueOf(j), Long.valueOf(j2)) : String.valueOf(j);
        }
        long j3 = (j2 << 12) + j;
        LongSparseArray longSparseArray = sharedPrefCachedKeys;
        int iIndexOfKey = longSparseArray.indexOfKey(j3);
        if (iIndexOfKey >= 0) {
            return (String) longSparseArray.valueAt(iIndexOfKey);
        }
        String strValueOf = j2 != 0 ? String.format(Locale.US, "%d_%d", Long.valueOf(j), Long.valueOf(j2)) : String.valueOf(j);
        longSparseArray.put(j3, strValueOf);
        return strValueOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:165:0x0260, code lost:
    
        if (r7.getBoolean(r12, r13) != false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
    
        if (r7.getBoolean("EnablePreviewChannel", r0) == false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:739:0x1022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getShortStringForMessage(MessageObject messageObject, String[] strArr, boolean[] zArr) {
        String str;
        NotificationsController notificationsController;
        String title;
        String str2;
        char c;
        TLRPC.Chat chat;
        boolean z;
        TLRPC.Message message;
        char c2;
        String pluralString;
        int i;
        String title2;
        char c3;
        CharSequence string;
        char c4;
        CharSequence string2;
        char c5;
        CharSequence string3;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Chat chat2;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Peer peer2;
        boolean z2;
        boolean z3;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(R.string.NotificationHiddenMessage);
        }
        TLRPC.Message message2 = messageObject.messageOwner;
        long j = message2.dialog_id;
        TLRPC.Peer peer3 = message2.peer_id;
        long j2 = peer3.chat_id;
        if (j2 == 0) {
            j2 = peer3.channel_id;
        }
        long fromChatId = peer3.user_id;
        if (zArr != null) {
            zArr[0] = true;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z4 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j, true);
        if (messageObject.isFcmMessage()) {
            if (j2 == 0 && fromChatId != 0) {
                if (Build.VERSION.SDK_INT > 27) {
                    z3 = false;
                    strArr[0] = messageObject.localName;
                } else {
                    z3 = false;
                }
                if (!z4 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr != null) {
                        zArr[z3 ? 1 : 0] = z3;
                    }
                    return LocaleController.getString(R.string.Message);
                }
            } else if (j2 != 0) {
                if (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) {
                    strArr[0] = messageObject.localUserName;
                } else if (Build.VERSION.SDK_INT > 27) {
                    strArr[0] = messageObject.localName;
                }
                if (z4) {
                    if (messageObject.localChannel) {
                        z2 = true;
                    } else {
                        z2 = true;
                        if (notificationsSettings.getBoolean("EnablePreviewGroup", true)) {
                        }
                    }
                    if (messageObject.localChannel) {
                    }
                }
                if (zArr != null) {
                    zArr[0] = false;
                }
                return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString(R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString(R.string.ChannelMessageNoText, messageObject.localName);
            }
            return replaceSpoilers(messageObject);
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (fromChatId == 0) {
            fromChatId = messageObject.getFromChatId();
            if (fromChatId == 0) {
                fromChatId = -j2;
            }
        } else if (fromChatId == clientUserId) {
            fromChatId = messageObject.getFromChatId();
        }
        if (j == 0) {
            if (j2 != 0) {
                j = -j2;
            } else if (fromChatId != 0) {
                j = fromChatId;
            }
        }
        if (UserObject.isReplyUser(j) && (messageFwdHeader2 = messageObject.messageOwner.fwd_from) != null && (peer2 = messageFwdHeader2.from_id) != null) {
            fromChatId = MessageObject.getPeerId(peer2);
        }
        if (fromChatId > 0) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
            if (user != null) {
                title = UserObject.getUserName(user);
                if (j2 == 0 && Build.VERSION.SDK_INT <= 27) {
                    strArr[0] = null;
                } else {
                    strArr[0] = title;
                }
                notificationsController = this;
                str = "EnablePreviewChannel";
            } else {
                notificationsController = this;
                str = "EnablePreviewChannel";
                title = null;
            }
        } else {
            str = "EnablePreviewChannel";
            TLRPC.Chat chat3 = getMessagesController().getChat(Long.valueOf(-fromChatId));
            notificationsController = this;
            if (chat3 != null) {
                title = notificationsController.getTitle(chat3);
                strArr[0] = title;
            } else {
                title = null;
            }
        }
        if (title == null || fromChatId <= 0 || !UserObject.isReplyUser(j) || (messageFwdHeader = messageObject.messageOwner.fwd_from) == null || (peer = messageFwdHeader.saved_from_peer) == null) {
            str2 = "EnablePreviewAll";
        } else {
            str2 = "EnablePreviewAll";
            long peerId = MessageObject.getPeerId(peer);
            if (DialogObject.isChatDialog(peerId) && (chat2 = getMessagesController().getChat(Long.valueOf(-peerId))) != null) {
                title = title + " @ " + notificationsController.getTitle(chat2);
                if (strArr[0] != null) {
                    strArr[0] = title;
                }
            }
        }
        if (title == null) {
            return null;
        }
        if (j2 != 0) {
            chat = getMessagesController().getChat(Long.valueOf(j2));
            if (chat == null) {
                return null;
            }
            if (!ChatObject.isChannel(chat) || chat.megagroup || Build.VERSION.SDK_INT > 27) {
                c = 0;
            } else {
                c = 0;
                strArr[0] = null;
            }
        } else {
            c = 0;
            chat = null;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            strArr[c] = null;
            return LocaleController.getString(R.string.NotificationHiddenMessage);
        }
        boolean z5 = ChatObject.isChannel(chat) && !chat.megagroup;
        if (z4) {
            if (j2 == 0 && fromChatId != 0) {
                z = true;
                if (!notificationsSettings.getBoolean(str2, true)) {
                }
                message = messageObject.messageOwner;
                if (message instanceof TLRPC.TL_messageService) {
                    if (messageObject.isMediaEmpty()) {
                        return !TextUtils.isEmpty(messageObject.messageOwner.message) ? replaceSpoilers(messageObject) : LocaleController.getString(R.string.Message);
                    }
                    if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                        TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject);
                        int size = tL_messageMediaPaidMedia.extended_media.size();
                        boolean z6 = false;
                        for (int i2 = 0; i2 < size; i2++) {
                            TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                                z6 = (messageMedia instanceof TLRPC.TL_messageMediaDocument) && MessageObject.isVideoDocument(messageMedia.document);
                            } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                                if ((((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0) {
                                }
                            }
                            if (z6) {
                                break;
                            }
                        }
                        int i3 = R.string.AttachPaidMedia;
                        if (size == 1) {
                            pluralString = LocaleController.getString(z6 ? R.string.AttachVideo : R.string.AttachPhoto);
                            i = 1;
                            c2 = 0;
                        } else {
                            c2 = 0;
                            pluralString = LocaleController.formatPluralString(z6 ? "Media" : "Photos", size, new Object[0]);
                            i = 1;
                        }
                        Object[] objArr = new Object[i];
                        objArr[c2] = pluralString;
                        return LocaleController.formatString(i3, objArr);
                    }
                    if (messageObject.isVoiceOnce()) {
                        return LocaleController.getString(R.string.AttachOnceAudio);
                    }
                    if (messageObject.isRoundOnce()) {
                        return LocaleController.getString(R.string.AttachOnceRound);
                    }
                    TLRPC.Message message3 = messageObject.messageOwner;
                    if (message3.media instanceof TLRPC.TL_messageMediaPhoto) {
                        if (TextUtils.isEmpty(message3.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.getString(R.string.AttachDestructingPhoto) : LocaleController.getString(R.string.AttachPhoto);
                        }
                        return "🖼 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.isVideo()) {
                        if (TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.getString(R.string.AttachDestructingVideo) : LocaleController.getString(R.string.AttachVideo);
                        }
                        return "📹 " + replaceSpoilers(messageObject);
                    }
                    if (messageObject.isGame()) {
                        return LocaleController.getString(R.string.AttachGame);
                    }
                    if (messageObject.isVoice()) {
                        return LocaleController.getString(R.string.AttachAudio);
                    }
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.getString(R.string.AttachRound);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.getString(R.string.AttachMusic);
                    }
                    TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                        return LocaleController.getString(R.string.AttachContact);
                    }
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                        return ((TLRPC.TL_messageMediaPoll) messageMedia2).poll.quiz ? LocaleController.getString(R.string.QuizPoll) : LocaleController.getString(R.string.Poll);
                    }
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                        return LocaleController.getString(R.string.Todo);
                    }
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveaway) {
                        return LocaleController.getString(R.string.BoostingGiveaway);
                    }
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                        return LocaleController.getString(R.string.BoostingGiveawayResults);
                    }
                    if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                        return LocaleController.getString(R.string.AttachLocation);
                    }
                    if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                        return LocaleController.getString(R.string.AttachLiveLocation);
                    }
                    if (!(messageMedia2 instanceof TLRPC.TL_messageMediaDocument)) {
                        if (!(messageMedia2 instanceof TLRPC.TL_messageMediaStory)) {
                            return !TextUtils.isEmpty(messageObject.messageText) ? replaceSpoilers(messageObject) : LocaleController.getString(R.string.Message);
                        }
                        if (!((TLRPC.TL_messageMediaStory) messageMedia2).via_mention) {
                            return LocaleController.getString(R.string.Story);
                        }
                        int i4 = R.string.StoryNotificationMention;
                        String str3 = strArr[0];
                        return LocaleController.formatString(i4, str3 == null ? "" : str3);
                    }
                    if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                        String stickerEmoji = messageObject.getStickerEmoji();
                        if (stickerEmoji == null) {
                            return LocaleController.getString(R.string.AttachSticker);
                        }
                        return stickerEmoji + " " + LocaleController.getString(R.string.AttachSticker);
                    }
                    if (messageObject.isGif()) {
                        if (TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.getString(R.string.AttachGif);
                        }
                        return "🎬 " + replaceSpoilers(messageObject);
                    }
                    if (TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.getString(R.string.AttachDocument);
                    }
                    return "📎 " + replaceSpoilers(messageObject);
                }
                strArr[0] = null;
                TLRPC.MessageAction messageAction = message.action;
                if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                    return LocaleController.getString(R.string.WallpaperSameNotification);
                }
                if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                    return LocaleController.getString(R.string.WallpaperNotification);
                }
                if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                    return messageObject.messageText.toString();
                }
                if ((messageAction instanceof TLRPC.TL_messageActionUserJoined) || (messageAction instanceof TLRPC.TL_messageActionContactSignUp)) {
                    return LocaleController.formatString(R.string.NotificationContactJoined, title);
                }
                if (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                    return LocaleController.formatString(R.string.NotificationContactNewPhoto, title);
                }
                if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                    String string4 = LocaleController.formatString(R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(messageObject.messageOwner.date * 1000), LocaleController.getInstance().getFormatterDay().format(messageObject.messageOwner.date * 1000));
                    int i5 = R.string.NotificationUnrecognizedDevice;
                    String str4 = getUserConfig().getCurrentUser().first_name;
                    TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                    return LocaleController.formatString(i5, str4, string4, messageAction2.title, messageAction2.address);
                }
                if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionGameScore.class, TLRPC.TL_messageActionPaymentSent.class, TLRPC.TL_messageActionPaymentSentMe.class, TLRPC.TL_messageActionStarGift.class, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionStarGiftUnique.class, TLRPC.TL_messageActionPaidMessagesPrice.class, TLRPC.TL_messageActionPaidMessagesRefunded.class, TLRPC.TL_messageActionGiftTon.class)) {
                    return messageObject.messageText.toString();
                }
                TLRPC.Message message4 = messageObject.messageOwner;
                TLRPC.MessageAction messageAction3 = message4.action;
                if (messageAction3 instanceof TLRPC.TL_messageActionPhoneCall) {
                    return messageAction3.video ? LocaleController.getString(R.string.CallMessageVideoIncomingMissed) : LocaleController.getString(R.string.CallMessageIncomingMissed);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionConferenceCall) {
                    return messageAction3.video ? LocaleController.getString(R.string.CallMessageVideoIncomingConferenceMissed) : LocaleController.getString(R.string.CallMessageIncomingConferenceMissed);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                    long jLongValue = messageAction3.user_id;
                    if (jLongValue == 0 && messageAction3.users.size() == 1) {
                        jLongValue = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                    }
                    if (jLongValue != 0) {
                        if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                            return LocaleController.formatString(R.string.ChannelAddedByNotification, title, notificationsController.getTitle(chat));
                        }
                        if (jLongValue == clientUserId) {
                            return LocaleController.formatString(R.string.NotificationInvitedToGroup, title, notificationsController.getTitle(chat));
                        }
                        TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(jLongValue));
                        if (user2 == null) {
                            return null;
                        }
                        return fromChatId == user2.id ? chat.megagroup ? LocaleController.formatString(R.string.NotificationGroupAddSelfMega, title, notificationsController.getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupAddSelf, title, notificationsController.getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupAddMember, title, notificationsController.getTitle(chat), UserObject.getUserName(user2));
                    }
                    StringBuilder sb = new StringBuilder();
                    for (int i6 = 0; i6 < messageObject.messageOwner.action.users.size(); i6++) {
                        TLRPC.User user3 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i6));
                        if (user3 != null) {
                            String userName = UserObject.getUserName(user3);
                            if (sb.length() != 0) {
                                sb.append(", ");
                            }
                            sb.append(userName);
                        }
                    }
                    return LocaleController.formatString(R.string.NotificationGroupAddMember, title, notificationsController.getTitle(chat), sb.toString());
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGroupCall) {
                    return messageAction3.duration != 0 ? LocaleController.formatString(R.string.NotificationGroupEndedCall, title, notificationsController.getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupCreatedCall, title, notificationsController.getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                    return messageObject.messageText.toString();
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                    long jLongValue2 = messageAction3.user_id;
                    if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                        jLongValue2 = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                    }
                    if (jLongValue2 != 0) {
                        if (jLongValue2 == clientUserId) {
                            return LocaleController.formatString(R.string.NotificationGroupInvitedYouToCall, title, notificationsController.getTitle(chat));
                        }
                        TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                        if (user4 == null) {
                            return null;
                        }
                        return LocaleController.formatString(R.string.NotificationGroupInvitedToCall, title, notificationsController.getTitle(chat), UserObject.getUserName(user4));
                    }
                    StringBuilder sb2 = new StringBuilder();
                    for (int i7 = 0; i7 < messageObject.messageOwner.action.users.size(); i7++) {
                        TLRPC.User user5 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i7));
                        if (user5 != null) {
                            String userName2 = UserObject.getUserName(user5);
                            if (sb2.length() != 0) {
                                sb2.append(", ");
                            }
                            sb2.append(userName2);
                        }
                    }
                    return LocaleController.formatString(R.string.NotificationGroupInvitedToCall, title, notificationsController.getTitle(chat), sb2.toString());
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionGiftCode) {
                    return LocaleController.getString(R.string.BoostingReceivedGiftNoName);
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                    return LocaleController.formatString(R.string.NotificationInvitedToGroupByLink, title, notificationsController.getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatEditTitle) {
                    return LocaleController.formatString(R.string.NotificationEditedGroupName, title, messageAction3.title);
                }
                if ((messageAction3 instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                    return (message4.peer_id.channel_id == 0 || chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString(R.string.NotificationEditedGroupVideo, title, notificationsController.getTitle(chat)) : LocaleController.formatString(R.string.NotificationEditedGroupPhoto, title, notificationsController.getTitle(chat)) : messageObject.isVideoAvatar() ? LocaleController.formatString(R.string.ChannelVideoEditNotification, notificationsController.getTitle(chat)) : LocaleController.formatString(R.string.ChannelPhotoEditNotification, notificationsController.getTitle(chat));
                }
                if (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) {
                    long j3 = messageAction3.user_id;
                    if (j3 == clientUserId) {
                        return LocaleController.formatString(R.string.NotificationGroupKickYou, title, notificationsController.getTitle(chat));
                    }
                    if (j3 == fromChatId) {
                        return LocaleController.formatString(R.string.NotificationGroupLeftMember, title, notificationsController.getTitle(chat));
                    }
                    TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                    if (user6 == null) {
                        return null;
                    }
                    return LocaleController.formatString(R.string.NotificationGroupKickMember, title, notificationsController.getTitle(chat), UserObject.getUserName(user6));
                }
                if (!(messageAction3 instanceof TLRPC.TL_messageActionChatCreate) && !(messageAction3 instanceof TLRPC.TL_messageActionChannelCreate)) {
                    if (messageAction3 instanceof TLRPC.TL_messageActionChatMigrateTo) {
                        return LocaleController.formatString(R.string.ActionMigrateFromGroupNotify, notificationsController.getTitle(chat));
                    }
                    if (messageAction3 instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                        return LocaleController.formatString(R.string.ActionMigrateFromGroupNotify, messageAction3.title);
                    }
                    if (!(messageAction3 instanceof TLRPC.TL_messageActionScreenshotTaken) && !(messageAction3 instanceof TLRPC.TL_messageActionGiveawayLaunch) && !(messageAction3 instanceof TLRPC.TL_messageActionGiveawayResults)) {
                        if (!(messageAction3 instanceof TLRPC.TL_messageActionPinMessage)) {
                            if (messageAction3 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                String str5 = ((TLRPC.TL_messageActionSetChatTheme) messageAction3).emoticon;
                                return TextUtils.isEmpty(str5) ? j == clientUserId ? LocaleController.formatString(R.string.ChatThemeDisabledYou, new Object[0]) : LocaleController.formatString("ChatThemeDisabled", R.string.ChatThemeDisabled, title, str5) : j == clientUserId ? LocaleController.formatString(R.string.ChatThemeChangedYou, str5) : LocaleController.formatString(R.string.ChatThemeChangedTo, title, str5);
                            }
                            if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                                return messageObject.messageText.toString();
                            }
                            if (!(messageAction3 instanceof TLRPC.TL_messageActionPrizeStars)) {
                                if ((messageAction3 instanceof TLRPC.TL_messageActionPaymentRefunded) || (messageAction3 instanceof TLRPC.TL_messageActionTodoCompletions) || (messageAction3 instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
                                    return messageObject.messageText.toString();
                                }
                                return null;
                            }
                            TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars = (TLRPC.TL_messageActionPrizeStars) messageAction3;
                            long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionPrizeStars.boost_peer);
                            if (peerDialogId >= 0) {
                                title2 = UserObject.getForcedFirstName(getMessagesController().getUser(Long.valueOf(peerDialogId)));
                            } else {
                                TLRPC.Chat chat4 = getMessagesController().getChat(Long.valueOf(-peerDialogId));
                                title2 = chat4 == null ? "" : notificationsController.getTitle(chat4);
                            }
                            return LocaleController.formatPluralStringComma("BoostingReceivedStars", (int) tL_messageActionPrizeStars.stars, title2);
                        }
                        if (chat != null && (!ChatObject.isChannel(chat) || chat.megagroup)) {
                            MessageObject messageObject2 = messageObject.replyMessageObject;
                            if (messageObject2 == null) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedNoText, title, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isMusic()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedMusic, title, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isVideo()) {
                                if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedVideo, title, notificationsController.getTitle(chat));
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedText, title, "📹 " + messageObject2.messageOwner.message, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isGif()) {
                                if (TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedGif, title, notificationsController.getTitle(chat));
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedText, title, "🎬 " + messageObject2.messageOwner.message, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isVoice()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedVoice, title, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isRoundVideo()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedRound, title, notificationsController.getTitle(chat));
                            }
                            if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                                String stickerEmoji2 = messageObject2.getStickerEmoji();
                                return stickerEmoji2 != null ? LocaleController.formatString(R.string.NotificationActionPinnedStickerEmoji, title, notificationsController.getTitle(chat), stickerEmoji2) : LocaleController.formatString(R.string.NotificationActionPinnedSticker, title, notificationsController.getTitle(chat));
                            }
                            TLRPC.Message message5 = messageObject2.messageOwner;
                            TLRPC.MessageMedia messageMedia3 = message5.media;
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                                if (TextUtils.isEmpty(message5.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedFile, title, notificationsController.getTitle(chat));
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedText, title, "📎 " + messageObject2.messageOwner.message, notificationsController.getTitle(chat));
                            }
                            if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGeo, title, notificationsController.getTitle(chat));
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGeoLive, title, notificationsController.getTitle(chat));
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                                TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia3;
                                return LocaleController.formatString(R.string.NotificationActionPinnedContact2, title, notificationsController.getTitle(chat), ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                                TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia3;
                                return tL_messageMediaPoll.poll.quiz ? LocaleController.formatString(R.string.NotificationActionPinnedQuiz2, title, notificationsController.getTitle(chat), tL_messageMediaPoll.poll.question.text) : LocaleController.formatString(R.string.NotificationActionPinnedPoll2, title, notificationsController.getTitle(chat), tL_messageMediaPoll.poll.question.text);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedTodo2, title, notificationsController.getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                                if (TextUtils.isEmpty(message5.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedPhoto, title, notificationsController.getTitle(chat));
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedText, title, "🖼 " + messageObject2.messageOwner.message, notificationsController.getTitle(chat));
                            }
                            if (messageMedia3 instanceof TLRPC.TL_messageMediaGame) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGame, title, notificationsController.getTitle(chat));
                            }
                            CharSequence charSequence = messageObject2.messageText;
                            if (charSequence == null || charSequence.length() <= 0) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedNoText, title, notificationsController.getTitle(chat));
                            }
                            CharSequence charSequence2 = messageObject2.messageText;
                            if (charSequence2.length() > 20) {
                                StringBuilder sb3 = new StringBuilder();
                                c5 = 0;
                                sb3.append((Object) charSequence2.subSequence(0, 20));
                                sb3.append("...");
                                string3 = sb3.toString();
                            } else {
                                c5 = 0;
                                string3 = charSequence2;
                            }
                            int i8 = R.string.NotificationActionPinnedText;
                            String title3 = notificationsController.getTitle(chat);
                            Object[] objArr2 = new Object[3];
                            objArr2[c5] = title;
                            objArr2[1] = string3;
                            objArr2[2] = title3;
                            return LocaleController.formatString(i8, objArr2);
                        }
                        if (chat == null) {
                            MessageObject messageObject3 = messageObject.replyMessageObject;
                            if (messageObject3 == null) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedNoTextUser, title);
                            }
                            if (messageObject3.isMusic()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedMusicUser, title);
                            }
                            if (messageObject3.isVideo()) {
                                if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedVideoUser, title);
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedTextUser, title, "📹 " + messageObject3.messageOwner.message);
                            }
                            if (messageObject3.isGif()) {
                                if (TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedGifUser, title);
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedTextUser, title, "🎬 " + messageObject3.messageOwner.message);
                            }
                            if (messageObject3.isVoice()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedVoiceUser, title);
                            }
                            if (messageObject3.isRoundVideo()) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedRoundUser, title);
                            }
                            if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                                String stickerEmoji3 = messageObject3.getStickerEmoji();
                                return stickerEmoji3 != null ? LocaleController.formatString(R.string.NotificationActionPinnedStickerEmojiUser, title, stickerEmoji3) : LocaleController.formatString(R.string.NotificationActionPinnedStickerUser, title);
                            }
                            TLRPC.Message message6 = messageObject3.messageOwner;
                            TLRPC.MessageMedia messageMedia4 = message6.media;
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaDocument) {
                                if (TextUtils.isEmpty(message6.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedFileUser, title);
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedTextUser, title, "📎 " + messageObject3.messageOwner.message);
                            }
                            if ((messageMedia4 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia4 instanceof TLRPC.TL_messageMediaVenue)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGeoUser, title);
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaGeoLive) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGeoLiveUser, title);
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaContact) {
                                TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageMedia4;
                                return LocaleController.formatString(R.string.NotificationActionPinnedContactUser, title, ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaPoll) {
                                TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia4).poll;
                                return poll.quiz ? LocaleController.formatString(R.string.NotificationActionPinnedQuizUser, title, poll.question.text) : LocaleController.formatString(R.string.NotificationActionPinnedPollUser, title, poll.question.text);
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaToDo) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedTodoUser, title, ((TLRPC.TL_messageMediaToDo) messageMedia4).todo.title.text);
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaPhoto) {
                                if (TextUtils.isEmpty(message6.message)) {
                                    return LocaleController.formatString(R.string.NotificationActionPinnedPhotoUser, title);
                                }
                                return LocaleController.formatString(R.string.NotificationActionPinnedTextUser, title, "🖼 " + messageObject3.messageOwner.message);
                            }
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaGame) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGameUser, title);
                            }
                            CharSequence charSequence3 = messageObject3.messageText;
                            if (charSequence3 == null || charSequence3.length() <= 0) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedNoTextUser, title);
                            }
                            CharSequence charSequence4 = messageObject3.messageText;
                            if (charSequence4.length() > 20) {
                                StringBuilder sb4 = new StringBuilder();
                                c3 = 0;
                                sb4.append((Object) charSequence4.subSequence(0, 20));
                                sb4.append("...");
                                string = sb4.toString();
                            } else {
                                c3 = 0;
                                string = charSequence4;
                            }
                            int i9 = R.string.NotificationActionPinnedTextUser;
                            Object[] objArr3 = new Object[2];
                            objArr3[c3] = title;
                            objArr3[1] = string;
                            return LocaleController.formatString(i9, objArr3);
                        }
                        MessageObject messageObject4 = messageObject.replyMessageObject;
                        if (messageObject4 == null) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedNoTextChannel, notificationsController.getTitle(chat));
                        }
                        if (messageObject4.isMusic()) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedMusicChannel, notificationsController.getTitle(chat));
                        }
                        if (messageObject4.isVideo()) {
                            if (TextUtils.isEmpty(messageObject4.messageOwner.message)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedVideoChannel, notificationsController.getTitle(chat));
                            }
                            return LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, notificationsController.getTitle(chat), "📹 " + messageObject4.messageOwner.message);
                        }
                        if (messageObject4.isGif()) {
                            if (TextUtils.isEmpty(messageObject4.messageOwner.message)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedGifChannel, notificationsController.getTitle(chat));
                            }
                            return LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, notificationsController.getTitle(chat), "🎬 " + messageObject4.messageOwner.message);
                        }
                        if (messageObject4.isVoice()) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedVoiceChannel, notificationsController.getTitle(chat));
                        }
                        if (messageObject4.isRoundVideo()) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedRoundChannel, notificationsController.getTitle(chat));
                        }
                        if (messageObject4.isSticker() || messageObject4.isAnimatedSticker()) {
                            String stickerEmoji4 = messageObject4.getStickerEmoji();
                            return stickerEmoji4 != null ? LocaleController.formatString(R.string.NotificationActionPinnedStickerEmojiChannel, notificationsController.getTitle(chat), stickerEmoji4) : LocaleController.formatString(R.string.NotificationActionPinnedStickerChannel, notificationsController.getTitle(chat));
                        }
                        TLRPC.Message message7 = messageObject4.messageOwner;
                        TLRPC.MessageMedia messageMedia5 = message7.media;
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaDocument) {
                            if (TextUtils.isEmpty(message7.message)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedFileChannel, notificationsController.getTitle(chat));
                            }
                            return LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, notificationsController.getTitle(chat), "📎 " + messageObject4.messageOwner.message);
                        }
                        if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedGeoChannel, notificationsController.getTitle(chat));
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedGeoLiveChannel, notificationsController.getTitle(chat));
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageMedia5;
                            return LocaleController.formatString(R.string.NotificationActionPinnedContactChannel2, notificationsController.getTitle(chat), ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia5;
                            return tL_messageMediaPoll2.poll.quiz ? LocaleController.formatString(R.string.NotificationActionPinnedQuizChannel2, notificationsController.getTitle(chat), tL_messageMediaPoll2.poll.question.text) : LocaleController.formatString(R.string.NotificationActionPinnedPollChannel2, notificationsController.getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedTodoChannel2, notificationsController.getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia5).todo.title.text);
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaPhoto) {
                            if (TextUtils.isEmpty(message7.message)) {
                                return LocaleController.formatString(R.string.NotificationActionPinnedPhotoChannel, notificationsController.getTitle(chat));
                            }
                            return LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, notificationsController.getTitle(chat), "🖼 " + messageObject4.messageOwner.message);
                        }
                        if (messageMedia5 instanceof TLRPC.TL_messageMediaGame) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedGameChannel, notificationsController.getTitle(chat));
                        }
                        CharSequence charSequence5 = messageObject4.messageText;
                        if (charSequence5 == null || charSequence5.length() <= 0) {
                            return LocaleController.formatString(R.string.NotificationActionPinnedNoTextChannel, notificationsController.getTitle(chat));
                        }
                        CharSequence charSequence6 = messageObject4.messageText;
                        if (charSequence6.length() > 20) {
                            StringBuilder sb5 = new StringBuilder();
                            c4 = 0;
                            sb5.append((Object) charSequence6.subSequence(0, 20));
                            sb5.append("...");
                            string2 = sb5.toString();
                        } else {
                            c4 = 0;
                            string2 = charSequence6;
                        }
                        int i10 = R.string.NotificationActionPinnedTextChannel;
                        String title4 = notificationsController.getTitle(chat);
                        Object[] objArr4 = new Object[2];
                        objArr4[c4] = title4;
                        objArr4[1] = string2;
                        return LocaleController.formatString(i10, objArr4);
                    }
                    return messageObject.messageText.toString();
                }
                return messageObject.messageText.toString();
            }
            z = true;
            if (j2 != 0) {
                if (!z5) {
                    if (!notificationsSettings.getBoolean("EnablePreviewGroup", z)) {
                    }
                    message = messageObject.messageOwner;
                    if (message instanceof TLRPC.TL_messageService) {
                    }
                }
                if (z5) {
                }
            }
        }
        if (zArr != null) {
            zArr[0] = false;
        }
        return LocaleController.getString(R.string.Message);
    }

    /* JADX WARN: Code restructure failed: missing block: B:634:0x1031, code lost:
    
        if ((r5 instanceof org.telegram.tgnet.TLRPC.TL_messageActionChatJoinedByRequest) != false) goto L635;
     */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x1033  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x10a2  */
    /* JADX WARN: Removed duplicated region for block: B:833:0x1724  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getStringForMessage(MessageObject messageObject, boolean z, boolean[] zArr, boolean[] zArr2) {
        String str;
        String str2;
        String title;
        TLRPC.Chat chat;
        String pluralString;
        boolean z2;
        TLRPC.Message message;
        String str3;
        char c;
        char c2;
        String string;
        char c3;
        boolean z3;
        String string2;
        int i;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString(R.string.YouHaveNewMessage);
        }
        if (messageObject.isStoryPush || messageObject.isStoryMentionPush) {
            return "!" + messageObject.messageOwner.message;
        }
        TLRPC.Message message2 = messageObject.messageOwner;
        long j = message2.dialog_id;
        TLRPC.Peer peer = message2.peer_id;
        long j2 = peer.chat_id;
        if (j2 == 0) {
            j2 = peer.channel_id;
        }
        long fromChatId = peer.user_id;
        if (zArr2 != null) {
            zArr2[0] = true;
        }
        if (messageObject.getDialogId() == UserObject.VERIFY && messageObject.getForwardedFromId() != null) {
            fromChatId = messageObject.getForwardedFromId().longValue();
            j2 = fromChatId < 0 ? -fromChatId : 0L;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z4 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j, true);
        if (messageObject.isFcmMessage()) {
            if (j2 != 0 || fromChatId == 0) {
                if (j2 != 0 && (!z4 || ((!messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewGroup", true)) || (messageObject.localChannel && !notificationsSettings.getBoolean("EnablePreviewChannel", true))))) {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString(R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString(R.string.ChannelMessageNoText, messageObject.localName);
                }
            } else if (!z4 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return LocaleController.formatString(R.string.NotificationMessageNoText, messageObject.localName);
            }
            zArr[0] = true;
            return (String) messageObject.messageText;
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (fromChatId == 0) {
            fromChatId = messageObject.getFromChatId();
            if (fromChatId == 0) {
                fromChatId = -j2;
            }
        } else if (fromChatId == clientUserId) {
            fromChatId = messageObject.getFromChatId();
        }
        if (j == 0) {
            if (j2 != 0) {
                j = -j2;
            } else if (fromChatId != 0) {
                j = fromChatId;
            }
        }
        if (fromChatId > 0) {
            if (messageObject.messageOwner.from_scheduled) {
                title = LocaleController.getString(j == clientUserId ? R.string.MessageScheduledReminderNotification : R.string.NotificationMessageScheduledName);
            } else {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(fromChatId));
                if (user != null) {
                    title = UserObject.getUserName(user);
                } else {
                    str = "EnablePreviewChannel";
                    str2 = "EnablePreviewGroup";
                }
            }
            str = "EnablePreviewChannel";
            str2 = "EnablePreviewGroup";
        } else {
            str = "EnablePreviewChannel";
            str2 = "EnablePreviewGroup";
            TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(-fromChatId));
            title = chat2 != null ? getTitle(chat2) : null;
        }
        if (title == null) {
            return null;
        }
        if (j2 != 0) {
            chat = getMessagesController().getChat(Long.valueOf(j2));
            if (chat == null) {
                return null;
            }
        } else {
            chat = null;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return LocaleController.getString(R.string.YouHaveNewMessage);
        }
        String str4 = str2;
        if (j2 == 0 && fromChatId != 0) {
            if (z4 && notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                TLRPC.Message message3 = messageObject.messageOwner;
                if (message3 instanceof TLRPC.TL_messageService) {
                    TLRPC.MessageAction messageAction = message3.action;
                    if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                        i = R.string.WallpaperSameNotification;
                    } else if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                        i = R.string.WallpaperNotification;
                    } else {
                        if (!(messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) && !(messageAction instanceof TLRPC.TL_messageActionTodoCompletions) && !(messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
                            if ((messageAction instanceof TLRPC.TL_messageActionUserJoined) || (messageAction instanceof TLRPC.TL_messageActionContactSignUp)) {
                                pluralString = LocaleController.formatString(R.string.NotificationContactJoined, title);
                            } else if (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                                pluralString = LocaleController.formatString(R.string.NotificationContactNewPhoto, title);
                            } else if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                                String string3 = LocaleController.formatString(R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(messageObject.messageOwner.date * 1000), LocaleController.getInstance().getFormatterDay().format(messageObject.messageOwner.date * 1000));
                                int i2 = R.string.NotificationUnrecognizedDevice;
                                String str5 = getUserConfig().getCurrentUser().first_name;
                                TLRPC.MessageAction messageAction2 = messageObject.messageOwner.action;
                                pluralString = LocaleController.formatString(i2, str5, string3, messageAction2.title, messageAction2.address);
                            } else if (!(messageAction instanceof TLRPC.TL_messageActionGameScore) && !(messageAction instanceof TLRPC.TL_messageActionPaymentSent) && !(messageAction instanceof TLRPC.TL_messageActionPaymentSentMe) && !(messageAction instanceof TLRPC.TL_messageActionStarGift) && !(messageAction instanceof TLRPC.TL_messageActionGiftPremium) && !(messageAction instanceof TLRPC.TL_messageActionGiftTon) && !(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) && !(messageAction instanceof TLRPC.TL_messageActionPaidMessagesRefunded) && !(messageAction instanceof TLRPC.TL_messageActionPaidMessagesPrice)) {
                                if (messageAction instanceof TLRPC.TL_messageActionPhoneCall) {
                                    i = messageAction.video ? R.string.CallMessageVideoIncomingMissed : R.string.CallMessageIncomingMissed;
                                } else {
                                    if (!(messageAction instanceof TLRPC.TL_messageActionConferenceCall)) {
                                        if (messageAction instanceof TLRPC.TL_messageActionSetChatTheme) {
                                            String str6 = ((TLRPC.TL_messageActionSetChatTheme) messageAction).emoticon;
                                            if (!TextUtils.isEmpty(str6)) {
                                                c3 = 0;
                                                z3 = true;
                                                string2 = j == clientUserId ? LocaleController.formatString(R.string.ChatThemeChangedYou, str6) : LocaleController.formatString(R.string.ChatThemeChangedTo, title, str6);
                                            } else {
                                                if (j == clientUserId) {
                                                    c3 = 0;
                                                    string = LocaleController.formatString(R.string.ChatThemeDisabledYou, new Object[0]);
                                                    z3 = true;
                                                    zArr[c3] = z3;
                                                    return string;
                                                }
                                                c3 = 0;
                                                z3 = true;
                                                string2 = LocaleController.formatString(R.string.ChatThemeDisabled, title, str6);
                                            }
                                            string = string2;
                                            zArr[c3] = z3;
                                            return string;
                                        }
                                        str3 = null;
                                        return str3;
                                    }
                                    i = messageAction.video ? R.string.CallMessageVideoIncomingConferenceMissed : R.string.CallMessageIncomingConferenceMissed;
                                }
                            }
                        }
                        pluralString = messageObject.messageText.toString();
                    }
                    pluralString = LocaleController.getString(i);
                } else if (!messageObject.isMediaEmpty()) {
                    TLRPC.Message message4 = messageObject.messageOwner;
                    if (message4.media instanceof TLRPC.TL_messageMediaPhoto) {
                        if (!z && !TextUtils.isEmpty(message4.message)) {
                            string = LocaleController.formatString(R.string.NotificationMessageText, title, "🖼 " + messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string;
                        }
                        pluralString = messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString(R.string.NotificationMessageSDPhoto, title) : LocaleController.formatString(R.string.NotificationMessagePhoto, title);
                    } else if (messageObject.isVideo()) {
                        if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            string = LocaleController.formatString(R.string.NotificationMessageText, title, "📹 " + messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string;
                        }
                        pluralString = messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString(R.string.NotificationMessageSDVideo, title) : LocaleController.formatString(R.string.NotificationMessageVideo, title);
                    } else if (messageObject.isGame()) {
                        pluralString = LocaleController.formatString(R.string.NotificationMessageGame, title, messageObject.messageOwner.media.game.title);
                    } else if (messageObject.isVoice()) {
                        pluralString = LocaleController.formatString(R.string.NotificationMessageAudio, title);
                    } else if (messageObject.isRoundVideo()) {
                        pluralString = LocaleController.formatString(R.string.NotificationMessageRound, title);
                    } else if (messageObject.isMusic()) {
                        pluralString = LocaleController.formatString(R.string.NotificationMessageMusic, title);
                    } else {
                        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
                            TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia;
                            pluralString = LocaleController.formatString(R.string.NotificationMessageContact2, title, ContactsController.formatName(tL_messageMediaContact.first_name, tL_messageMediaContact.last_name));
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
                            TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway = (TLRPC.TL_messageMediaGiveaway) messageMedia;
                            pluralString = LocaleController.formatString(R.string.NotificationMessageChannelGiveaway, title, Integer.valueOf(tL_messageMediaGiveaway.quantity), Integer.valueOf(tL_messageMediaGiveaway.months));
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
                            pluralString = LocaleController.formatString(R.string.BoostingGiveawayResults, new Object[0]);
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                            TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) messageMedia).poll;
                            pluralString = poll.quiz ? LocaleController.formatString(R.string.NotificationMessageQuiz2, title, poll.question.text) : LocaleController.formatString(R.string.NotificationMessagePoll2, title, poll.question.text);
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                            pluralString = LocaleController.formatString(R.string.NotificationMessageTodo2, title, ((TLRPC.TL_messageMediaToDo) messageMedia).todo.title.text);
                        } else if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
                            pluralString = LocaleController.formatString(R.string.NotificationMessageMap, title);
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
                            pluralString = LocaleController.formatString(R.string.NotificationMessageLiveLocation, title);
                        } else if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
                            if (!z && !TextUtils.isEmpty(messageObject.messageText)) {
                                string = LocaleController.formatString(R.string.NotificationMessageText, title, messageObject.messageText);
                                zArr[0] = true;
                                return string;
                            }
                            pluralString = LocaleController.formatString(R.string.NotificationMessageNoText, title);
                        } else if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                            String stickerEmoji = messageObject.getStickerEmoji();
                            pluralString = stickerEmoji != null ? LocaleController.formatString(R.string.NotificationMessageStickerEmoji, title, stickerEmoji) : LocaleController.formatString(R.string.NotificationMessageSticker, title);
                        } else if (messageObject.isGif()) {
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                string = LocaleController.formatString(R.string.NotificationMessageText, title, "🎬 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return string;
                            }
                            pluralString = LocaleController.formatString(R.string.NotificationMessageGif, title);
                        } else {
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                string = LocaleController.formatString(R.string.NotificationMessageText, title, "📎 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return string;
                            }
                            pluralString = LocaleController.formatString(R.string.NotificationMessageDocument, title);
                        }
                    }
                } else {
                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        string = LocaleController.formatString(R.string.NotificationMessageText, title, messageObject.messageOwner.message);
                        zArr[0] = true;
                        return string;
                    }
                    pluralString = LocaleController.formatString(R.string.NotificationMessageNoText, title);
                }
                return pluralString;
            }
            if (zArr2 != null) {
                zArr2[0] = false;
            }
            pluralString = LocaleController.formatString(R.string.NotificationMessageNoText, title);
            return pluralString;
        }
        if (j2 != 0) {
            boolean z5 = ChatObject.isChannel(chat) && !chat.megagroup;
            if (z4) {
                if (z5) {
                    z2 = true;
                } else {
                    z2 = true;
                    if (!notificationsSettings.getBoolean(str4, true)) {
                    }
                    message = messageObject.messageOwner;
                    if (!(message instanceof TLRPC.TL_messageService)) {
                        TLRPC.MessageAction messageAction3 = message.action;
                        if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                            long jLongValue = messageAction3.user_id;
                            if (jLongValue == 0 && messageAction3.users.size() == 1) {
                                jLongValue = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                            }
                            if (jLongValue == 0) {
                                StringBuilder sb = new StringBuilder();
                                for (int i3 = 0; i3 < messageObject.messageOwner.action.users.size(); i3++) {
                                    TLRPC.User user2 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i3));
                                    if (user2 != null) {
                                        String userName = UserObject.getUserName(user2);
                                        if (sb.length() != 0) {
                                            sb.append(", ");
                                        }
                                        sb.append(userName);
                                    }
                                }
                                pluralString = LocaleController.formatString(R.string.NotificationGroupAddMember, title, getTitle(chat), sb.toString());
                            } else if (messageObject.messageOwner.peer_id.channel_id != 0 && !chat.megagroup) {
                                pluralString = LocaleController.formatString(R.string.ChannelAddedByNotification, title, getTitle(chat));
                            } else if (jLongValue == clientUserId) {
                                pluralString = LocaleController.formatString(R.string.NotificationInvitedToGroup, title, getTitle(chat));
                            } else {
                                TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(jLongValue));
                                if (user3 == null) {
                                    return null;
                                }
                                pluralString = fromChatId == user3.id ? chat.megagroup ? LocaleController.formatString(R.string.NotificationGroupAddSelfMega, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupAddSelf, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupAddMember, title, getTitle(chat), UserObject.getUserName(user3));
                            }
                        } else {
                            if (messageAction3 instanceof TLRPC.TL_messageActionGroupCall) {
                                return messageAction3.duration != 0 ? LocaleController.formatString(R.string.NotificationGroupEndedCall, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationGroupCreatedCall, title, getTitle(chat));
                            }
                            if (!(messageAction3 instanceof TLRPC.TL_messageActionGroupCallScheduled)) {
                                if (messageAction3 instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                                    long jLongValue2 = messageAction3.user_id;
                                    if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                                        jLongValue2 = ((Long) messageObject.messageOwner.action.users.get(0)).longValue();
                                    }
                                    if (jLongValue2 == 0) {
                                        StringBuilder sb2 = new StringBuilder();
                                        for (int i4 = 0; i4 < messageObject.messageOwner.action.users.size(); i4++) {
                                            TLRPC.User user4 = getMessagesController().getUser((Long) messageObject.messageOwner.action.users.get(i4));
                                            if (user4 != null) {
                                                String userName2 = UserObject.getUserName(user4);
                                                if (sb2.length() != 0) {
                                                    sb2.append(", ");
                                                }
                                                sb2.append(userName2);
                                            }
                                        }
                                        pluralString = LocaleController.formatString(R.string.NotificationGroupInvitedToCall, title, getTitle(chat), sb2.toString());
                                    } else if (jLongValue2 == clientUserId) {
                                        pluralString = LocaleController.formatString(R.string.NotificationGroupInvitedYouToCall, title, getTitle(chat));
                                    } else {
                                        TLRPC.User user5 = getMessagesController().getUser(Long.valueOf(jLongValue2));
                                        if (user5 == null) {
                                            return null;
                                        }
                                        pluralString = LocaleController.formatString(R.string.NotificationGroupInvitedToCall, title, getTitle(chat), UserObject.getUserName(user5));
                                    }
                                } else if (messageAction3 instanceof TLRPC.TL_messageActionGiftCode) {
                                    TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) messageAction3;
                                    TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
                                    String title2 = chat3 == null ? null : getTitle(chat3);
                                    pluralString = title2 == null ? LocaleController.getString(R.string.BoostingReceivedGiftNoName) : LocaleController.formatString(R.string.NotificationMessageGiftCode, title2, LocaleController.formatPluralString("Months", tL_messageActionGiftCode.months, new Object[0]));
                                } else if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                                    pluralString = LocaleController.formatString(R.string.NotificationInvitedToGroupByLink, title, getTitle(chat));
                                } else if (messageAction3 instanceof TLRPC.TL_messageActionChatEditTitle) {
                                    pluralString = LocaleController.formatString(R.string.NotificationEditedGroupName, title, messageAction3.title);
                                } else if (!(messageAction3 instanceof TLRPC.TL_messageActionTodoCompletions) && !(messageAction3 instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
                                    if ((messageAction3 instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction3 instanceof TLRPC.TL_messageActionChatDeletePhoto)) {
                                        pluralString = (message.peer_id.channel_id == 0 || chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString(R.string.NotificationEditedGroupVideo, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationEditedGroupPhoto, title, getTitle(chat)) : messageObject.isVideoAvatar() ? LocaleController.formatString(R.string.ChannelVideoEditNotification, getTitle(chat)) : LocaleController.formatString(R.string.ChannelPhotoEditNotification, getTitle(chat));
                                    } else if (messageAction3 instanceof TLRPC.TL_messageActionChatDeleteUser) {
                                        long j3 = messageAction3.user_id;
                                        if (j3 == clientUserId) {
                                            pluralString = LocaleController.formatString(R.string.NotificationGroupKickYou, title, getTitle(chat));
                                        } else if (j3 == fromChatId) {
                                            pluralString = LocaleController.formatString(R.string.NotificationGroupLeftMember, title, getTitle(chat));
                                        } else {
                                            TLRPC.User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                                            if (user6 == null) {
                                                return null;
                                            }
                                            pluralString = LocaleController.formatString(R.string.NotificationGroupKickMember, title, getTitle(chat), UserObject.getUserName(user6));
                                        }
                                    } else {
                                        str3 = null;
                                        if (!(messageAction3 instanceof TLRPC.TL_messageActionChatCreate) && !(messageAction3 instanceof TLRPC.TL_messageActionChannelCreate)) {
                                            if (messageAction3 instanceof TLRPC.TL_messageActionChatMigrateTo) {
                                                pluralString = LocaleController.formatString(R.string.ActionMigrateFromGroupNotify, getTitle(chat));
                                            } else if (messageAction3 instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                                                pluralString = LocaleController.formatString(R.string.ActionMigrateFromGroupNotify, messageAction3.title);
                                            } else if (!(messageAction3 instanceof TLRPC.TL_messageActionScreenshotTaken)) {
                                                if (messageAction3 instanceof TLRPC.TL_messageActionPinMessage) {
                                                    if (!ChatObject.isChannel(chat) || chat.megagroup) {
                                                        MessageObject messageObject2 = messageObject.replyMessageObject;
                                                        if (messageObject2 == null) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                                                        } else if (messageObject2.isMusic()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedMusic, title, getTitle(chat));
                                                        } else if (messageObject2.isVideo()) {
                                                            pluralString = TextUtils.isEmpty(messageObject2.messageOwner.message) ? LocaleController.formatString(R.string.NotificationActionPinnedVideo, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedText, title, "📹 " + messageObject2.messageOwner.message, getTitle(chat));
                                                        } else if (messageObject2.isGif()) {
                                                            pluralString = TextUtils.isEmpty(messageObject2.messageOwner.message) ? LocaleController.formatString(R.string.NotificationActionPinnedGif, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedText, title, "🎬 " + messageObject2.messageOwner.message, getTitle(chat));
                                                        } else if (messageObject2.isVoice()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedVoice, title, getTitle(chat));
                                                        } else if (messageObject2.isRoundVideo()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedRound, title, getTitle(chat));
                                                        } else if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                                                            String stickerEmoji2 = messageObject2.getStickerEmoji();
                                                            pluralString = stickerEmoji2 != null ? LocaleController.formatString(R.string.NotificationActionPinnedStickerEmoji, title, getTitle(chat), stickerEmoji2) : LocaleController.formatString(R.string.NotificationActionPinnedSticker, title, getTitle(chat));
                                                        } else {
                                                            TLRPC.Message message5 = messageObject2.messageOwner;
                                                            TLRPC.MessageMedia messageMedia2 = message5.media;
                                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
                                                                pluralString = TextUtils.isEmpty(message5.message) ? LocaleController.formatString(R.string.NotificationActionPinnedFile, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedText, title, "📎 " + messageObject2.messageOwner.message, getTitle(chat));
                                                            } else if ((messageMedia2 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia2 instanceof TLRPC.TL_messageMediaVenue)) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGeo, title, getTitle(chat));
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGeoLive) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGeoLive, title, getTitle(chat));
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaContact) {
                                                                TLRPC.TL_messageMediaContact tL_messageMediaContact2 = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedContact2, title, getTitle(chat), ContactsController.formatName(tL_messageMediaContact2.first_name, tL_messageMediaContact2.last_name));
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                                                TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia2;
                                                                pluralString = tL_messageMediaPoll.poll.quiz ? LocaleController.formatString(R.string.NotificationActionPinnedQuiz2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text) : LocaleController.formatString(R.string.NotificationActionPinnedPoll2, title, getTitle(chat), tL_messageMediaPoll.poll.question.text);
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedTodo2, title, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia2).todo.title.text);
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                                                                pluralString = TextUtils.isEmpty(message5.message) ? LocaleController.formatString(R.string.NotificationActionPinnedPhoto, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedText, title, "🖼 " + messageObject2.messageOwner.message, getTitle(chat));
                                                            } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGame, title, getTitle(chat));
                                                            } else {
                                                                CharSequence charSequence = messageObject2.messageText;
                                                                if (charSequence == null || charSequence.length() <= 0) {
                                                                    pluralString = LocaleController.formatString(R.string.NotificationActionPinnedNoText, title, getTitle(chat));
                                                                } else {
                                                                    CharSequence string4 = messageObject2.messageText;
                                                                    if (string4.length() > 20) {
                                                                        StringBuilder sb3 = new StringBuilder();
                                                                        c = 0;
                                                                        sb3.append((Object) string4.subSequence(0, 20));
                                                                        sb3.append("...");
                                                                        string4 = sb3.toString();
                                                                    } else {
                                                                        c = 0;
                                                                    }
                                                                    int i5 = R.string.NotificationActionPinnedText;
                                                                    String title3 = getTitle(chat);
                                                                    Object[] objArr = new Object[3];
                                                                    objArr[c] = title;
                                                                    objArr[1] = string4;
                                                                    objArr[2] = title3;
                                                                    pluralString = LocaleController.formatString(i5, objArr);
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        MessageObject messageObject3 = messageObject.replyMessageObject;
                                                        if (messageObject3 == null) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                                                        } else if (messageObject3.isMusic()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedMusicChannel, getTitle(chat));
                                                        } else if (messageObject3.isVideo()) {
                                                            pluralString = TextUtils.isEmpty(messageObject3.messageOwner.message) ? LocaleController.formatString(R.string.NotificationActionPinnedVideoChannel, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📹 " + messageObject3.messageOwner.message);
                                                        } else if (messageObject3.isGif()) {
                                                            pluralString = TextUtils.isEmpty(messageObject3.messageOwner.message) ? LocaleController.formatString(R.string.NotificationActionPinnedGifChannel, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🎬 " + messageObject3.messageOwner.message);
                                                        } else if (messageObject3.isVoice()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedVoiceChannel, getTitle(chat));
                                                        } else if (messageObject3.isRoundVideo()) {
                                                            pluralString = LocaleController.formatString(R.string.NotificationActionPinnedRoundChannel, getTitle(chat));
                                                        } else if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                                                            String stickerEmoji3 = messageObject3.getStickerEmoji();
                                                            pluralString = stickerEmoji3 != null ? LocaleController.formatString(R.string.NotificationActionPinnedStickerEmojiChannel, getTitle(chat), stickerEmoji3) : LocaleController.formatString(R.string.NotificationActionPinnedStickerChannel, getTitle(chat));
                                                        } else {
                                                            TLRPC.Message message6 = messageObject3.messageOwner;
                                                            TLRPC.MessageMedia messageMedia3 = message6.media;
                                                            if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                                                                pluralString = TextUtils.isEmpty(message6.message) ? LocaleController.formatString(R.string.NotificationActionPinnedFileChannel, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, getTitle(chat), "📎 " + messageObject3.messageOwner.message);
                                                            } else if ((messageMedia3 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia3 instanceof TLRPC.TL_messageMediaVenue)) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGeoChannel, getTitle(chat));
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaGeoLive) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGeoLiveChannel, getTitle(chat));
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaContact) {
                                                                TLRPC.TL_messageMediaContact tL_messageMediaContact3 = (TLRPC.TL_messageMediaContact) messageObject.messageOwner.media;
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedContactChannel2, getTitle(chat), ContactsController.formatName(tL_messageMediaContact3.first_name, tL_messageMediaContact3.last_name));
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                                                                TLRPC.TL_messageMediaPoll tL_messageMediaPoll2 = (TLRPC.TL_messageMediaPoll) messageMedia3;
                                                                pluralString = tL_messageMediaPoll2.poll.quiz ? LocaleController.formatString(R.string.NotificationActionPinnedQuizChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text) : LocaleController.formatString(R.string.NotificationActionPinnedPollChannel2, getTitle(chat), tL_messageMediaPoll2.poll.question.text);
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaToDo) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedTodoChannel2, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia3).todo.title.text);
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                                                                pluralString = TextUtils.isEmpty(message6.message) ? LocaleController.formatString(R.string.NotificationActionPinnedPhotoChannel, getTitle(chat)) : LocaleController.formatString(R.string.NotificationActionPinnedTextChannel, getTitle(chat), "🖼 " + messageObject3.messageOwner.message);
                                                            } else if (messageMedia3 instanceof TLRPC.TL_messageMediaGame) {
                                                                pluralString = LocaleController.formatString(R.string.NotificationActionPinnedGameChannel, getTitle(chat));
                                                            } else {
                                                                CharSequence charSequence2 = messageObject3.messageText;
                                                                if (charSequence2 == null || charSequence2.length() <= 0) {
                                                                    pluralString = LocaleController.formatString(R.string.NotificationActionPinnedNoTextChannel, getTitle(chat));
                                                                } else {
                                                                    CharSequence string5 = messageObject3.messageText;
                                                                    if (string5.length() > 20) {
                                                                        StringBuilder sb4 = new StringBuilder();
                                                                        c2 = 0;
                                                                        sb4.append((Object) string5.subSequence(0, 20));
                                                                        sb4.append("...");
                                                                        string5 = sb4.toString();
                                                                    } else {
                                                                        c2 = 0;
                                                                    }
                                                                    int i6 = R.string.NotificationActionPinnedTextChannel;
                                                                    String title4 = getTitle(chat);
                                                                    Object[] objArr2 = new Object[2];
                                                                    objArr2[c2] = title4;
                                                                    objArr2[1] = string5;
                                                                    pluralString = LocaleController.formatString(i6, objArr2);
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else if (messageAction3 instanceof TLRPC.TL_messageActionGameScore) {
                                                    pluralString = messageObject.messageText.toString();
                                                } else if (messageAction3 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                                    String str7 = ((TLRPC.TL_messageActionSetChatTheme) messageAction3).emoticon;
                                                    pluralString = TextUtils.isEmpty(str7) ? j == clientUserId ? LocaleController.formatString(R.string.ChatThemeDisabledYou, new Object[0]) : LocaleController.formatString("ChatThemeDisabled", R.string.ChatThemeDisabled, title, str7) : j == clientUserId ? LocaleController.formatString(R.string.ChatThemeChangedYou, str7) : LocaleController.formatString(R.string.ChatThemeChangedTo, title, str7);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else if (!ChatObject.isChannel(chat) || chat.megagroup) {
                        if (messageObject.isMediaEmpty()) {
                            pluralString = (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(R.string.NotificationMessageGroupNoText, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), messageObject.messageOwner.message);
                        } else if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                            pluralString = LocaleController.formatPluralString("NotificationChatMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, title, getTitle(chat));
                        } else {
                            TLRPC.Message message7 = messageObject.messageOwner;
                            if (message7.media instanceof TLRPC.TL_messageMediaPhoto) {
                                pluralString = (z || TextUtils.isEmpty(message7.message)) ? LocaleController.formatString(R.string.NotificationMessageGroupPhoto, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), "🖼 " + messageObject.messageOwner.message);
                            } else if (messageObject.isVideo()) {
                                pluralString = (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(R.string.NotificationMessageGroupVideo, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), "📹 " + messageObject.messageOwner.message);
                            } else if (messageObject.isVoice()) {
                                pluralString = LocaleController.formatString(R.string.NotificationMessageGroupAudio, title, getTitle(chat));
                            } else if (messageObject.isRoundVideo()) {
                                pluralString = LocaleController.formatString(R.string.NotificationMessageGroupRound, title, getTitle(chat));
                            } else if (messageObject.isMusic()) {
                                pluralString = LocaleController.formatString(R.string.NotificationMessageGroupMusic, title, getTitle(chat));
                            } else {
                                TLRPC.MessageMedia messageMedia4 = messageObject.messageOwner.media;
                                if (messageMedia4 instanceof TLRPC.TL_messageMediaContact) {
                                    TLRPC.TL_messageMediaContact tL_messageMediaContact4 = (TLRPC.TL_messageMediaContact) messageMedia4;
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupContact2, title, getTitle(chat), ContactsController.formatName(tL_messageMediaContact4.first_name, tL_messageMediaContact4.last_name));
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaPoll) {
                                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll3 = (TLRPC.TL_messageMediaPoll) messageMedia4;
                                    pluralString = tL_messageMediaPoll3.poll.quiz ? LocaleController.formatString(R.string.NotificationMessageGroupQuiz2, title, getTitle(chat), tL_messageMediaPoll3.poll.question.text) : LocaleController.formatString(R.string.NotificationMessageGroupPoll2, title, getTitle(chat), tL_messageMediaPoll3.poll.question.text);
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaToDo) {
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupTodo2, title, getTitle(chat), ((TLRPC.TL_messageMediaToDo) messageMedia4).todo.title.text);
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaGame) {
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupGame, title, getTitle(chat), messageObject.messageOwner.media.game.title);
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaGiveaway) {
                                    TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway2 = (TLRPC.TL_messageMediaGiveaway) messageMedia4;
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway2.quantity), Integer.valueOf(tL_messageMediaGiveaway2.months));
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                    pluralString = LocaleController.formatString(R.string.BoostingGiveawayResults, new Object[0]);
                                } else if ((messageMedia4 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia4 instanceof TLRPC.TL_messageMediaVenue)) {
                                    pluralString = LocaleController.formatString("NotificationMessageGroupMap", R.string.NotificationMessageGroupMap, title, getTitle(chat));
                                } else if (messageMedia4 instanceof TLRPC.TL_messageMediaGeoLive) {
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupLiveLocation, title, getTitle(chat));
                                } else if (!(messageMedia4 instanceof TLRPC.TL_messageMediaDocument)) {
                                    pluralString = (z || TextUtils.isEmpty(messageObject.messageText)) ? LocaleController.formatString(R.string.NotificationMessageGroupNoText, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), messageObject.messageText);
                                } else if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                    String stickerEmoji4 = messageObject.getStickerEmoji();
                                    pluralString = stickerEmoji4 != null ? LocaleController.formatString(R.string.NotificationMessageGroupStickerEmoji, title, getTitle(chat), stickerEmoji4) : LocaleController.formatString(R.string.NotificationMessageGroupSticker, title, getTitle(chat));
                                } else if (messageObject.isGif()) {
                                    pluralString = (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(R.string.NotificationMessageGroupGif, title, getTitle(chat)) : LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), "🎬 " + messageObject.messageOwner.message);
                                } else if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupDocument, title, getTitle(chat));
                                } else {
                                    pluralString = LocaleController.formatString(R.string.NotificationMessageGroupText, title, getTitle(chat), "📎 " + messageObject.messageOwner.message);
                                }
                            }
                        }
                    } else if (messageObject.isMediaEmpty()) {
                        if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            String string6 = LocaleController.formatString(R.string.NotificationMessageText, title, messageObject.messageOwner.message);
                            zArr[0] = true;
                            return string6;
                        }
                        pluralString = LocaleController.formatString(R.string.ChannelMessageNoText, title);
                    } else if (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) {
                        pluralString = LocaleController.formatPluralString("NotificationChannelMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, getTitle(chat));
                    } else {
                        TLRPC.Message message8 = messageObject.messageOwner;
                        if (message8.media instanceof TLRPC.TL_messageMediaPhoto) {
                            if (!z && !TextUtils.isEmpty(message8.message)) {
                                String string7 = LocaleController.formatString(R.string.NotificationMessageText, title, "🖼 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return string7;
                            }
                            pluralString = LocaleController.formatString(R.string.ChannelMessagePhoto, title);
                        } else if (messageObject.isVideo()) {
                            if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                String string8 = LocaleController.formatString(R.string.NotificationMessageText, title, "📹 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return string8;
                            }
                            pluralString = LocaleController.formatString(R.string.ChannelMessageVideo, title);
                        } else if (messageObject.isVoice()) {
                            pluralString = LocaleController.formatString(R.string.ChannelMessageAudio, title);
                        } else if (messageObject.isRoundVideo()) {
                            pluralString = LocaleController.formatString(R.string.ChannelMessageRound, title);
                        } else if (messageObject.isMusic()) {
                            pluralString = LocaleController.formatString(R.string.ChannelMessageMusic, title);
                        } else {
                            TLRPC.MessageMedia messageMedia5 = messageObject.messageOwner.media;
                            if (messageMedia5 instanceof TLRPC.TL_messageMediaContact) {
                                TLRPC.TL_messageMediaContact tL_messageMediaContact5 = (TLRPC.TL_messageMediaContact) messageMedia5;
                                pluralString = LocaleController.formatString(R.string.ChannelMessageContact2, title, ContactsController.formatName(tL_messageMediaContact5.first_name, tL_messageMediaContact5.last_name));
                            } else if (messageMedia5 instanceof TLRPC.TL_messageMediaPoll) {
                                TLRPC.Poll poll2 = ((TLRPC.TL_messageMediaPoll) messageMedia5).poll;
                                pluralString = poll2.quiz ? LocaleController.formatString(R.string.ChannelMessageQuiz2, title, poll2.question.text) : LocaleController.formatString(R.string.ChannelMessagePoll2, title, poll2.question.text);
                            } else if (messageMedia5 instanceof TLRPC.TL_messageMediaToDo) {
                                pluralString = LocaleController.formatString(R.string.ChannelMessageTodo2, title, ((TLRPC.TL_messageMediaToDo) messageMedia5).todo.title.text);
                            } else if (messageMedia5 instanceof TLRPC.TL_messageMediaGiveaway) {
                                TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway3 = (TLRPC.TL_messageMediaGiveaway) messageMedia5;
                                pluralString = LocaleController.formatString(R.string.NotificationMessageChannelGiveaway, getTitle(chat), Integer.valueOf(tL_messageMediaGiveaway3.quantity), Integer.valueOf(tL_messageMediaGiveaway3.months));
                            } else if ((messageMedia5 instanceof TLRPC.TL_messageMediaGeo) || (messageMedia5 instanceof TLRPC.TL_messageMediaVenue)) {
                                pluralString = LocaleController.formatString(R.string.ChannelMessageMap, title);
                            } else if (messageMedia5 instanceof TLRPC.TL_messageMediaGeoLive) {
                                pluralString = LocaleController.formatString(R.string.ChannelMessageLiveLocation, title);
                            } else if (!(messageMedia5 instanceof TLRPC.TL_messageMediaDocument)) {
                                if (!z && !TextUtils.isEmpty(messageObject.messageText)) {
                                    String string9 = LocaleController.formatString(R.string.NotificationMessageText, title, messageObject.messageText);
                                    zArr[0] = true;
                                    return string9;
                                }
                                pluralString = LocaleController.formatString(R.string.ChannelMessageNoText, title);
                            } else if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                String stickerEmoji5 = messageObject.getStickerEmoji();
                                pluralString = stickerEmoji5 != null ? LocaleController.formatString(R.string.ChannelMessageStickerEmoji, title, stickerEmoji5) : LocaleController.formatString(R.string.ChannelMessageSticker, title);
                            } else if (messageObject.isGif()) {
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    String string10 = LocaleController.formatString(R.string.NotificationMessageText, title, "🎬 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string10;
                                }
                                pluralString = LocaleController.formatString(R.string.ChannelMessageGIF, title);
                            } else {
                                if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    String string11 = LocaleController.formatString(R.string.NotificationMessageText, title, "📎 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return string11;
                                }
                                pluralString = LocaleController.formatString(R.string.ChannelMessageDocument, title);
                            }
                        }
                    }
                }
                if (z5 && notificationsSettings.getBoolean(str, z2)) {
                    message = messageObject.messageOwner;
                    if (!(message instanceof TLRPC.TL_messageService)) {
                    }
                }
            } else {
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                pluralString = (!ChatObject.isChannel(chat) || chat.megagroup) ? (messageObject.type == 29 && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPaidMedia)) ? LocaleController.formatPluralString("NotificationMessagePaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) MessageObject.getMedia(messageObject)).stars_amount, title) : LocaleController.formatString(R.string.NotificationMessageGroupNoText, title, getTitle(chat)) : LocaleController.formatString(R.string.ChannelMessageNoText, title);
            }
            return pluralString;
        }
        str3 = null;
        return str3;
    }

    private String getTitle(TLRPC.Chat chat) {
        if (chat == null) {
            return null;
        }
        return chat.monoforum ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat) : chat.title;
    }

    private int getTotalAllUnreadCount() {
        int size;
        int dialogUnreadCount = 0;
        for (int i = 0; i < 4; i++) {
            if (UserConfig.getInstance(i).isClientActivated() && (SharedConfig.showNotificationsForAllAccounts || UserConfig.selectedAccount == i)) {
                NotificationsController notificationsController = getInstance(i);
                if (notificationsController.showBadgeNumber) {
                    if (notificationsController.showBadgeMessages) {
                        if (notificationsController.showBadgeMuted) {
                            try {
                                ArrayList arrayList = new ArrayList(MessagesController.getInstance(i).allDialogs);
                                int size2 = arrayList.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    TLRPC.Dialog dialog = (TLRPC.Dialog) arrayList.get(i2);
                                    if ((dialog == null || !DialogObject.isChatDialog(dialog.id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog.id)))) && dialog != null) {
                                        dialogUnreadCount += MessagesController.getInstance(i).getDialogUnreadCount(dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                            dialogUnreadCount += size;
                        }
                    } else if (notificationsController.showBadgeMuted) {
                        try {
                            int size3 = MessagesController.getInstance(i).allDialogs.size();
                            for (int i3 = 0; i3 < size3; i3++) {
                                TLRPC.Dialog dialog2 = MessagesController.getInstance(i).allDialogs.get(i3);
                                if ((!DialogObject.isChatDialog(dialog2.id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-dialog2.id)))) && MessagesController.getInstance(i).getDialogUnreadCount(dialog2) != 0) {
                                    dialogUnreadCount++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.e((Throwable) e2, false);
                        }
                    } else {
                        size = notificationsController.pushDialogs.size();
                        dialogUnreadCount += size;
                    }
                }
            }
        }
        return dialogUnreadCount;
    }

    private boolean isEmptyVibration(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return false;
        }
        for (long j : jArr) {
            if (j != 0) {
                return false;
            }
        }
        return true;
    }

    private boolean isPersonalMessage(MessageObject messageObject) {
        TLRPC.MessageAction messageAction;
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.Peer peer = message.peer_id;
        return (peer != null && peer.chat_id == 0 && peer.channel_id == 0 && ((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty))) || messageObject.isStoryReactionPush;
    }

    private boolean isSilentMessage(MessageObject messageObject) {
        return messageObject.messageOwner.silent || messageObject.isReactionPush;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$1() {
        this.openedDialogId = 0L;
        this.openedTopicId = 0L;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.pushMessages.clear();
        this.pushMessagesDict.clear();
        this.fcmRandomMessagesDict.clear();
        this.pushDialogs.clear();
        this.wearNotificationsIds.clear();
        this.lastWearNotifiedMessageId.clear();
        this.openedInBubbleDialogs.clear();
        this.delayedPushMessages.clear();
        this.notifyCheck = false;
        this.lastBadgeCount = 0;
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        dismissNotification();
        setBadge(getTotalAllUnreadCount());
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        editorEdit.clear();
        editorEdit.commit();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                systemNotificationManager.deleteNotificationChannelGroup("channels" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("groups" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("private" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("stories" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("other" + this.currentAccount);
                String str = this.currentAccount + "channel";
                List notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                for (int i = 0; i < size; i++) {
                    String id = NotificationsController$$ExternalSyntheticApiModelOutline13.m(notificationChannels.get(i)).getId();
                    if (id.startsWith(str)) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(id);
                        } catch (Exception e2) {
                            FileLog.e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllNotificationChannels$41() {
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            Map<String, ?> all = notificationsSettings.getAll();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith("org.telegram.key")) {
                    if (!key.endsWith("_s")) {
                        String str = (String) entry.getValue();
                        systemNotificationManager.deleteNotificationChannel(str);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("delete all channel " + str);
                        }
                    }
                    editorEdit.remove(key);
                }
            }
            editorEdit.commit();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$dismissNotification$35() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$5(ArrayList arrayList) {
        this.popupReplyMessages = arrayList;
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupNotificationActivity.class);
        intent.putExtra("force", true);
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setFlags(268763140);
        ApplicationLoader.applicationContext.startActivity(intent);
        ApplicationLoader.applicationContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$6() {
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            TLRPC.Message message = messageObject.messageOwner;
            if ((!message.mentioned || !(message.action instanceof TLRPC.TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup())) {
                arrayList.add(0, messageObject);
            }
        }
        if (arrayList.isEmpty() || AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$5(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideNotifications$34() {
        notificationManager.cancel(this.notificationId);
        this.lastWearNotifiedMessageId.clear();
        for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
            notificationManager.cancel(((Integer) this.wearNotificationsIds.valueAt(i)).intValue());
        }
        this.wearNotificationsIds.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadRoundAvatar$43(Canvas canvas) {
        Path path = new Path();
        path.setFillType(Path.FillType.INVERSE_EVEN_ODD);
        int width = canvas.getWidth();
        float f = width / 2;
        path.addRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, canvas.getHeight(), f, f, Path.Direction.CW);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        canvas.drawPath(path, paint);
        return -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadRoundAvatar$44(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoder.setPostProcessor(new PostProcessor() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda34
            @Override // android.graphics.PostProcessor
            public final int onPostProcess(Canvas canvas) {
                return NotificationsController.lambda$loadRoundAvatar$43(canvas);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadTopicsNotificationsExceptions$50(Consumer consumer, HashSet hashSet) {
        if (consumer != null) {
            consumer.r(hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopicsNotificationsExceptions$51(long j, final Consumer consumer) {
        final HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, ?>> it = MessagesController.getNotificationsSettings(this.currentAccount).getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            if (key.startsWith(NotificationsSettingsFacade.PROPERTY_NOTIFY + j)) {
                Integer num = Utilities.parseInt((CharSequence) key.replace(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, ""));
                int iIntValue = num.intValue();
                if (iIntValue != 0 && getMessagesController().isDialogMuted(j, iIntValue) != getMessagesController().isDialogMuted(j, 0L)) {
                    hashSet.add(num);
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.lambda$loadTopicsNotificationsExceptions$50(consumer, hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("delay reached");
        }
        if (!this.delayedPushMessages.isEmpty()) {
            showOrUpdateNotification(true);
            this.delayedPushMessages.clear();
        }
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playInChatSound$36(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playInChatSound$37() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundPlay) <= 500) {
            return;
        }
        try {
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda42
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.lambda$playInChatSound$36(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundIn == 0 && !this.soundInLoaded) {
                this.soundInLoaded = true;
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, R.raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playOutChatSound$45(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playOutChatSound$46() {
        try {
            if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundOutPlay) <= 100) {
                return;
            }
            this.lastSoundOutPlay = SystemClock.elapsedRealtime();
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda23
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.lambda$playOutChatSound$45(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundOut == 0 && !this.soundOutLoaded) {
                this.soundOutLoaded = true;
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, R.raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDeleteStory$14(long j, int i) {
        StoryNotification storyNotification = (StoryNotification) this.storyPushMessagesDict.get(j);
        if (storyNotification != null) {
            storyNotification.dateByIds.remove(Integer.valueOf(i));
            if (!storyNotification.dateByIds.isEmpty()) {
                getMessagesStorage().putStoryPushMessage(storyNotification);
                return;
            }
            this.storyPushMessagesDict.remove(j);
            this.storyPushMessages.remove(storyNotification);
            getMessagesStorage().deleteStoryPushMessage(j);
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$26(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$27(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052 A[PHI: r0
      0x0052: PHI (r0v16 int) = (r0v15 int), (r0v41 int) binds: [B:6:0x002f, B:14:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processDialogsUpdateRead$28(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        int iIntValue;
        boolean z;
        boolean zIsGlobalNotificationsEnabled;
        int i;
        int iIntValue2;
        int i2;
        Integer num;
        int i3 = this.total_unread_count;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        int i4 = 0;
        while (true) {
            if (i4 >= longSparseIntArray.size()) {
                break;
            }
            long jKeyAt = longSparseIntArray.keyAt(i4);
            Integer num2 = (Integer) this.pushDialogs.get(jKeyAt);
            int i5 = longSparseIntArray.get(jKeyAt);
            if (DialogObject.isChatDialog(jKeyAt)) {
                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-jKeyAt));
                if (chat == null || chat.min || ChatObject.isNotInChat(chat)) {
                    i5 = 0;
                }
                if (chat != null) {
                    z = chat.forum;
                    iIntValue = i5;
                }
            } else {
                iIntValue = i5;
                z = false;
            }
            if (z) {
                zIsGlobalNotificationsEnabled = true;
            } else {
                int notifyOverride = getNotifyOverride(notificationsSettings, jKeyAt, 0L);
                if (notifyOverride == -1) {
                    zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(jKeyAt, false, false);
                } else if (notifyOverride == 2) {
                    zIsGlobalNotificationsEnabled = false;
                }
            }
            if (this.notifyCheck && !zIsGlobalNotificationsEnabled && (num = (Integer) this.pushDialogsOverrideMention.get(jKeyAt)) != null && num.intValue() != 0) {
                iIntValue = num.intValue();
                zIsGlobalNotificationsEnabled = true;
            }
            if (iIntValue == 0) {
                this.smartNotificationsDialogs.remove(jKeyAt);
            }
            if (iIntValue >= 0) {
                if ((zIsGlobalNotificationsEnabled || iIntValue == 0) && num2 != null) {
                    if (getMessagesController().isForum(jKeyAt)) {
                        i = this.total_unread_count;
                        iIntValue2 = num2.intValue() > 0 ? 1 : 0;
                    } else {
                        i = this.total_unread_count;
                        iIntValue2 = num2.intValue();
                    }
                    this.total_unread_count = i - iIntValue2;
                }
                if (iIntValue == 0) {
                    this.pushDialogs.remove(jKeyAt);
                    this.pushDialogsOverrideMention.remove(jKeyAt);
                    int i6 = 0;
                    while (i6 < this.pushMessages.size()) {
                        MessageObject messageObject = this.pushMessages.get(i6);
                        if (!messageObject.messageOwner.from_scheduled && messageObject.getDialogId() == jKeyAt && !messageObject.isStoryReactionPush) {
                            if (isPersonalMessage(messageObject)) {
                                this.personalCount--;
                            }
                            this.pushMessages.remove(i6);
                            i6--;
                            this.delayedPushMessages.remove(messageObject);
                            long j = messageObject.messageOwner.peer_id.channel_id;
                            long j2 = j != 0 ? -j : 0L;
                            SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(j2);
                            if (sparseArray != null) {
                                sparseArray.remove(messageObject.getId());
                                if (sparseArray.size() == 0) {
                                    this.pushMessagesDict.remove(j2);
                                }
                            }
                            arrayList.add(messageObject);
                        }
                        i6++;
                    }
                } else if (zIsGlobalNotificationsEnabled) {
                    if (getMessagesController().isForum(jKeyAt)) {
                        i2 = this.total_unread_count + (iIntValue <= 0 ? 0 : 1);
                    } else {
                        i2 = this.total_unread_count + iIntValue;
                    }
                    this.total_unread_count = i2;
                    this.pushDialogs.put(jKeyAt, Integer.valueOf(iIntValue));
                }
            } else if (num2 != null) {
                iIntValue = num2.intValue() + iIntValue;
                if (zIsGlobalNotificationsEnabled) {
                    if (getMessagesController().isForum(jKeyAt)) {
                    }
                    this.total_unread_count = i - iIntValue2;
                    if (iIntValue == 0) {
                    }
                } else {
                    if (getMessagesController().isForum(jKeyAt)) {
                    }
                    this.total_unread_count = i - iIntValue2;
                    if (iIntValue == 0) {
                    }
                }
            }
            i4++;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$26(arrayList);
                }
            });
        }
        if (i3 != this.total_unread_count) {
            if (this.notifyCheck) {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            } else {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            }
            final int size = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDialogsUpdateRead$27(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processEditedMessages$21(LongSparseArray longSparseArray) {
        long dialogId;
        int size = longSparseArray.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            longSparseArray.keyAt(i);
            ArrayList arrayList = (ArrayList) longSparseArray.valueAt(i);
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                if (messageObject.isStoryReactionPush) {
                    dialogId = messageObject.getDialogId();
                } else {
                    long j = messageObject.messageOwner.peer_id.channel_id;
                    dialogId = j != 0 ? -j : 0L;
                }
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(dialogId);
                if (sparseArray == null) {
                    break;
                }
                MessageObject messageObject2 = (MessageObject) sparseArray.get(messageObject.getId());
                if (messageObject2 != null && (messageObject2.isReactionPush || messageObject2.isStoryReactionPush)) {
                    messageObject2 = null;
                }
                if (messageObject2 != null) {
                    sparseArray.put(messageObject.getId(), messageObject);
                    int iIndexOf = this.pushMessages.indexOf(messageObject2);
                    if (iIndexOf >= 0) {
                        this.pushMessages.set(iIndexOf, messageObject);
                    }
                    int iIndexOf2 = this.delayedPushMessages.indexOf(messageObject2);
                    if (iIndexOf2 >= 0) {
                        this.delayedPushMessages.set(iIndexOf2, messageObject);
                    }
                    z = true;
                }
            }
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$16() {
        boolean z = !this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteAllStoryPushMessages();
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$18(long j) {
        boolean z = !this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteStoryPushMessage(j);
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStoryReactions$17() {
        int i = 0;
        boolean z = false;
        while (i < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i);
            if (messageObject != null && messageObject.isStoryReactionPush) {
                this.pushMessages.remove(i);
                i--;
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                z = true;
            }
            i++;
        }
        getMessagesStorage().deleteAllStoryReactionPushMessages();
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$30(int i) {
        if (this.total_unread_count == 0) {
            this.popupMessages.clear();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$31(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, Collection collection) {
        long j;
        long j2;
        boolean zIsGlobalNotificationsEnabled;
        LongSparseArray longSparseArray2;
        int i;
        long dialogId;
        boolean zBooleanValue;
        TLRPC.MessageFwdHeader messageFwdHeader;
        SharedPreferences sharedPreferences;
        MessageObject messageObject;
        SparseArray sparseArray;
        long j3;
        long j4;
        int i2;
        TLRPC.Message message;
        boolean zIsGlobalNotificationsEnabled2;
        SparseArray sparseArray2;
        ArrayList arrayList3 = arrayList;
        this.pushDialogs.clear();
        this.pushMessages.clear();
        this.pushMessagesDict.clear();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        boolean z = false;
        this.total_unread_count = 0;
        this.personalCount = 0;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        LongSparseArray longSparseArray3 = new LongSparseArray();
        long j5 = 0;
        if (arrayList3 != null) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                TLRPC.Message message2 = (TLRPC.Message) arrayList3.get(i3);
                if (message2 != null && ((messageFwdHeader = message2.fwd_from) == null || !messageFwdHeader.imported)) {
                    TLRPC.MessageAction messageAction = message2.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionSetMessagesTTL) || (message2.silent && ((messageAction instanceof TLRPC.TL_messageActionContactSignUp) || (messageAction instanceof TLRPC.TL_messageActionUserJoined)))) {
                        i2 = i3;
                        sharedPreferences = notificationsSettings;
                    } else {
                        long j6 = message2.peer_id.channel_id;
                        long j7 = j6 != j5 ? -j6 : j5;
                        SparseArray sparseArray3 = (SparseArray) this.pushMessagesDict.get(j7);
                        if (sparseArray3 == null || sparseArray3.indexOfKey(message2.id) < 0) {
                            MessageObject messageObject2 = new MessageObject(this.currentAccount, message2, z, z);
                            if (isPersonalMessage(messageObject2)) {
                                this.personalCount++;
                            }
                            sharedPreferences = notificationsSettings;
                            long dialogId2 = messageObject2.getDialogId();
                            long topicId = MessageObject.getTopicId(this.currentAccount, messageObject2.messageOwner, getMessagesController().isForum(messageObject2));
                            long fromChatId = messageObject2.messageOwner.mentioned ? messageObject2.getFromChatId() : dialogId2;
                            int iIndexOfKey = longSparseArray3.indexOfKey(fromChatId);
                            if (iIndexOfKey < 0 || topicId != 0) {
                                messageObject = messageObject2;
                                sparseArray = sparseArray3;
                                j3 = dialogId2;
                                j4 = j7;
                                i2 = i3;
                                message = message2;
                                int notifyOverride = getNotifyOverride(sharedPreferences, fromChatId, topicId);
                                zIsGlobalNotificationsEnabled2 = notifyOverride == -1 ? isGlobalNotificationsEnabled(fromChatId, messageObject.isReactionPush, messageObject.isStoryReactionPush) : notifyOverride != 2;
                                longSparseArray3.put(fromChatId, Boolean.valueOf(zIsGlobalNotificationsEnabled2));
                            } else {
                                zIsGlobalNotificationsEnabled2 = ((Boolean) longSparseArray3.valueAt(iIndexOfKey)).booleanValue();
                                messageObject = messageObject2;
                                sparseArray = sparseArray3;
                                i2 = i3;
                                j3 = dialogId2;
                                j4 = j7;
                                message = message2;
                            }
                            if (zIsGlobalNotificationsEnabled2 && (fromChatId != this.openedDialogId || !ApplicationLoader.isScreenOn)) {
                                if (sparseArray == null) {
                                    sparseArray2 = new SparseArray();
                                    this.pushMessagesDict.put(j4, sparseArray2);
                                } else {
                                    sparseArray2 = sparseArray;
                                }
                                sparseArray2.put(message.id, messageObject);
                                appendMessage(messageObject);
                                if (j3 != fromChatId) {
                                    long j8 = j3;
                                    Integer num = (Integer) this.pushDialogsOverrideMention.get(j8);
                                    this.pushDialogsOverrideMention.put(j8, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                                }
                            }
                        }
                    }
                }
                i3 = i2 + 1;
                arrayList3 = arrayList;
                notificationsSettings = sharedPreferences;
                z = false;
                j5 = 0;
            }
        }
        SharedPreferences sharedPreferences2 = notificationsSettings;
        for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
            long jKeyAt = longSparseArray.keyAt(i4);
            int iIndexOfKey2 = longSparseArray3.indexOfKey(jKeyAt);
            if (iIndexOfKey2 >= 0) {
                zBooleanValue = ((Boolean) longSparseArray3.valueAt(iIndexOfKey2)).booleanValue();
            } else {
                int notifyOverride2 = getNotifyOverride(sharedPreferences2, jKeyAt, 0L);
                boolean zIsGlobalNotificationsEnabled3 = notifyOverride2 == -1 ? isGlobalNotificationsEnabled(jKeyAt, false, false) : notifyOverride2 != 2;
                longSparseArray3.put(jKeyAt, Boolean.valueOf(zIsGlobalNotificationsEnabled3));
                zBooleanValue = zIsGlobalNotificationsEnabled3;
            }
            if (zBooleanValue) {
                Integer num2 = (Integer) longSparseArray.valueAt(i4);
                int iIntValue = num2.intValue();
                this.pushDialogs.put(jKeyAt, num2);
                this.total_unread_count = getMessagesController().isForum(jKeyAt) ? this.total_unread_count + (iIntValue > 0 ? 1 : 0) : this.total_unread_count + iIntValue;
            }
        }
        if (arrayList2 != null) {
            int i5 = 0;
            while (i5 < arrayList2.size()) {
                MessageObject messageObject3 = (MessageObject) arrayList2.get(i5);
                int id = messageObject3.getId();
                if (this.pushMessagesDict.indexOfKey(id) < 0) {
                    if (isPersonalMessage(messageObject3)) {
                        this.personalCount++;
                    }
                    long dialogId3 = messageObject3.getDialogId();
                    long topicId2 = MessageObject.getTopicId(this.currentAccount, messageObject3.messageOwner, getMessagesController().isForum(messageObject3));
                    TLRPC.Message message3 = messageObject3.messageOwner;
                    long j9 = message3.random_id;
                    long fromChatId2 = message3.mentioned ? messageObject3.getFromChatId() : dialogId3;
                    int iIndexOfKey3 = longSparseArray3.indexOfKey(fromChatId2);
                    if (iIndexOfKey3 < 0 || topicId2 != 0) {
                        long j10 = fromChatId2;
                        j = j9;
                        int notifyOverride3 = getNotifyOverride(sharedPreferences2, j10, topicId2);
                        if (notifyOverride3 == -1) {
                            j2 = j10;
                            zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(j2, messageObject3.isReactionPush, messageObject3.isStoryReactionPush);
                        } else {
                            j2 = j10;
                            zIsGlobalNotificationsEnabled = notifyOverride3 != 2;
                        }
                        longSparseArray3.put(j2, Boolean.valueOf(zIsGlobalNotificationsEnabled));
                    } else {
                        j = j9;
                        zIsGlobalNotificationsEnabled = ((Boolean) longSparseArray3.valueAt(iIndexOfKey3)).booleanValue();
                        j2 = fromChatId2;
                    }
                    if (!zIsGlobalNotificationsEnabled || (j2 == this.openedDialogId && ApplicationLoader.isScreenOn)) {
                        longSparseArray2 = longSparseArray3;
                    } else {
                        if (id != 0) {
                            if (messageObject3.isStoryReactionPush) {
                                dialogId = messageObject3.getDialogId();
                            } else {
                                long j11 = messageObject3.messageOwner.peer_id.channel_id;
                                dialogId = j11 != 0 ? -j11 : 0L;
                            }
                            SparseArray sparseArray4 = (SparseArray) this.pushMessagesDict.get(dialogId);
                            if (sparseArray4 == null) {
                                sparseArray4 = new SparseArray();
                                this.pushMessagesDict.put(dialogId, sparseArray4);
                            }
                            sparseArray4.put(id, messageObject3);
                            longSparseArray2 = longSparseArray3;
                        } else {
                            longSparseArray2 = longSparseArray3;
                            long j12 = j;
                            if (j12 != 0) {
                                this.fcmRandomMessagesDict.put(j12, messageObject3);
                            }
                        }
                        appendMessage(messageObject3);
                        if (dialogId3 != j2) {
                            Integer num3 = (Integer) this.pushDialogsOverrideMention.get(dialogId3);
                            this.pushDialogsOverrideMention.put(dialogId3, Integer.valueOf(num3 == null ? 1 : num3.intValue() + 1));
                        }
                        Integer num4 = (Integer) this.pushDialogs.get(j2);
                        int iIntValue2 = num4 != null ? num4.intValue() + 1 : 1;
                        if (getMessagesController().isForum(j2)) {
                            if (num4 != null) {
                                this.total_unread_count -= num4.intValue() > 0 ? 1 : 0;
                            }
                            i = this.total_unread_count + (iIntValue2 > 0 ? 1 : 0);
                        } else {
                            if (num4 != null) {
                                this.total_unread_count -= num4.intValue();
                            }
                            i = this.total_unread_count + iIntValue2;
                        }
                        this.total_unread_count = i;
                        this.pushDialogs.put(j2, Integer.valueOf(iIntValue2));
                    }
                }
                i5++;
                longSparseArray3 = longSparseArray2;
            }
        }
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                StoryNotification storyNotification = (StoryNotification) it.next();
                long j13 = storyNotification.dialogId;
                StoryNotification storyNotification2 = (StoryNotification) this.storyPushMessagesDict.get(j13);
                if (storyNotification2 != null) {
                    storyNotification2.dateByIds.putAll(storyNotification.dateByIds);
                } else {
                    this.storyPushMessages.add(storyNotification);
                    this.storyPushMessagesDict.put(j13, storyNotification);
                }
            }
            Collections.sort(this.storyPushMessages, Comparator$CC.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda32
                @Override // j$.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    return ((NotificationsController.StoryNotification) obj).date;
                }
            }));
        }
        final int size = this.pushDialogs.size();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$30(size);
            }
        });
        showOrUpdateNotification(SystemClock.elapsedRealtime() / 1000 < 60);
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$23(ArrayList arrayList, int i) {
        this.popupMessages.addAll(0, arrayList);
        if (ApplicationLoader.mainInterfacePaused || !ApplicationLoader.isScreenOn) {
            if (i == 3 || ((i == 1 && ApplicationLoader.isScreenOn) || (i == 2 && !ApplicationLoader.isScreenOn))) {
                Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupNotificationActivity.class);
                intent.setFlags(268763140);
                try {
                    ApplicationLoader.applicationContext.startActivity(intent);
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$24(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processNewMessages$25(ArrayList arrayList, final ArrayList arrayList2, boolean z, boolean z2, CountDownLatch countDownLatch) {
        int i;
        int iIntValue;
        Integer num;
        boolean z3;
        long j;
        boolean z4;
        long j2;
        long dialogId;
        LongSparseArray longSparseArray;
        int i2;
        boolean z5;
        MessageObject messageObject;
        long fromChatId;
        long j3;
        long j4;
        LongSparseArray longSparseArray2;
        SparseArray sparseArray;
        long j5;
        long j6;
        boolean zIsGlobalNotificationsEnabled;
        long j7;
        SparseArray sparseArray2;
        String str;
        long j8;
        MessageObject messageObject2;
        ArrayList arrayList3 = arrayList;
        LongSparseArray longSparseArray3 = new LongSparseArray();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z6 = notificationsSettings.getBoolean("PinnedMessages", true);
        int iAddToPopupMessages = 0;
        int i3 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (i3 < arrayList.size()) {
            MessageObject messageObject3 = (MessageObject) arrayList3.get(i3);
            if (messageObject3.messageOwner == null) {
                if (MessageObject.isTopicActionMessage(messageObject3)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("skipped message because 1");
                    }
                    longSparseArray = longSparseArray3;
                    z3 = z6;
                    i2 = i3;
                    z5 = z7;
                } else if (messageObject3.isStoryPush) {
                    long jCurrentTimeMillis = messageObject3.messageOwner == null ? System.currentTimeMillis() : r0.date * 1000;
                    long dialogId2 = messageObject3.getDialogId();
                    int id = messageObject3.getId();
                    StoryNotification storyNotification = (StoryNotification) this.storyPushMessagesDict.get(dialogId2);
                    if (storyNotification != null) {
                        storyNotification.dateByIds.put(Integer.valueOf(id), new Pair<>(Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis + 86400000)));
                        boolean z11 = storyNotification.hidden;
                        boolean z12 = messageObject3.isStoryPushHidden;
                        if (z11 != z12) {
                            storyNotification.hidden = z12;
                            z10 = true;
                        }
                        storyNotification.date = storyNotification.getLeastDate();
                        getMessagesStorage().putStoryPushMessage(storyNotification);
                        z8 = true;
                    } else {
                        StoryNotification storyNotification2 = new StoryNotification(dialogId2, messageObject3.localName, id, jCurrentTimeMillis);
                        storyNotification2.hidden = messageObject3.isStoryPushHidden;
                        this.storyPushMessages.add(storyNotification2);
                        this.storyPushMessagesDict.put(dialogId2, storyNotification2);
                        getMessagesStorage().putStoryPushMessage(storyNotification2);
                        z7 = true;
                        z10 = true;
                    }
                    Collections.sort(this.storyPushMessages, Comparator$CC.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda24
                        @Override // j$.util.function.ToLongFunction
                        public final long applyAsLong(Object obj) {
                            return ((NotificationsController.StoryNotification) obj).date;
                        }
                    }));
                    longSparseArray2 = longSparseArray3;
                    z3 = z6;
                    i2 = i3;
                } else {
                    int id2 = messageObject3.getId();
                    if (messageObject3.isFcmMessage()) {
                        j = messageObject3.messageOwner.random_id;
                        z3 = z6;
                    } else {
                        z3 = z6;
                        j = 0;
                    }
                    long dialogId3 = messageObject3.getDialogId();
                    if (messageObject3.isFcmMessage()) {
                        z4 = messageObject3.localChannel;
                    } else if (DialogObject.isChatDialog(dialogId3)) {
                        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-dialogId3));
                        z4 = ChatObject.isChannel(chat) && !chat.megagroup;
                    }
                    if (messageObject3.isStoryReactionPush) {
                        long j9 = j;
                        dialogId = messageObject3.getDialogId();
                        j2 = j9;
                    } else {
                        j2 = j;
                        long j10 = messageObject3.messageOwner.peer_id.channel_id;
                        dialogId = j10 != 0 ? -j10 : 0L;
                    }
                    SparseArray sparseArray3 = (SparseArray) this.pushMessagesDict.get(dialogId);
                    MessageObject messageObject4 = sparseArray3 != null ? (MessageObject) sparseArray3.get(id2) : null;
                    MessageObject messageObject5 = messageObject4;
                    if (messageObject4 == null) {
                        i2 = i3;
                        z5 = z7;
                        long j11 = messageObject3.messageOwner.random_id;
                        if (j11 != 0) {
                            messageObject = (MessageObject) this.fcmRandomMessagesDict.get(j11);
                            if (messageObject != null) {
                                longSparseArray = longSparseArray3;
                                this.fcmRandomMessagesDict.remove(messageObject3.messageOwner.random_id);
                            } else {
                                longSparseArray = longSparseArray3;
                            }
                            if (messageObject == null) {
                                if (messageObject.isFcmMessage()) {
                                    if (sparseArray3 == null) {
                                        sparseArray3 = new SparseArray();
                                        this.pushMessagesDict.put(dialogId, sparseArray3);
                                    }
                                    sparseArray3.put(id2, messageObject3);
                                    int iIndexOf = this.pushMessages.indexOf(messageObject);
                                    if (iIndexOf >= 0) {
                                        this.pushMessages.set(iIndexOf, messageObject3);
                                        j8 = dialogId;
                                        messageObject2 = messageObject3;
                                        iAddToPopupMessages = addToPopupMessages(arrayList2, messageObject3, dialogId3, z4, notificationsSettings);
                                    } else {
                                        j8 = dialogId;
                                        messageObject2 = messageObject3;
                                    }
                                    if (z) {
                                        boolean z13 = messageObject2.localEdit;
                                        if (z13) {
                                            getMessagesStorage().putPushMessage(messageObject2);
                                        }
                                        z8 = z13;
                                    }
                                } else {
                                    j8 = dialogId;
                                }
                                if (BuildVars.LOGS_ENABLED) {
                                    str = "skipped message because old message with same dialog and message ids exist: did=" + j8 + ", mid=" + id2;
                                    FileLog.d(str);
                                }
                            } else {
                                long j12 = dialogId;
                                if (!z8) {
                                    if (z) {
                                        getMessagesStorage().putPushMessage(messageObject3);
                                    }
                                    long topicId = MessageObject.getTopicId(this.currentAccount, messageObject3.messageOwner, getMessagesController().isForum(messageObject3));
                                    if (dialogId3 == this.openedDialogId && ApplicationLoader.isScreenOn && !messageObject3.isStoryReactionPush) {
                                        if (!z) {
                                            playInChatSound();
                                        }
                                        if (BuildVars.LOGS_ENABLED) {
                                            str = "skipped message because chat is already opened (openedDialogId = " + this.openedDialogId + ")";
                                            FileLog.d(str);
                                        }
                                    } else {
                                        TLRPC.Message message = messageObject3.messageOwner;
                                        if (!message.mentioned) {
                                            fromChatId = dialogId3;
                                        } else if (z3 || !(message.action instanceof TLRPC.TL_messageActionPinMessage)) {
                                            fromChatId = messageObject3.getFromChatId();
                                        } else if (BuildVars.LOGS_ENABLED) {
                                            str = "skipped message because message is mention of pinned";
                                            FileLog.d(str);
                                        }
                                        if (isPersonalMessage(messageObject3)) {
                                            this.personalCount++;
                                        }
                                        DialogObject.isChatDialog(fromChatId);
                                        LongSparseArray longSparseArray4 = longSparseArray;
                                        int iIndexOfKey = longSparseArray4.indexOfKey(fromChatId);
                                        int i4 = iAddToPopupMessages;
                                        if (iIndexOfKey < 0 || topicId != 0) {
                                            j3 = dialogId3;
                                            j4 = j2;
                                            longSparseArray2 = longSparseArray4;
                                            long j13 = fromChatId;
                                            sparseArray = sparseArray3;
                                            boolean z14 = z4;
                                            j5 = j12;
                                            int notifyOverride = getNotifyOverride(notificationsSettings, fromChatId, topicId);
                                            if (notifyOverride == -1) {
                                                zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(j13, Boolean.valueOf(z14), messageObject3.isReactionPush, messageObject3.isStoryReactionPush);
                                                if (BuildVars.LOGS_ENABLED) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("NotificationsController: process new messages, isGlobalNotificationsEnabled(");
                                                    j6 = j13;
                                                    sb.append(j6);
                                                    sb.append(", ");
                                                    z4 = z14;
                                                    sb.append(z4);
                                                    sb.append(", ");
                                                    sb.append(messageObject3.isReactionPush);
                                                    sb.append(", ");
                                                    sb.append(messageObject3.isStoryReactionPush);
                                                    sb.append(") = ");
                                                    sb.append(zIsGlobalNotificationsEnabled);
                                                    FileLog.d(sb.toString());
                                                } else {
                                                    z4 = z14;
                                                    j6 = j13;
                                                }
                                            } else {
                                                z4 = z14;
                                                j6 = j13;
                                                zIsGlobalNotificationsEnabled = notifyOverride != 2;
                                            }
                                            longSparseArray2.put(j6, Boolean.valueOf(zIsGlobalNotificationsEnabled));
                                        } else {
                                            zIsGlobalNotificationsEnabled = ((Boolean) longSparseArray4.valueAt(iIndexOfKey)).booleanValue();
                                            j5 = j12;
                                            j3 = dialogId3;
                                            j4 = j2;
                                            longSparseArray2 = longSparseArray4;
                                            sparseArray = sparseArray3;
                                            j6 = fromChatId;
                                        }
                                        if (BuildVars.LOGS_ENABLED) {
                                            FileLog.d("NotificationsController: process new messages, value is " + zIsGlobalNotificationsEnabled + " (" + j6 + ", " + z4 + ", " + messageObject3.isReactionPush + ", " + messageObject3.isStoryReactionPush + ")");
                                        }
                                        if (zIsGlobalNotificationsEnabled) {
                                            if (z) {
                                                j7 = j6;
                                                iAddToPopupMessages = i4;
                                            } else {
                                                j7 = j6;
                                                iAddToPopupMessages = addToPopupMessages(arrayList2, messageObject3, j6, z4, notificationsSettings);
                                            }
                                            if (!z9) {
                                                z9 = messageObject3.messageOwner.from_scheduled;
                                            }
                                            this.delayedPushMessages.add(messageObject3);
                                            appendMessage(messageObject3);
                                            if (id2 != 0) {
                                                if (sparseArray == null) {
                                                    sparseArray2 = new SparseArray();
                                                    this.pushMessagesDict.put(j5, sparseArray2);
                                                } else {
                                                    sparseArray2 = sparseArray;
                                                }
                                                sparseArray2.put(id2, messageObject3);
                                            } else {
                                                long j14 = j4;
                                                if (j14 != 0) {
                                                    this.fcmRandomMessagesDict.put(j14, messageObject3);
                                                }
                                            }
                                            if (j3 != j7) {
                                                long j15 = j3;
                                                Integer num2 = (Integer) this.pushDialogsOverrideMention.get(j15);
                                                this.pushDialogsOverrideMention.put(j15, Integer.valueOf(num2 == null ? 1 : num2.intValue() + 1));
                                            }
                                        } else {
                                            j7 = j6;
                                            iAddToPopupMessages = i4;
                                        }
                                        if (messageObject3.isReactionPush) {
                                            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                                            sparseBooleanArray.put(id2, true);
                                            getMessagesController().checkUnreadReactions(j7, topicId, sparseBooleanArray);
                                        }
                                        z7 = true;
                                    }
                                } else if (BuildVars.LOGS_ENABLED) {
                                    str = "skipped message because edited";
                                    FileLog.d(str);
                                }
                            }
                        } else {
                            longSparseArray = longSparseArray3;
                        }
                    } else {
                        longSparseArray = longSparseArray3;
                        i2 = i3;
                        z5 = z7;
                    }
                    messageObject = messageObject5;
                    if (messageObject == null) {
                    }
                }
                z7 = z5;
                longSparseArray2 = longSparseArray;
            } else {
                if (!messageObject3.isImportedForward()) {
                    TLRPC.Message message2 = messageObject3.messageOwner;
                    TLRPC.MessageAction messageAction = message2.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionSetMessagesTTL) || (message2.silent && ((messageAction instanceof TLRPC.TL_messageActionContactSignUp) || (messageAction instanceof TLRPC.TL_messageActionUserJoined)))) {
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                }
                longSparseArray = longSparseArray3;
                z3 = z6;
                i2 = i3;
                z5 = z7;
                z7 = z5;
                longSparseArray2 = longSparseArray;
            }
            i3 = i2 + 1;
            arrayList3 = arrayList;
            longSparseArray3 = longSparseArray2;
            z6 = z3;
        }
        final int i5 = iAddToPopupMessages;
        boolean z15 = z7;
        if (z15) {
            this.notifyCheck = z2;
        }
        if (!arrayList2.isEmpty() && !AndroidUtilities.needShowPasscode() && !SharedConfig.isWaitingForPasscodeEnter) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$23(arrayList2, i5);
                }
            });
        }
        if (z || z9) {
            if (z8) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("NotificationsController processNewMessages: edited branch, showOrUpdateNotification " + this.notifyCheck);
                }
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else if (z15) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("NotificationsController processNewMessages: added branch");
                }
                MessageObject messageObject6 = (MessageObject) arrayList.get(0);
                long dialogId4 = messageObject6.getDialogId();
                long topicId2 = MessageObject.getTopicId(this.currentAccount, messageObject6.messageOwner, getMessagesController().isForum(dialogId4));
                Boolean boolValueOf = messageObject6.isFcmMessage() ? Boolean.valueOf(messageObject6.localChannel) : null;
                int i6 = this.total_unread_count;
                int notifyOverride2 = getNotifyOverride(notificationsSettings, dialogId4, topicId2);
                boolean zIsGlobalNotificationsEnabled2 = notifyOverride2 == -1 ? isGlobalNotificationsEnabled(dialogId4, boolValueOf, messageObject6.isReactionPush, messageObject6.isStoryReactionPush) : notifyOverride2 != 2;
                Integer num3 = (Integer) this.pushDialogs.get(dialogId4);
                if (num3 != null) {
                    i = 1;
                    iIntValue = num3.intValue() + 1;
                } else {
                    i = 1;
                    iIntValue = 1;
                }
                if (this.notifyCheck && !zIsGlobalNotificationsEnabled2 && (num = (Integer) this.pushDialogsOverrideMention.get(dialogId4)) != null && num.intValue() != 0) {
                    iIntValue = num.intValue();
                    zIsGlobalNotificationsEnabled2 = true;
                }
                if (zIsGlobalNotificationsEnabled2 && !messageObject6.isStoryPush) {
                    if (getMessagesController().isForum(dialogId4)) {
                        int i7 = this.total_unread_count - ((num3 == null || num3.intValue() <= 0) ? 0 : 1);
                        this.total_unread_count = i7;
                        if (iIntValue <= 0) {
                            i = 0;
                        }
                        this.total_unread_count = i7 + i;
                    } else {
                        if (num3 != null) {
                            this.total_unread_count -= num3.intValue();
                        }
                        this.total_unread_count += iIntValue;
                    }
                    this.pushDialogs.put(dialogId4, Integer.valueOf(iIntValue));
                }
                if (i6 != this.total_unread_count || z10) {
                    this.delayedPushMessages.clear();
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("NotificationsController processNewMessages: added branch: " + this.notifyCheck);
                    }
                    showOrUpdateNotification(this.notifyCheck);
                    final int size = this.pushDialogs.size();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$processNewMessages$24(size);
                        }
                    });
                }
                this.notifyCheck = false;
                if (this.showBadgeNumber) {
                    setBadge(getTotalAllUnreadCount());
                }
            }
        }
        if (z10) {
            updateStoryPushesRunnable();
        }
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadMessages$19(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processReadMessages$20(LongSparseIntArray longSparseIntArray, final ArrayList arrayList, long j, int i, int i2, boolean z) {
        long dialogId;
        long dialogId2;
        long j2 = 0;
        if (longSparseIntArray != null) {
            int i3 = 0;
            while (i3 < longSparseIntArray.size()) {
                long jKeyAt = longSparseIntArray.keyAt(i3);
                int i4 = longSparseIntArray.get(jKeyAt);
                int i5 = 0;
                while (i5 < this.pushMessages.size()) {
                    MessageObject messageObject = this.pushMessages.get(i5);
                    if (!messageObject.messageOwner.from_scheduled && messageObject.getDialogId() == jKeyAt && messageObject.getId() <= i4 && !messageObject.isStoryReactionPush) {
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        if (messageObject.isStoryReactionPush) {
                            dialogId2 = messageObject.getDialogId();
                        } else {
                            long j3 = messageObject.messageOwner.peer_id.channel_id;
                            dialogId2 = j3 != j2 ? -j3 : j2;
                        }
                        SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(dialogId2);
                        if (sparseArray != null) {
                            sparseArray.remove(messageObject.getId());
                            if (sparseArray.size() == 0) {
                                this.pushMessagesDict.remove(dialogId2);
                            }
                        }
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(i5);
                        i5--;
                    }
                    i5++;
                    j2 = 0;
                }
                i3++;
                j2 = 0;
            }
        }
        if (j != j2 && (i != 0 || i2 != 0)) {
            int i6 = 0;
            while (i6 < this.pushMessages.size()) {
                MessageObject messageObject2 = this.pushMessages.get(i6);
                if (messageObject2.getDialogId() == j && !messageObject2.isStoryReactionPush) {
                    if (i2 == 0) {
                        int id = messageObject2.getId();
                        if (z ? id == i || i < 0 : id <= i || i < 0) {
                        }
                    } else if (messageObject2.messageOwner.date <= i2) {
                        if (isPersonalMessage(messageObject2)) {
                            this.personalCount--;
                        }
                        if (messageObject2.isStoryReactionPush) {
                            dialogId = messageObject2.getDialogId();
                        } else {
                            long j4 = messageObject2.messageOwner.peer_id.channel_id;
                            dialogId = j4 != 0 ? -j4 : 0L;
                        }
                        SparseArray sparseArray2 = (SparseArray) this.pushMessagesDict.get(dialogId);
                        if (sparseArray2 != null) {
                            sparseArray2.remove(messageObject2.getId());
                            if (sparseArray2.size() == 0) {
                                this.pushMessagesDict.remove(dialogId);
                            }
                        }
                        this.pushMessages.remove(i6);
                        this.delayedPushMessages.remove(messageObject2);
                        arrayList.add(messageObject2);
                        i6--;
                    }
                }
                i6++;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadMessages$19(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadStories$15(long j) {
        StoryNotification storyNotification = (StoryNotification) this.storyPushMessagesDict.get(j);
        if (storyNotification != null) {
            this.storyPushMessagesDict.remove(j);
            this.storyPushMessages.remove(storyNotification);
            getMessagesStorage().deleteStoryPushMessage(j);
            showOrUpdateNotification(false);
            updateStoryPushesRunnable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSeenStoryReactions$13(int i) {
        int i2 = 0;
        boolean z = false;
        while (i2 < this.pushMessages.size()) {
            MessageObject messageObject = this.pushMessages.get(i2);
            if (messageObject.isStoryReactionPush && Math.abs(messageObject.getId()) == i) {
                this.pushMessages.remove(i2);
                SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(messageObject.getDialogId());
                if (sparseArray != null) {
                    sparseArray.remove(messageObject.getId());
                }
                if (sparseArray != null && sparseArray.size() <= 0) {
                    this.pushMessagesDict.remove(messageObject.getDialogId());
                }
                ArrayList<Integer> arrayList = new ArrayList<>();
                arrayList.add(Integer.valueOf(messageObject.getId()));
                getMessagesStorage().deletePushMessages(messageObject.getDialogId(), arrayList);
                i2--;
                z = true;
            }
            i2++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$10(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$11(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$12(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        int iIntValue;
        Integer num;
        int i = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        Integer num2 = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= longSparseIntArray.size()) {
                break;
            }
            long jKeyAt = longSparseIntArray.keyAt(i2);
            long j = -jKeyAt;
            long j2 = longSparseIntArray.get(jKeyAt);
            Integer num3 = (Integer) this.pushDialogs.get(j);
            if (num3 == null) {
                num3 = num2;
            }
            Integer numValueOf = num3;
            int i3 = 0;
            while (i3 < this.pushMessages.size()) {
                MessageObject messageObject = this.pushMessages.get(i3);
                if (messageObject.getDialogId() == j) {
                    num = num2;
                    if (messageObject.getId() <= j2) {
                        SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(j);
                        if (sparseArray != null) {
                            sparseArray.remove(messageObject.getId());
                            if (sparseArray.size() == 0) {
                                this.pushMessagesDict.remove(j);
                            }
                        }
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        i3--;
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                    }
                } else {
                    num = num2;
                }
                i3++;
                num2 = num;
            }
            Integer num4 = num2;
            if (numValueOf.intValue() <= 0) {
                this.smartNotificationsDialogs.remove(j);
                numValueOf = num4;
            }
            if (!numValueOf.equals(num3)) {
                if (getMessagesController().isForum(j)) {
                    int i4 = this.total_unread_count - (num3.intValue() > 0 ? 1 : 0);
                    this.total_unread_count = i4;
                    iIntValue = i4 + (numValueOf.intValue() <= 0 ? 0 : 1);
                } else {
                    int iIntValue2 = this.total_unread_count - num3.intValue();
                    this.total_unread_count = iIntValue2;
                    iIntValue = iIntValue2 + numValueOf.intValue();
                }
                this.total_unread_count = iIntValue;
                this.pushDialogs.put(j, numValueOf);
            }
            if (numValueOf.intValue() == 0) {
                this.pushDialogs.remove(j);
                this.pushDialogsOverrideMention.remove(j);
            }
            i2++;
            num2 = num4;
        }
        if (arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$10(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (this.notifyCheck) {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            } else {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            }
            final int size = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedHisoryFromNotifications$11(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$7(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$8(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$9(LongSparseArray longSparseArray, boolean z, final ArrayList arrayList) {
        long j;
        Integer num;
        int iIntValue;
        int iIntValue2;
        LongSparseArray longSparseArray2 = longSparseArray;
        int i = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        int i2 = 0;
        while (i2 < longSparseArray.size()) {
            long jKeyAt = longSparseArray2.keyAt(i2);
            SparseArray sparseArray = (SparseArray) this.pushMessagesDict.get(jKeyAt);
            if (sparseArray != null) {
                ArrayList arrayList2 = (ArrayList) longSparseArray2.get(jKeyAt);
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    int iIntValue3 = ((Integer) arrayList2.get(i3)).intValue();
                    MessageObject messageObject = (MessageObject) sparseArray.get(iIntValue3);
                    if (messageObject == null || messageObject.isStoryReactionPush || (z && !messageObject.isReactionPush)) {
                        j = jKeyAt;
                    } else {
                        j = jKeyAt;
                        long dialogId = messageObject.getDialogId();
                        Integer num2 = (Integer) this.pushDialogs.get(dialogId);
                        if (num2 == null) {
                            num2 = 0;
                        }
                        int iIntValue4 = num2.intValue() - 1;
                        Integer numValueOf = Integer.valueOf(iIntValue4);
                        if (iIntValue4 <= 0) {
                            this.smartNotificationsDialogs.remove(dialogId);
                            num = 0;
                        } else {
                            num = numValueOf;
                        }
                        if (!num.equals(num2)) {
                            if (getMessagesController().isForum(dialogId)) {
                                iIntValue = this.total_unread_count - (num2.intValue() > 0 ? 1 : 0);
                                this.total_unread_count = iIntValue;
                                iIntValue2 = num.intValue() > 0 ? 1 : 0;
                            } else {
                                iIntValue = this.total_unread_count - num2.intValue();
                                this.total_unread_count = iIntValue;
                                iIntValue2 = num.intValue();
                            }
                            this.total_unread_count = iIntValue + iIntValue2;
                            this.pushDialogs.put(dialogId, num);
                        }
                        if (num.intValue() == 0) {
                            this.pushDialogs.remove(dialogId);
                            this.pushDialogsOverrideMention.remove(dialogId);
                        }
                        sparseArray.remove(iIntValue3);
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                    }
                    i3++;
                    jKeyAt = j;
                }
                long j2 = jKeyAt;
                if (sparseArray.size() == 0) {
                    this.pushMessagesDict.remove(j2);
                }
            }
            i2++;
            longSparseArray2 = longSparseArray;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$7(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (this.notifyCheck) {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            } else {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            }
            final int size2 = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeDeletedMessagesFromNotifications$8(size2);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repeatNotificationMaybe$38() {
        int i = Calendar.getInstance().get(11);
        if (i < 11 || i > 22) {
            scheduleNotificationRepeat();
        } else {
            notificationManager.cancel(this.notificationId);
            showOrUpdateNotification(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastOnlineFromOtherDevice$4(int i) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("set last online from other device = " + i);
        }
        this.lastOnlineFromOtherDevice = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedDialogId$2(long j, long j2) {
        this.openedDialogId = j;
        this.openedTopicId = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedInBubble$3(boolean z, long j) {
        if (z) {
            this.openedInBubbleDialogs.add(Long.valueOf(j));
        } else {
            this.openedInBubbleDialogs.remove(Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showExtraNotifications$42(Uri uri, File file) {
        try {
            ApplicationLoader.applicationContext.revokeUriPermission(uri, 1);
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNotifications$33() {
        showOrUpdateNotification(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBadge$32() {
        setBadge(getTotalAllUnreadCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$47(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$48(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$49(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static Bitmap loadMultipleAvatars(ArrayList<Object> arrayList) {
        int i;
        Bitmap bitmap;
        Paint paint;
        Rect rect;
        float f;
        int i2;
        TextPaint textPaint;
        float size;
        float size2;
        float f2;
        float f3;
        float f4;
        float f5;
        Object obj;
        ArrayList<Object> arrayList2 = arrayList;
        if (Build.VERSION.SDK_INT < 28 || arrayList2 == null || arrayList.size() == 0) {
            return null;
        }
        int iDp = AndroidUtilities.dp(64.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        Paint paint2 = new Paint(3);
        Paint paint3 = new Paint(1);
        Rect rect2 = new Rect();
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        float f6 = 1.0f;
        float f7 = arrayList.size() == 1 ? 1.0f : arrayList.size() == 2 ? 0.65f : 0.5f;
        int i3 = 0;
        TextPaint textPaint2 = null;
        while (i3 < arrayList.size()) {
            float f8 = iDp;
            float f9 = (f6 - f7) * f8;
            try {
                size = ((arrayList.size() - 1) - i3) * (f9 / arrayList.size());
                size2 = i3 * (f9 / arrayList.size());
                f2 = f8 * f7;
                f3 = f2 / 2.0f;
                i = iDp;
                f4 = size + f3;
                f = f7;
                f5 = size2 + f3;
                bitmap = bitmapCreateBitmap;
                try {
                    canvas.drawCircle(f4, f5, AndroidUtilities.dp(2.0f) + f3, paint3);
                    obj = arrayList2.get(i3);
                    paint = paint3;
                } catch (Throwable unused) {
                    paint = paint3;
                }
            } catch (Throwable unused2) {
                i = iDp;
                bitmap = bitmapCreateBitmap;
                paint = paint3;
                rect = rect2;
                f = f7;
            }
            try {
            } catch (Throwable unused3) {
                rect = rect2;
                i2 = i3;
                textPaint = textPaint2;
                textPaint2 = textPaint;
                i3 = i2 + 1;
                arrayList2 = arrayList;
                rect2 = rect;
                iDp = i;
                f7 = f;
                bitmapCreateBitmap = bitmap;
                paint3 = paint;
                f6 = 1.0f;
            }
            if (obj instanceof File) {
                String absolutePath = ((File) arrayList2.get(i3)).getAbsolutePath();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(absolutePath, options);
                int i4 = (int) f2;
                options.inSampleSize = StoryEntry.calculateInSampleSize(options, i4, i4);
                options.inJustDecodeBounds = false;
                options.inDither = true;
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(absolutePath, options);
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
                matrix.reset();
                matrix.postScale(f2 / bitmapDecodeFile.getWidth(), f2 / bitmapDecodeFile.getHeight());
                matrix.postTranslate(size, size2);
                bitmapShader.setLocalMatrix(matrix);
                paint2.setShader(bitmapShader);
                canvas.drawCircle(f4, f5, f3, paint2);
                bitmapDecodeFile.recycle();
            } else {
                if (obj instanceof TLRPC.User) {
                    TLRPC.User user = (TLRPC.User) obj;
                    Rect rect3 = rect2;
                    try {
                        i2 = i3;
                        textPaint = textPaint2;
                        try {
                            try {
                                paint2.setShader(new LinearGradient(size, size2, size, size2 + f2, new int[]{Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(user.id)]), Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(user.id)])}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
                                canvas.drawCircle(f4, f5, f3, paint2);
                                if (textPaint == null) {
                                    TextPaint textPaint3 = new TextPaint(1);
                                    try {
                                        textPaint3.setTypeface(AndroidUtilities.bold());
                                        textPaint3.setTextSize(f8 * 0.25f);
                                        textPaint3.setColor(-1);
                                        textPaint2 = textPaint3;
                                    } catch (Throwable unused4) {
                                        textPaint2 = textPaint3;
                                        rect = rect3;
                                    }
                                } else {
                                    textPaint2 = textPaint;
                                }
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    AvatarDrawable.getAvatarSymbols(user.first_name, user.last_name, null, sb);
                                    String string = sb.toString();
                                    rect = rect3;
                                    try {
                                        textPaint2.getTextBounds(string, 0, string.length(), rect);
                                        canvas.drawText(string, (f4 - (rect.width() / 2.0f)) - rect.left, (f5 - (rect.height() / 2.0f)) - rect.top, textPaint2);
                                    } catch (Throwable unused5) {
                                    }
                                } catch (Throwable unused6) {
                                    rect = rect3;
                                }
                            } catch (Throwable unused7) {
                                rect = rect3;
                            }
                        } catch (Throwable unused8) {
                            rect = rect3;
                            textPaint2 = textPaint;
                            i3 = i2 + 1;
                            arrayList2 = arrayList;
                            rect2 = rect;
                            iDp = i;
                            f7 = f;
                            bitmapCreateBitmap = bitmap;
                            paint3 = paint;
                            f6 = 1.0f;
                        }
                    } catch (Throwable unused9) {
                        i2 = i3;
                        textPaint = textPaint2;
                    }
                    i3 = i2 + 1;
                    arrayList2 = arrayList;
                    rect2 = rect;
                    iDp = i;
                    f7 = f;
                    bitmapCreateBitmap = bitmap;
                    paint3 = paint;
                    f6 = 1.0f;
                }
                textPaint2 = textPaint;
                i3 = i2 + 1;
                arrayList2 = arrayList;
                rect2 = rect;
                iDp = i;
                f7 = f;
                bitmapCreateBitmap = bitmap;
                paint3 = paint;
                f6 = 1.0f;
            }
            rect = rect2;
            i2 = i3;
            textPaint = textPaint2;
            textPaint2 = textPaint;
            i3 = i2 + 1;
            arrayList2 = arrayList;
            rect2 = rect;
            iDp = i;
            f7 = f;
            bitmapCreateBitmap = bitmap;
            paint3 = paint;
            f6 = 1.0f;
        }
        return bitmapCreateBitmap;
    }

    public static Person.Builder loadRoundAvatar(File file, Person.Builder builder) {
        if (file != null && Build.VERSION.SDK_INT >= 28) {
            try {
                builder.setIcon(IconCompat.createWithBitmap(ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda67
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        NotificationsController.lambda$loadRoundAvatar$44(imageDecoder, imageInfo, source);
                    }
                })));
            } catch (Throwable unused) {
            }
        }
        return builder;
    }

    private Pair<Integer, Boolean> parseStoryPushes(ArrayList<String> arrayList, ArrayList<Object> arrayList2) {
        String userName;
        TLRPC.FileLocation fileLocation;
        int iMin = Math.min(3, this.storyPushMessages.size());
        boolean z = false;
        int size = 0;
        for (int i = 0; i < iMin; i++) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            size += storyNotification.dateByIds.size();
            z |= storyNotification.hidden;
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(storyNotification.dialogId));
            if (user == null && (user = getMessagesStorage().getUserSync(storyNotification.dialogId)) != null) {
                getMessagesController().putUser(user, true);
            }
            Object obj = null;
            if (user != null) {
                userName = UserObject.getUserName(user);
                TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                if (userProfilePhoto != null && (fileLocation = userProfilePhoto.photo_small) != null && fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                    File pathToAttach = getFileLoader().getPathToAttach(user.photo.photo_small, true);
                    if (!pathToAttach.exists()) {
                        pathToAttach = user.photo.photo_big != null ? getFileLoader().getPathToAttach(user.photo.photo_big, true) : null;
                        if (pathToAttach != null && !pathToAttach.exists()) {
                            pathToAttach = null;
                        }
                    }
                    if (pathToAttach != null) {
                        obj = pathToAttach;
                    }
                }
            } else {
                userName = storyNotification.localName;
                if (userName != null) {
                }
            }
            if (userName.length() > 50) {
                userName = userName.substring(0, 25) + "…";
            }
            arrayList.add(userName);
            if (obj == null && user != null) {
                arrayList2.add(user);
            } else if (obj != null) {
                arrayList2.add(obj);
            }
        }
        if (z) {
            arrayList2.clear();
        }
        return new Pair<>(Integer.valueOf(size), Boolean.valueOf(z));
    }

    private void playInChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            if (getNotifyOverride(getAccountInstance().getNotificationsSettings(), this.openedDialogId, this.openedTopicId) == 2) {
                return;
            }
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playInChatSound$37();
                }
            });
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    private String replaceSpoilers(MessageObject messageObject) {
        TLRPC.Message message;
        String str;
        if (messageObject == null || (message = messageObject.messageOwner) == null || (str = message.message) == null || message.entities == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        if (messageObject.didSpoilLoginCode()) {
            return sb.toString();
        }
        for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
            if (messageObject.messageOwner.entities.get(i) instanceof TLRPC.TL_messageEntitySpoiler) {
                TLRPC.TL_messageEntitySpoiler tL_messageEntitySpoiler = (TLRPC.TL_messageEntitySpoiler) messageObject.messageOwner.entities.get(i);
                for (int i2 = 0; i2 < tL_messageEntitySpoiler.length; i2++) {
                    int i3 = tL_messageEntitySpoiler.offset + i2;
                    char[] cArr = this.spoilerChars;
                    sb.setCharAt(i3, cArr[i2 % cArr.length]);
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resetNotificationSound(NotificationCompat.Builder builder, long j, long j2, String str, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) {
        String str2;
        String str3;
        FileLog.d("resetNotificationSound");
        Uri uri2 = Settings.System.DEFAULT_RINGTONE_URI;
        if (uri2 == null || uri == null || TextUtils.equals(uri2.toString(), uri.toString())) {
            return;
        }
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String string = uri2.toString();
        String string2 = LocaleController.getString(R.string.DefaultRingtone);
        if (z) {
            if (i3 == 2) {
                str2 = "ChannelSound";
            } else if (i3 == 0) {
                str2 = "GroupSound";
            } else if (i3 == 1) {
                str2 = "GlobalSound";
            } else if (i3 == 3) {
                str2 = "StoriesSound";
            } else {
                if (i3 == 4 || i3 == 5) {
                    editorEdit.putString("ReactionSound", string2);
                }
                if (i3 != 2) {
                    str3 = "ChannelSoundPath";
                } else if (i3 == 0) {
                    str3 = "GroupSoundPath";
                } else if (i3 == 1) {
                    str3 = "GlobalSoundPath";
                } else if (i3 == 3) {
                    str3 = "StoriesSoundPath";
                } else {
                    if (i3 == 4 || i3 == 5) {
                        editorEdit.putString("ReactionSound", string);
                    }
                    getNotificationsController().lambda$deleteNotificationChannelGlobal$40(i3, -1);
                }
                editorEdit.putString(str3, string);
                getNotificationsController().lambda$deleteNotificationChannelGlobal$40(i3, -1);
            }
            editorEdit.putString(str2, string2);
            if (i3 != 2) {
            }
            editorEdit.putString(str3, string);
            getNotificationsController().lambda$deleteNotificationChannelGlobal$40(i3, -1);
        } else {
            editorEdit.putString("sound_" + getSharedPrefKey(j, j2), string2);
            editorEdit.putString("sound_path_" + getSharedPrefKey(j, j2), string);
            lambda$deleteNotificationChannel$39(j, j2, -1);
        }
        editorEdit.commit();
        builder.setChannelId(validateChannelId(j, j2, str, jArr, i, uri2, i2, z, z2, z3, i3));
        notificationManager.notify(this.notificationId, builder.build());
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            DispatchQueue dispatchQueue = notificationsQueue;
            dispatchQueue.cancelRunnable(this.notificationDelayRunnable);
            dispatchQueue.postRunnable(this.notificationDelayRunnable, z ? 3000 : 1000);
        } catch (Exception e) {
            FileLog.e(e);
            showOrUpdateNotification(this.notifyCheck);
        }
    }

    private void scheduleNotificationRepeat() {
        try {
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationRepeat.class);
            intent.putExtra("currentAccount", this.currentAccount);
            PendingIntent service = PendingIntent.getService(ApplicationLoader.applicationContext, 0, intent, ConnectionsManager.FileTypeVideo);
            if (getAccountInstance().getNotificationsSettings().getInt("repeat_messages", 60) <= 0 || this.personalCount <= 0) {
                this.alarmManager.cancel(service);
            } else {
                this.alarmManager.set(2, SystemClock.elapsedRealtime() + (r1 * 60000), service);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    private void setBadge(int i) {
        if (this.lastBadgeCount == i) {
            return;
        }
        FileLog.d("setBadge " + i);
        this.lastBadgeCount = i;
        NotificationBadge.applyCount(i);
    }

    private void setNotificationChannel(Notification notification, NotificationCompat.Builder builder, boolean z) {
        builder.setChannelId(z ? OTHER_NOTIFICATIONS_CHANNEL : notification.getChannelId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0560 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0891  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x089e  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x08b7  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x08ec  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0909  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0a51 A[LOOP:5: B:406:0x0a49->B:408:0x0a51, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0a6d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0a76  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0a90  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0ab1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0c33  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0e9c  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0ea0  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x0ed3  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x0f2b  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x0f5b  */
    /* JADX WARN: Removed duplicated region for block: B:628:0x0f7e  */
    /* JADX WARN: Removed duplicated region for block: B:651:0x106a  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x1070  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x109c  */
    /* JADX WARN: Removed duplicated region for block: B:667:0x10e2  */
    /* JADX WARN: Removed duplicated region for block: B:670:0x1102  */
    /* JADX WARN: Removed duplicated region for block: B:673:0x1160  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x119d  */
    /* JADX WARN: Removed duplicated region for block: B:682:0x11c5  */
    /* JADX WARN: Removed duplicated region for block: B:683:0x11e7  */
    /* JADX WARN: Removed duplicated region for block: B:686:0x1203  */
    /* JADX WARN: Removed duplicated region for block: B:691:0x122a  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x125e  */
    /* JADX WARN: Removed duplicated region for block: B:698:0x12b7 A[Catch: Exception -> 0x12be, TRY_LEAVE, TryCatch #0 {Exception -> 0x12be, blocks: (B:696:0x1299, B:698:0x12b7), top: B:835:0x1299 }] */
    /* JADX WARN: Removed duplicated region for block: B:703:0x12c4  */
    /* JADX WARN: Removed duplicated region for block: B:709:0x12d3  */
    /* JADX WARN: Removed duplicated region for block: B:714:0x12ea  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x12f5  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x1345  */
    /* JADX WARN: Removed duplicated region for block: B:736:0x1348  */
    /* JADX WARN: Removed duplicated region for block: B:739:0x1389  */
    /* JADX WARN: Removed duplicated region for block: B:755:0x13b8  */
    /* JADX WARN: Removed duplicated region for block: B:758:0x13c0  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x13c6  */
    /* JADX WARN: Removed duplicated region for block: B:768:0x13df  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x1489  */
    /* JADX WARN: Removed duplicated region for block: B:790:0x1495  */
    /* JADX WARN: Removed duplicated region for block: B:839:0x0ea9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showExtraNotifications(NotificationCompat.Builder builder, String str, long j, long j2, String str2, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) throws IOException {
        String str3;
        String str4;
        NotificationCompat.Builder builder2;
        int i4;
        boolean z4;
        NotificationsController notificationsController;
        ArrayList arrayList;
        LongSparseArray longSparseArray;
        String str5;
        Notification notification;
        long j3;
        long j4;
        int id;
        ArrayList<StoryNotification> arrayList2;
        LongSparseArray longSparseArray2;
        boolean z5;
        LongSparseArray longSparseArray3;
        MessageObject messageObject;
        ArrayList arrayList3;
        SharedPreferences sharedPreferences;
        int i5;
        LongSparseArray longSparseArray4;
        ArrayList<StoryNotification> arrayList4;
        DialogKey dialogKey;
        long j5;
        String str6;
        long j6;
        Integer num;
        TLRPC.User user;
        String string;
        TLRPC.User user2;
        boolean z6;
        TLRPC.FileLocation fileLocation;
        TLRPC.Chat chat;
        boolean z7;
        boolean z8;
        String str7;
        boolean z9;
        NotificationsController notificationsController2;
        int i6;
        ArrayList arrayList5;
        int i7;
        Notification notification2;
        String str8;
        boolean z10;
        LongSparseArray longSparseArray5;
        SharedPreferences sharedPreferences2;
        ArrayList arrayList6;
        LongSparseArray longSparseArray6;
        long j7;
        TLRPC.Chat chat2;
        boolean z11;
        DialogKey dialogKey2;
        TLRPC.FileLocation fileLocation2;
        String str9;
        String str10;
        TLRPC.Chat chat3;
        TLRPC.User user3;
        boolean z12;
        String string2;
        boolean zCanSendPlain;
        TLRPC.User user4;
        StringBuilder sb;
        String str11;
        TLRPC.FileLocation fileLocation3;
        String userName;
        int i8;
        SharedPreferences sharedPreferences3;
        SharedPreferences sharedPreferences4;
        TLRPC.User user5;
        File file;
        Bitmap bitmap;
        File file2;
        Bitmap bitmap2;
        LongSparseArray longSparseArray7;
        TLRPC.Chat chat4;
        boolean z13;
        String str12;
        int i9;
        String str13;
        ?? r9;
        String string3;
        NotificationCompat.Action actionBuild;
        long j8;
        Person personBuild;
        NotificationCompat.MessagingStyle messagingStyle;
        int i10;
        NotificationCompat.Action action;
        MessageObject messageObject2;
        long j9;
        DialogKey dialogKey3;
        ArrayList arrayList7;
        String str14;
        String str15;
        ArrayList<StoryNotification> arrayList8;
        long j10;
        LongSparseArray longSparseArray8;
        String str16;
        Bitmap bitmapLoadMultipleAvatars;
        int i11;
        String str17;
        String str18;
        NotificationCompat.MessagingStyle messagingStyle2;
        boolean[] zArr;
        String str19;
        String str20;
        long senderId;
        long j11;
        String[] strArr;
        boolean z14;
        int i12;
        Person person;
        File pathToAttach;
        File file3;
        File pathToAttach2;
        int i13;
        TLRPC.ChatPhoto chatPhoto;
        TLRPC.FileLocation fileLocation4;
        TLRPC.UserProfilePhoto userProfilePhoto;
        TLRPC.FileLocation fileLocation5;
        TLRPC.UserProfilePhoto userProfilePhoto2;
        TLRPC.FileLocation fileLocation6;
        String str21;
        LongSparseArray longSparseArray9;
        String str22;
        String str23;
        TLRPC.ReplyMarkup replyMarkup;
        List messages;
        Uri uriForFile;
        final File file4;
        Context context;
        StringBuilder sb2;
        final Uri uriForFile2;
        Bitmap bitmapCreateScaledBitmap;
        Canvas canvas;
        int i14;
        DialogKey dialogKey4;
        long j12;
        ArrayList arrayList9;
        Bitmap bitmap3;
        NotificationCompat.Action action2;
        MessageObject messageObject3;
        String string4;
        NotificationCompat.Action action3;
        ArrayList<StoryNotification> arrayList10;
        long jMin;
        NotificationCompat.Builder category;
        MessageObject messageObject4;
        TLRPC.TL_keyboardButtonCopy tL_keyboardButtonCopy;
        TLRPC.User user6;
        int size;
        int i15;
        int i16;
        ArrayList arrayList11;
        TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow;
        TLRPC.Message message;
        TLRPC.ReplyMarkup replyMarkup2;
        LongSparseArray longSparseArray10;
        String pluralString;
        String string5;
        int i17;
        TLRPC.UserProfilePhoto userProfilePhoto3;
        TLRPC.FileLocation fileLocation7;
        Bitmap bitmap4;
        Bitmap bitmapDecodeFile;
        TLRPC.UserProfilePhoto userProfilePhoto4;
        FileLog.d("showExtraNotifications pushMessages.size()=" + this.pushMessages.size());
        int i18 = Build.VERSION.SDK_INT;
        if (i18 >= 26) {
            str3 = "%1$s: %2$s";
            i4 = -1;
            str4 = ".provider";
            builder2 = builder;
            builder2.setChannelId(validateChannelId(j, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
        } else {
            str3 = "%1$s: %2$s";
            str4 = ".provider";
            builder2 = builder;
            i4 = -1;
        }
        Notification notificationBuild = builder.build();
        if (i18 <= 19) {
            notificationManager.notify(this.notificationId, notificationBuild);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("show summary notification by SDK check");
                return;
            }
            return;
        }
        NotificationsController notificationsController3 = this;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        ArrayList arrayList12 = new ArrayList();
        if (!notificationsController3.storyPushMessages.isEmpty()) {
            arrayList12.add(new DialogKey(0L, 0L, true));
        }
        LongSparseArray longSparseArray11 = new LongSparseArray();
        for (int i19 = 0; i19 < notificationsController3.pushMessages.size(); i19++) {
            MessageObject messageObject5 = notificationsController3.pushMessages.get(i19);
            long dialogId = messageObject5.getDialogId();
            long topicId = MessageObject.getTopicId(notificationsController3.currentAccount, messageObject5.messageOwner, getMessagesController().isForum(messageObject5));
            int i20 = notificationsSettings.getInt("dismissDate" + dialogId, 0);
            if (messageObject5.isStoryPush || messageObject5.messageOwner.date > i20) {
                ArrayList arrayList13 = (ArrayList) longSparseArray11.get(dialogId);
                if (arrayList13 == null) {
                    ArrayList arrayList14 = new ArrayList();
                    longSparseArray11.put(dialogId, arrayList14);
                    FileLog.d("showExtraNotifications: sortedDialogs += " + dialogId);
                    arrayList12.add(new DialogKey(dialogId, topicId, false));
                    arrayList13 = arrayList14;
                }
                arrayList13.add(messageObject5);
            } else {
                FileLog.d("showExtraNotifications: dialog " + dialogId + " is skipped, message date (" + messageObject5.messageOwner.date + " <= " + i20 + ")");
            }
        }
        LongSparseArray longSparseArray12 = new LongSparseArray();
        for (int i21 = 0; i21 < notificationsController3.wearNotificationsIds.size(); i21++) {
            longSparseArray12.put(notificationsController3.wearNotificationsIds.keyAt(i21), (Integer) notificationsController3.wearNotificationsIds.valueAt(i21));
        }
        notificationsController3.wearNotificationsIds.clear();
        ArrayList arrayList15 = new ArrayList();
        int i22 = Build.VERSION.SDK_INT;
        if (i22 > 27) {
            z4 = arrayList12.size() > (notificationsController3.storyPushMessages.isEmpty() ? 1 : 2);
        }
        if (z4 && i22 >= 26) {
            checkOtherNotificationsChannel();
        }
        long clientUserId = getUserConfig().getClientUserId();
        boolean z15 = AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter;
        FileLog.d("showExtraNotifications: passcode=" + (SharedConfig.passcodeHash.length() > 0) + " waitingForPasscode=" + z15 + " selfUserId=" + clientUserId + " useSummaryNotification=" + z4);
        LongSparseArray longSparseArray13 = new LongSparseArray();
        int size2 = arrayList12.size();
        int i23 = 0;
        while (true) {
            if (i23 >= size2) {
                break;
            }
            int i24 = size2;
            if (arrayList15.size() >= 7) {
                FileLog.d("showExtraNotifications: break from holders, count over 7");
                break;
            }
            DialogKey dialogKey5 = (DialogKey) arrayList12.get(i23);
            ArrayList arrayList16 = arrayList15;
            int i25 = i23;
            if (dialogKey5.story) {
                ArrayList<StoryNotification> arrayList17 = new ArrayList<>();
                if (notificationsController3.storyPushMessages.isEmpty()) {
                    FileLog.d("showExtraNotifications: [" + dialogKey5.dialogId + "] continue; story but storyPushMessages is empty");
                    j7 = clientUserId;
                    longSparseArray5 = longSparseArray13;
                    z10 = z4;
                    z9 = z15;
                    longSparseArray6 = longSparseArray12;
                    longSparseArray3 = longSparseArray11;
                    arrayList6 = arrayList12;
                    sharedPreferences2 = notificationsSettings;
                    notification2 = notificationBuild;
                    notificationsController2 = notificationsController3;
                    i6 = i24;
                    arrayList5 = arrayList16;
                    i7 = i25;
                    str8 = str3;
                    i23 = i7 + 1;
                    arrayList15 = arrayList5;
                    size2 = i6;
                    z15 = z9;
                    arrayList12 = arrayList6;
                    z4 = z10;
                    notificationsSettings = sharedPreferences2;
                    longSparseArray11 = longSparseArray3;
                    clientUserId = j7;
                    longSparseArray12 = longSparseArray6;
                    str3 = str8;
                    longSparseArray13 = longSparseArray5;
                    notificationBuild = notification2;
                    notificationsController3 = notificationsController2;
                } else {
                    notification = notificationBuild;
                    str5 = "showExtraNotifications: [";
                    long j13 = notificationsController3.storyPushMessages.get(0).dialogId;
                    int iMax = 0;
                    for (Iterator<Integer> it = notificationsController3.storyPushMessages.get(0).dateByIds.keySet().iterator(); it.hasNext(); it = it) {
                        iMax = Math.max(iMax, it.next().intValue());
                    }
                    longSparseArray2 = longSparseArray13;
                    z5 = z4;
                    longSparseArray3 = longSparseArray11;
                    messageObject = null;
                    id = iMax;
                    j3 = 0;
                    arrayList2 = arrayList17;
                    j4 = j13;
                }
            } else {
                str5 = "showExtraNotifications: [";
                notification = notificationBuild;
                long j14 = dialogKey5.dialogId;
                j3 = dialogKey5.topicId;
                ArrayList<StoryNotification> arrayList18 = (ArrayList) longSparseArray11.get(j14);
                j4 = j14;
                id = ((MessageObject) arrayList18.get(0)).getId();
                arrayList2 = arrayList18;
                longSparseArray2 = longSparseArray13;
                z5 = z4;
                longSparseArray3 = longSparseArray11;
                messageObject = (MessageObject) arrayList18.get(0);
            }
            int iValueOf = (Integer) longSparseArray12.get(dialogKey5.dialogId);
            if (dialogKey5.story) {
                iValueOf = 2147483646;
                arrayList3 = arrayList12;
                sharedPreferences = notificationsSettings;
            } else {
                arrayList3 = arrayList12;
                sharedPreferences = notificationsSettings;
                long j15 = dialogKey5.dialogId;
                if (iValueOf == null) {
                    iValueOf = Integer.valueOf(((int) j15) + ((int) (j15 >> 32)));
                } else {
                    longSparseArray12.remove(j15);
                }
            }
            Integer num2 = iValueOf;
            int i26 = 0;
            for (int i27 = 0; i27 < arrayList2.size(); i27++) {
                if (i26 < ((MessageObject) arrayList2.get(i27)).messageOwner.date) {
                    i26 = ((MessageObject) arrayList2.get(i27)).messageOwner.date;
                }
            }
            if (dialogKey5.story) {
                TLRPC.User user7 = getMessagesController().getUser(Long.valueOf(j4));
                longSparseArray4 = longSparseArray12;
                if (notificationsController3.storyPushMessages.size() == 1) {
                    string = user7 != null ? UserObject.getFirstName(user7) : notificationsController3.storyPushMessages.get(0).localName;
                    i5 = i26;
                } else {
                    i5 = i26;
                    string = LocaleController.formatPluralString("Stories", notificationsController3.storyPushMessages.size(), new Object[0]);
                }
                if (user7 == null || (userProfilePhoto4 = user7.photo) == null || (fileLocation = userProfilePhoto4.photo_small) == null) {
                    arrayList4 = arrayList2;
                } else {
                    arrayList4 = arrayList2;
                    if (fileLocation.volume_id != 0 && fileLocation.local_id != 0) {
                        dialogKey = dialogKey5;
                        j5 = clientUserId;
                        str6 = "Stories";
                        j6 = j4;
                        z6 = false;
                    }
                    chat = null;
                    z7 = false;
                    z8 = false;
                    num = num2;
                    user2 = user7;
                }
                dialogKey = dialogKey5;
                j5 = clientUserId;
                str6 = "Stories";
                j6 = j4;
                z6 = false;
                fileLocation = null;
                chat = null;
                z7 = false;
                z8 = false;
                num = num2;
                user2 = user7;
            } else {
                i5 = i26;
                longSparseArray4 = longSparseArray12;
                arrayList4 = arrayList2;
                if (DialogObject.isEncryptedDialog(j4)) {
                    dialogKey = dialogKey5;
                    j5 = clientUserId;
                    str6 = "Stories";
                    j6 = j4;
                    num = num2;
                    if (j6 != globalSecretChatId) {
                        int encryptedChatId = DialogObject.getEncryptedChatId(j6);
                        TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(encryptedChatId));
                        if (encryptedChat == null) {
                            if (BuildVars.LOGS_ENABLED) {
                                str7 = "not found secret chat to show dialog notification " + encryptedChatId;
                                FileLog.w(str7);
                            }
                            z9 = z15;
                            notificationsController2 = notificationsController3;
                            i6 = i24;
                            arrayList5 = arrayList16;
                            i7 = i25;
                            notification2 = notification;
                            str8 = str3;
                            z10 = z5;
                            longSparseArray5 = longSparseArray2;
                            sharedPreferences2 = sharedPreferences;
                            arrayList6 = arrayList3;
                            longSparseArray6 = longSparseArray4;
                            j7 = j5;
                        } else {
                            user = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                            if (user == null) {
                                if (BuildVars.LOGS_ENABLED) {
                                    str7 = "not found secret chat user to show dialog notification " + encryptedChat.user_id;
                                    FileLog.w(str7);
                                }
                                z9 = z15;
                                notificationsController2 = notificationsController3;
                                i6 = i24;
                                arrayList5 = arrayList16;
                                i7 = i25;
                                notification2 = notification;
                                str8 = str3;
                                z10 = z5;
                                longSparseArray5 = longSparseArray2;
                                sharedPreferences2 = sharedPreferences;
                                arrayList6 = arrayList3;
                                longSparseArray6 = longSparseArray4;
                                j7 = j5;
                            }
                        }
                        i23 = i7 + 1;
                        arrayList15 = arrayList5;
                        size2 = i6;
                        z15 = z9;
                        arrayList12 = arrayList6;
                        z4 = z10;
                        notificationsSettings = sharedPreferences2;
                        longSparseArray11 = longSparseArray3;
                        clientUserId = j7;
                        longSparseArray12 = longSparseArray6;
                        str3 = str8;
                        longSparseArray13 = longSparseArray5;
                        notificationBuild = notification2;
                        notificationsController3 = notificationsController2;
                    } else {
                        user = null;
                    }
                    string = LocaleController.getString(R.string.SecretChatName);
                    user2 = user;
                    z6 = false;
                    fileLocation = null;
                    chat = null;
                    z7 = false;
                    z8 = false;
                } else {
                    if (messageObject == null || messageObject.isReactionPush || messageObject.isStoryReactionPush) {
                        j6 = j4;
                    } else {
                        j6 = j4;
                        boolean z16 = j6 != 777000;
                        if (DialogObject.isUserDialog(j6)) {
                            str6 = "Stories";
                            num = num2;
                            chat2 = getMessagesController().getChat(Long.valueOf(-j6));
                            if (chat2 != null) {
                                boolean z17 = chat2.megagroup;
                                z11 = ChatObject.isChannel(chat2) && !chat2.megagroup;
                                String title = notificationsController3.getTitle(chat2);
                                z7 = z17;
                                TLRPC.ChatPhoto chatPhoto2 = chat2.photo;
                                if (chatPhoto2 == null || (fileLocation2 = chatPhoto2.photo_small) == null) {
                                    j5 = clientUserId;
                                    dialogKey2 = dialogKey5;
                                } else {
                                    j5 = clientUserId;
                                    dialogKey2 = dialogKey5;
                                    if (fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                                    }
                                    if (j3 == 0) {
                                        dialogKey = dialogKey2;
                                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = getMessagesController().getTopicsController().findTopic(chat2.id, j3);
                                        if (tL_forumTopicFindTopic != null) {
                                            str9 = tL_forumTopicFindTopic.title + " in " + title;
                                        }
                                        if (z16) {
                                            z12 = z11;
                                            string2 = str9;
                                            zCanSendPlain = ChatObject.canSendPlain(chat2);
                                            user4 = null;
                                        } else {
                                            str10 = str9;
                                            chat3 = chat2;
                                            user3 = null;
                                            TLRPC.Chat chat5 = chat3;
                                            zCanSendPlain = z16;
                                            user4 = user3;
                                            chat2 = chat5;
                                            boolean z18 = z11;
                                            string2 = str10;
                                            z12 = z18;
                                        }
                                    } else {
                                        dialogKey = dialogKey2;
                                    }
                                    str9 = title;
                                    if (z16) {
                                    }
                                }
                                fileLocation2 = null;
                                if (j3 == 0) {
                                }
                                str9 = title;
                                if (z16) {
                                }
                            } else if (messageObject.isFcmMessage()) {
                                boolean zIsSupergroup = messageObject.isSupergroup();
                                String str24 = messageObject.localName;
                                z7 = zIsSupergroup;
                                dialogKey = dialogKey5;
                                j5 = clientUserId;
                                z12 = messageObject.localChannel;
                                user4 = null;
                                zCanSendPlain = false;
                                string2 = str24;
                                fileLocation2 = null;
                            } else {
                                if (BuildVars.LOGS_ENABLED) {
                                    sb = new StringBuilder();
                                    str11 = "not found chat to show dialog notification ";
                                    sb.append(str11);
                                    sb.append(j6);
                                    FileLog.w(sb.toString());
                                }
                                z9 = z15;
                                notificationsController2 = notificationsController3;
                                i6 = i24;
                                arrayList5 = arrayList16;
                                i7 = i25;
                                notification2 = notification;
                                str8 = str3;
                                z10 = z5;
                                longSparseArray5 = longSparseArray2;
                                sharedPreferences2 = sharedPreferences;
                                arrayList6 = arrayList3;
                                longSparseArray6 = longSparseArray4;
                                j7 = clientUserId;
                            }
                            if (j6 != UserObject.VERIFY) {
                            }
                        } else {
                            user3 = getMessagesController().getUser(Long.valueOf(j6));
                            if (user3 != null) {
                                userName = UserObject.getUserName(user3);
                                TLRPC.UserProfilePhoto userProfilePhoto5 = user3.photo;
                                if (userProfilePhoto5 != null && (fileLocation2 = userProfilePhoto5.photo_small) != null) {
                                    str6 = "Stories";
                                    num = num2;
                                    if (fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                                    }
                                    if (j6 == UserObject.VERIFY) {
                                        i8 = R.string.VerifyCodesNotifications;
                                    } else if (UserObject.isReplyUser(j6)) {
                                        i8 = R.string.RepliesTitle;
                                    } else if (j6 == clientUserId) {
                                        i8 = R.string.MessageScheduledReminderNotification;
                                    } else {
                                        dialogKey = dialogKey5;
                                        j5 = clientUserId;
                                        str10 = userName;
                                        chat3 = null;
                                        z11 = false;
                                        z7 = false;
                                        TLRPC.Chat chat52 = chat3;
                                        zCanSendPlain = z16;
                                        user4 = user3;
                                        chat2 = chat52;
                                        boolean z182 = z11;
                                        string2 = str10;
                                        z12 = z182;
                                        if (j6 != UserObject.VERIFY || messageObject == null || messageObject.getForwardedFromId() == null) {
                                            user2 = user4;
                                            z8 = zCanSendPlain;
                                        } else {
                                            Long forwardedFromId = messageObject.getForwardedFromId();
                                            user2 = user4;
                                            z8 = zCanSendPlain;
                                            long jLongValue = forwardedFromId.longValue();
                                            if (DialogObject.isUserDialog(jLongValue)) {
                                                TLRPC.UserProfilePhoto userProfilePhoto6 = getMessagesController().getUser(forwardedFromId).photo;
                                                if (userProfilePhoto6 != null && (fileLocation3 = userProfilePhoto6.photo_small) != null) {
                                                    z6 = z12;
                                                    if (fileLocation3.volume_id == 0 || fileLocation3.local_id == 0) {
                                                    }
                                                    string = string2;
                                                    if (j6 == UserObject.VERIFY) {
                                                        z8 = false;
                                                    }
                                                    chat = chat2;
                                                    fileLocation = fileLocation3;
                                                }
                                                fileLocation3 = fileLocation2;
                                                string = string2;
                                                if (j6 == UserObject.VERIFY) {
                                                }
                                                chat = chat2;
                                                fileLocation = fileLocation3;
                                            } else {
                                                z6 = z12;
                                                TLRPC.ChatPhoto chatPhoto3 = getMessagesController().getChat(Long.valueOf(-jLongValue)).photo;
                                                if (chatPhoto3 == null || (fileLocation3 = chatPhoto3.photo_small) == null || fileLocation3.volume_id == 0 || fileLocation3.local_id == 0) {
                                                    fileLocation3 = fileLocation2;
                                                }
                                                string = string2;
                                                if (j6 == UserObject.VERIFY) {
                                                }
                                                chat = chat2;
                                                fileLocation = fileLocation3;
                                            }
                                        }
                                        z6 = z12;
                                        fileLocation3 = fileLocation2;
                                        string = string2;
                                        if (j6 == UserObject.VERIFY) {
                                        }
                                        chat = chat2;
                                        fileLocation = fileLocation3;
                                    }
                                    string2 = LocaleController.getString(i8);
                                    dialogKey = dialogKey5;
                                    j5 = clientUserId;
                                    z12 = false;
                                    z7 = false;
                                    zCanSendPlain = z16;
                                    user4 = user3;
                                    chat2 = null;
                                    if (j6 != UserObject.VERIFY) {
                                        user2 = user4;
                                        z8 = zCanSendPlain;
                                        z6 = z12;
                                        fileLocation3 = fileLocation2;
                                        string = string2;
                                        if (j6 == UserObject.VERIFY) {
                                        }
                                        chat = chat2;
                                        fileLocation = fileLocation3;
                                    }
                                }
                                fileLocation2 = null;
                                if (j6 == UserObject.VERIFY) {
                                }
                                string2 = LocaleController.getString(i8);
                                dialogKey = dialogKey5;
                                j5 = clientUserId;
                                z12 = false;
                                z7 = false;
                                zCanSendPlain = z16;
                                user4 = user3;
                                chat2 = null;
                                if (j6 != UserObject.VERIFY) {
                                }
                            } else if (messageObject.isFcmMessage()) {
                                userName = messageObject.localName;
                            } else {
                                if (BuildVars.LOGS_ENABLED) {
                                    sb = new StringBuilder();
                                    str11 = "not found user to show dialog notification ";
                                    sb.append(str11);
                                    sb.append(j6);
                                    FileLog.w(sb.toString());
                                }
                                z9 = z15;
                                notificationsController2 = notificationsController3;
                                i6 = i24;
                                arrayList5 = arrayList16;
                                i7 = i25;
                                notification2 = notification;
                                str8 = str3;
                                z10 = z5;
                                longSparseArray5 = longSparseArray2;
                                sharedPreferences2 = sharedPreferences;
                                arrayList6 = arrayList3;
                                longSparseArray6 = longSparseArray4;
                                j7 = clientUserId;
                            }
                            str6 = "Stories";
                            num = num2;
                            fileLocation2 = null;
                            if (j6 == UserObject.VERIFY) {
                            }
                            string2 = LocaleController.getString(i8);
                            dialogKey = dialogKey5;
                            j5 = clientUserId;
                            z12 = false;
                            z7 = false;
                            zCanSendPlain = z16;
                            user4 = user3;
                            chat2 = null;
                            if (j6 != UserObject.VERIFY) {
                            }
                        }
                        i23 = i7 + 1;
                        arrayList15 = arrayList5;
                        size2 = i6;
                        z15 = z9;
                        arrayList12 = arrayList6;
                        z4 = z10;
                        notificationsSettings = sharedPreferences2;
                        longSparseArray11 = longSparseArray3;
                        clientUserId = j7;
                        longSparseArray12 = longSparseArray6;
                        str3 = str8;
                        longSparseArray13 = longSparseArray5;
                        notificationBuild = notification2;
                        notificationsController3 = notificationsController2;
                    }
                    if (DialogObject.isUserDialog(j6)) {
                    }
                    i23 = i7 + 1;
                    arrayList15 = arrayList5;
                    size2 = i6;
                    z15 = z9;
                    arrayList12 = arrayList6;
                    z4 = z10;
                    notificationsSettings = sharedPreferences2;
                    longSparseArray11 = longSparseArray3;
                    clientUserId = j7;
                    longSparseArray12 = longSparseArray6;
                    str3 = str8;
                    longSparseArray13 = longSparseArray5;
                    notificationBuild = notification2;
                    notificationsController3 = notificationsController2;
                }
            }
            if (messageObject == null || !messageObject.isStoryReactionPush) {
                sharedPreferences3 = sharedPreferences;
            } else {
                sharedPreferences3 = sharedPreferences;
                if (!sharedPreferences3.getBoolean("EnableReactionsPreview", true)) {
                    string = LocaleController.getString(R.string.NotificationHiddenChatName);
                    fileLocation = null;
                    z8 = false;
                }
            }
            if (z15) {
                string = LocaleController.getString(DialogObject.isChatDialog(j6) ? R.string.NotificationHiddenChatName : R.string.NotificationHiddenName);
                fileLocation = null;
                z8 = false;
            }
            if (fileLocation != null) {
                File pathToAttach3 = getFileLoader().getPathToAttach(fileLocation, true);
                sharedPreferences4 = sharedPreferences3;
                if (Build.VERSION.SDK_INT < 28) {
                    user5 = user2;
                    bitmap4 = null;
                    BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(fileLocation, null, "50_50");
                    if (imageFromMemory != null) {
                        bitmapDecodeFile = imageFromMemory.getBitmap();
                    } else {
                        try {
                            if (pathToAttach3.exists()) {
                                float fDp = 160.0f / AndroidUtilities.dp(50.0f);
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inSampleSize = fDp < 1.0f ? 1 : (int) fDp;
                                bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach3.getAbsolutePath(), options);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    bitmap = bitmapDecodeFile;
                    file = pathToAttach3;
                } else {
                    user5 = user2;
                    bitmap4 = null;
                }
                file = pathToAttach3;
                bitmap = bitmap4;
            } else {
                sharedPreferences4 = sharedPreferences3;
                user5 = user2;
                file = null;
                bitmap = null;
            }
            if (chat != null) {
                Person.Builder name = new Person.Builder().setName(string);
                if (file != null && file.exists() && Build.VERSION.SDK_INT >= 28) {
                    loadRoundAvatar(file, name);
                }
                bitmap2 = bitmap;
                file2 = file;
                longSparseArray7 = longSparseArray2;
                longSparseArray7.put(-chat.id, name.build());
            } else {
                file2 = file;
                bitmap2 = bitmap;
                longSparseArray7 = longSparseArray2;
            }
            Bitmap bitmap5 = bitmap2;
            if ((!z6 || z7) && z8 && !SharedConfig.isWaitingForPasscodeEnter && j5 != j6 && !UserObject.isReplyUser(j6) && MessagesController.getInstance(notificationsController3.currentAccount).getSendPaidMessagesStars(j6) <= 0) {
                chat4 = chat;
                z13 = z15;
                Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) WearReplyReceiver.class);
                intent.putExtra("dialog_id", j6);
                intent.putExtra("max_id", id);
                intent.putExtra("topic_id", j3);
                intent.putExtra("currentAccount", notificationsController3.currentAccount);
                str12 = "max_id";
                PendingIntent broadcast = PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent, 167772160);
                RemoteInput remoteInputBuild = new RemoteInput.Builder(EXTRA_VOICE_REPLY).setLabel(LocaleController.getString(R.string.Reply)).build();
                if (DialogObject.isChatDialog(j6)) {
                    i9 = id;
                    string3 = LocaleController.formatString(R.string.ReplyToGroup, string);
                    str13 = "dialog_id";
                    r9 = 1;
                } else {
                    i9 = id;
                    str13 = "dialog_id";
                    r9 = 1;
                    string3 = LocaleController.formatString(R.string.ReplyToUser, string);
                }
                actionBuild = new NotificationCompat.Action.Builder(R.drawable.ic_reply_icon, string3, broadcast).setAllowGeneratedReplies(r9).setSemanticAction(r9).addRemoteInput(remoteInputBuild).setShowsUserInterface(false).build();
            } else {
                str12 = "max_id";
                str13 = "dialog_id";
                z13 = z15;
                i9 = id;
                chat4 = chat;
                actionBuild = null;
            }
            Integer num3 = (Integer) notificationsController3.pushDialogs.get(j6);
            if (num3 == null) {
                num3 = 0;
            }
            DialogKey dialogKey6 = dialogKey;
            int size3 = dialogKey6.story ? notificationsController3.storyPushMessages.size() : Math.max(num3.intValue(), arrayList4.size());
            String str25 = (size3 <= 1 || Build.VERSION.SDK_INT >= 28) ? string : String.format("%1$s (%2$d)", string, Integer.valueOf(size3));
            long j16 = j5;
            Person person2 = (Person) longSparseArray7.get(j16);
            if (Build.VERSION.SDK_INT < 28 || person2 != null) {
                j8 = j3;
                personBuild = person2;
                String str26 = "";
                messagingStyle = (personBuild == null && (messageObject != null || !(messageObject.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest))) ? new NotificationCompat.MessagingStyle(personBuild) : new NotificationCompat.MessagingStyle("");
                i10 = Build.VERSION.SDK_INT;
                if (i10 >= 28 || ((DialogObject.isChatDialog(j6) && !z6) || UserObject.isReplyUser(j6))) {
                    messagingStyle.setConversationTitle(str25);
                }
                messagingStyle.setGroupConversation(i10 >= 28 || (!z6 && DialogObject.isChatDialog(j6)) || UserObject.isReplyUser(j6));
                StringBuilder sb3 = new StringBuilder();
                action = actionBuild;
                String[] strArr2 = new String[1];
                messageObject2 = messageObject;
                boolean[] zArr2 = new boolean[1];
                if (dialogKey6.story) {
                    LongSparseArray longSparseArray14 = longSparseArray7;
                    j9 = j16;
                    String str27 = str5;
                    dialogKey3 = dialogKey6;
                    int size4 = arrayList4.size() - 1;
                    int id2 = 0;
                    arrayList7 = null;
                    while (size4 >= 0) {
                        ArrayList<StoryNotification> arrayList19 = arrayList4;
                        int i28 = id2;
                        MessageObject messageObject6 = (MessageObject) arrayList19.get(size4);
                        ArrayList arrayList20 = arrayList7;
                        long topicId2 = MessageObject.getTopicId(notificationsController3.currentAccount, messageObject6.messageOwner, getMessagesController().isForum(messageObject6));
                        if (j8 != topicId2) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str27);
                            sb4.append(j6);
                            sb4.append("] continue; topic id is not equal: topicId=");
                            str17 = str26;
                            str18 = str27;
                            long j17 = j8;
                            sb4.append(j17);
                            sb4.append(" messageTopicId=");
                            sb4.append(topicId2);
                            sb4.append("; selfId=");
                            sb4.append(getUserConfig().getClientUserId());
                            FileLog.d(sb4.toString());
                            z14 = z6;
                            zArr = zArr2;
                            j11 = j17;
                            str21 = str3;
                            str22 = str4;
                        } else {
                            str17 = str26;
                            str18 = str27;
                            long j18 = j8;
                            String shortStringForMessage = notificationsController3.getShortStringForMessage(messageObject6, strArr2, zArr2);
                            if (j6 != UserObject.VERIFY || messageObject6.getForwardedFromId() == null) {
                                messagingStyle2 = messagingStyle;
                                zArr = zArr2;
                                if (j6 == j9) {
                                    strArr2[0] = string;
                                } else if (DialogObject.isChatDialog(j6) && messageObject6.messageOwner.from_scheduled) {
                                    strArr2[0] = LocaleController.getString(R.string.NotificationMessageScheduledName);
                                }
                            } else {
                                messagingStyle2 = messagingStyle;
                                zArr = zArr2;
                                strArr2[0] = getMessagesController().getPeerName(messageObject6.getForwardedFromId().longValue());
                            }
                            if (shortStringForMessage == null) {
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.w("message text is null for " + messageObject6.getId() + " did = " + messageObject6.getDialogId());
                                }
                                z14 = z6;
                                j11 = j18;
                                str21 = str3;
                                str22 = str4;
                                messagingStyle = messagingStyle2;
                            } else {
                                if (sb3.length() > 0) {
                                    sb3.append("\n\n");
                                }
                                if (j6 != j9 && messageObject6.messageOwner.from_scheduled && DialogObject.isUserDialog(j6)) {
                                    str19 = str3;
                                    shortStringForMessage = String.format(str19, LocaleController.getString(R.string.NotificationMessageScheduledName), shortStringForMessage);
                                    sb3.append(shortStringForMessage);
                                    str20 = string;
                                } else {
                                    str19 = str3;
                                    String str28 = strArr2[0];
                                    str20 = string;
                                    if (str28 != null) {
                                        sb3.append(String.format(str19, str28, shortStringForMessage));
                                    } else {
                                        sb3.append(shortStringForMessage);
                                    }
                                }
                                String str29 = shortStringForMessage;
                                if (j6 != UserObject.VERIFY || messageObject6.getForwardedFromId() == null) {
                                    if (!DialogObject.isUserDialog(j6)) {
                                        senderId = z6 ? -j6 : DialogObject.isChatDialog(j6) ? messageObject6.getSenderId() : j6;
                                    }
                                    i4 = -1;
                                    size4 = i12 - 1;
                                    str4 = str22;
                                    str26 = str23;
                                    string = str20;
                                    zArr2 = zArr;
                                    strArr2 = strArr;
                                    arrayList4 = arrayList19;
                                    str27 = str18;
                                    z6 = z14;
                                    longSparseArray14 = longSparseArray9;
                                    j8 = j11;
                                    str3 = str21;
                                } else {
                                    senderId = messageObject6.getForwardedFromId().longValue();
                                }
                                j11 = j18;
                                LongSparseArray longSparseArray15 = longSparseArray14;
                                Person person3 = (Person) longSparseArray15.get(senderId + (j18 << 16));
                                String string6 = strArr2[0];
                                if (string6 == null) {
                                    if (z13) {
                                        if (DialogObject.isChatDialog(j6)) {
                                            if (!z6) {
                                                i14 = R.string.NotificationHiddenChatUserName;
                                            } else if (Build.VERSION.SDK_INT > 27) {
                                                i14 = R.string.NotificationHiddenChatName;
                                            }
                                            string6 = LocaleController.getString(i14);
                                        } else if (Build.VERSION.SDK_INT > 27) {
                                            i14 = R.string.NotificationHiddenName;
                                            string6 = LocaleController.getString(i14);
                                        }
                                    }
                                    string6 = str17;
                                }
                                if (person3 == null || !TextUtils.equals(person3.getName(), string6)) {
                                    Person.Builder name2 = new Person.Builder().setName(string6);
                                    if (!zArr[0] || DialogObject.isEncryptedDialog(j6) || Build.VERSION.SDK_INT < 28) {
                                        strArr = strArr2;
                                        z14 = z6;
                                        i12 = size4;
                                    } else {
                                        if (DialogObject.isUserDialog(j6) || z6) {
                                            strArr = strArr2;
                                            z14 = z6;
                                            pathToAttach = file2;
                                        } else {
                                            long senderId2 = messageObject6.getSenderId();
                                            strArr = strArr2;
                                            z14 = z6;
                                            TLRPC.User user8 = getMessagesController().getUser(Long.valueOf(senderId2));
                                            if (user8 == null && (user8 = getMessagesStorage().getUserSync(senderId2)) != null) {
                                                getMessagesController().putUser(user8, true);
                                            }
                                            pathToAttach = (user8 == null || (userProfilePhoto2 = user8.photo) == null || (fileLocation6 = userProfilePhoto2.photo_small) == null || fileLocation6.volume_id == 0 || fileLocation6.local_id == 0) ? null : getFileLoader().getPathToAttach(user8.photo.photo_small, true);
                                        }
                                        if (pathToAttach != null || j6 != UserObject.VERIFY || messageObject6.getForwardedFromId() == null) {
                                            file3 = pathToAttach;
                                            i12 = size4;
                                            pathToAttach2 = file3;
                                            loadRoundAvatar(pathToAttach2, name2);
                                        } else if (senderId >= 0) {
                                            TLRPC.User user9 = getMessagesController().getUser(Long.valueOf(senderId));
                                            if (user9 != null && (userProfilePhoto = user9.photo) != null && (fileLocation5 = userProfilePhoto.photo_small) != null) {
                                                file3 = pathToAttach;
                                                i13 = size4;
                                                if (fileLocation5.volume_id != 0 && fileLocation5.local_id != 0) {
                                                    pathToAttach2 = getFileLoader().getPathToAttach(user9.photo.photo_small, true);
                                                    i12 = i13;
                                                    loadRoundAvatar(pathToAttach2, name2);
                                                }
                                                i12 = i13;
                                                pathToAttach2 = file3;
                                                loadRoundAvatar(pathToAttach2, name2);
                                            }
                                            file3 = pathToAttach;
                                            i12 = size4;
                                            pathToAttach2 = file3;
                                            loadRoundAvatar(pathToAttach2, name2);
                                        } else {
                                            file3 = pathToAttach;
                                            i13 = size4;
                                            TLRPC.Chat chat6 = getMessagesController().getChat(Long.valueOf(-senderId));
                                            if (chat6 == null || (chatPhoto = chat6.photo) == null || (fileLocation4 = chatPhoto.photo_small) == null) {
                                                i12 = i13;
                                            } else {
                                                i12 = i13;
                                                if (fileLocation4.volume_id != 0 && fileLocation4.local_id != 0) {
                                                    pathToAttach2 = getFileLoader().getPathToAttach(chat6.photo.photo_small, true);
                                                }
                                                loadRoundAvatar(pathToAttach2, name2);
                                            }
                                            pathToAttach2 = file3;
                                            loadRoundAvatar(pathToAttach2, name2);
                                        }
                                        i4 = -1;
                                        size4 = i12 - 1;
                                        str4 = str22;
                                        str26 = str23;
                                        string = str20;
                                        zArr2 = zArr;
                                        strArr2 = strArr;
                                        arrayList4 = arrayList19;
                                        str27 = str18;
                                        z6 = z14;
                                        longSparseArray14 = longSparseArray9;
                                        j8 = j11;
                                        str3 = str21;
                                    }
                                    Person personBuild2 = name2.build();
                                    longSparseArray15.put(senderId, personBuild2);
                                    person = personBuild2;
                                } else {
                                    strArr = strArr2;
                                    z14 = z6;
                                    person = person3;
                                    i12 = size4;
                                }
                                if (DialogObject.isEncryptedDialog(j6)) {
                                    str21 = str19;
                                    longSparseArray9 = longSparseArray15;
                                    str22 = str4;
                                    messagingStyle = messagingStyle2;
                                    str23 = str17;
                                    messagingStyle.addMessage(str29, messageObject6.messageOwner.date * 1000, person);
                                } else {
                                    if (!zArr[0] || Build.VERSION.SDK_INT < 28 || ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).isLowRamDevice() || z13 || messageObject6.isSecretMedia() || !(messageObject6.type == 1 || messageObject6.isSticker())) {
                                        str21 = str19;
                                        longSparseArray9 = longSparseArray15;
                                        str22 = str4;
                                        messagingStyle = messagingStyle2;
                                        str23 = str17;
                                    } else {
                                        File pathToMessage = getFileLoader().getPathToMessage(messageObject6.messageOwner);
                                        if (pathToMessage.exists() && messageObject6.hasMediaSpoilers()) {
                                            file4 = new File(pathToMessage.getParentFile(), pathToMessage.getName() + ".blur.jpg");
                                            if (file4.exists()) {
                                                str21 = str19;
                                                longSparseArray9 = longSparseArray15;
                                            } else {
                                                try {
                                                    Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(pathToMessage.getAbsolutePath());
                                                    Bitmap bitmapStackBlurBitmapMax = Utilities.stackBlurBitmapMax(bitmapDecodeFile2);
                                                    bitmapDecodeFile2.recycle();
                                                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapStackBlurBitmapMax, bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight(), true);
                                                    Utilities.stackBlurBitmap(bitmapCreateScaledBitmap, 5);
                                                    bitmapStackBlurBitmapMax.recycle();
                                                    canvas = new Canvas(bitmapCreateScaledBitmap);
                                                    longSparseArray9 = longSparseArray15;
                                                    try {
                                                        notificationsController3.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(i4) * 0.325f)));
                                                        str21 = str19;
                                                    } catch (Exception e) {
                                                        e = e;
                                                        str21 = str19;
                                                    }
                                                } catch (Exception e2) {
                                                    e = e2;
                                                    str21 = str19;
                                                    longSparseArray9 = longSparseArray15;
                                                }
                                                try {
                                                    notificationsController3.mediaSpoilerEffect.setBounds(0, 0, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight());
                                                    notificationsController3.mediaSpoilerEffect.draw(canvas);
                                                    FileOutputStream fileOutputStream = new FileOutputStream(file4);
                                                    bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                                    fileOutputStream.close();
                                                    bitmapCreateScaledBitmap.recycle();
                                                    pathToMessage = file4;
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    FileLog.e(e);
                                                    NotificationCompat.MessagingStyle.Message message2 = new NotificationCompat.MessagingStyle.Message(str29, messageObject6.messageOwner.date * 1000, person);
                                                    String str30 = !messageObject6.isSticker() ? "image/webp" : "image/jpeg";
                                                    if (pathToMessage.exists()) {
                                                    }
                                                    i4 = -1;
                                                    size4 = i12 - 1;
                                                    str4 = str22;
                                                    str26 = str23;
                                                    string = str20;
                                                    zArr2 = zArr;
                                                    strArr2 = strArr;
                                                    arrayList4 = arrayList19;
                                                    str27 = str18;
                                                    z6 = z14;
                                                    longSparseArray14 = longSparseArray9;
                                                    j8 = j11;
                                                    str3 = str21;
                                                }
                                            }
                                        } else {
                                            str21 = str19;
                                            longSparseArray9 = longSparseArray15;
                                            file4 = null;
                                        }
                                        NotificationCompat.MessagingStyle.Message message22 = new NotificationCompat.MessagingStyle.Message(str29, messageObject6.messageOwner.date * 1000, person);
                                        String str302 = !messageObject6.isSticker() ? "image/webp" : "image/jpeg";
                                        if (pathToMessage.exists()) {
                                            str22 = str4;
                                            if (getFileLoader().isLoadingFile(pathToMessage.getName())) {
                                                Uri.Builder builderAppendPath = new Uri.Builder().scheme(RemoteMessageConst.Notification.CONTENT).authority(NotificationImageProvider.getAuthority()).appendPath("msg_media_raw");
                                                StringBuilder sb5 = new StringBuilder();
                                                sb5.append(notificationsController3.currentAccount);
                                                str23 = str17;
                                                sb5.append(str23);
                                                uriForFile2 = builderAppendPath.appendPath(sb5.toString()).appendPath(pathToMessage.getName()).appendQueryParameter("final_path", pathToMessage.getAbsolutePath()).build();
                                            } else {
                                                str23 = str17;
                                                uriForFile2 = null;
                                            }
                                            if (uriForFile2 != null) {
                                            }
                                        } else {
                                            try {
                                                context = ApplicationLoader.applicationContext;
                                                sb2 = new StringBuilder();
                                                sb2.append(ApplicationLoader.getApplicationId());
                                                str22 = str4;
                                            } catch (Exception e4) {
                                                e = e4;
                                                str22 = str4;
                                            }
                                            try {
                                                sb2.append(str22);
                                                uriForFile2 = FileProvider.getUriForFile(context, sb2.toString(), pathToMessage);
                                                str23 = str17;
                                            } catch (Exception e5) {
                                                e = e5;
                                                FileLog.e(e);
                                                str23 = str17;
                                                uriForFile2 = null;
                                                if (uriForFile2 != null) {
                                                }
                                            }
                                            if (uriForFile2 != null) {
                                                message22.setData(str302, uriForFile2);
                                                messagingStyle = messagingStyle2;
                                                messagingStyle.addMessage(message22);
                                                ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile2, 1);
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda55
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        NotificationsController.lambda$showExtraNotifications$42(uriForFile2, file4);
                                                    }
                                                }, 20000L);
                                                if (!TextUtils.isEmpty(messageObject6.caption)) {
                                                    messagingStyle.addMessage(messageObject6.caption, messageObject6.messageOwner.date * 1000, person);
                                                }
                                                if (zArr[0] && !z13 && messageObject6.isVoice()) {
                                                    messages = messagingStyle.getMessages();
                                                    if (!messages.isEmpty()) {
                                                        File pathToMessage2 = getFileLoader().getPathToMessage(messageObject6.messageOwner);
                                                        if (Build.VERSION.SDK_INT >= 24) {
                                                            try {
                                                                uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + str22, pathToMessage2);
                                                            } catch (Exception unused2) {
                                                                uriForFile = null;
                                                            }
                                                        } else {
                                                            uriForFile = Uri.fromFile(pathToMessage2);
                                                        }
                                                        if (uriForFile != null) {
                                                            ((NotificationCompat.MessagingStyle.Message) messages.get(messages.size() - 1)).setData("audio/ogg", uriForFile);
                                                        }
                                                    }
                                                }
                                            } else {
                                                messagingStyle = messagingStyle2;
                                            }
                                        }
                                        i4 = -1;
                                        size4 = i12 - 1;
                                        str4 = str22;
                                        str26 = str23;
                                        string = str20;
                                        zArr2 = zArr;
                                        strArr2 = strArr;
                                        arrayList4 = arrayList19;
                                        str27 = str18;
                                        z6 = z14;
                                        longSparseArray14 = longSparseArray9;
                                        j8 = j11;
                                        str3 = str21;
                                    }
                                    messagingStyle.addMessage(str29, messageObject6.messageOwner.date * 1000, person);
                                    if (zArr[0]) {
                                        messages = messagingStyle.getMessages();
                                        if (!messages.isEmpty()) {
                                        }
                                    }
                                }
                                if (j6 != 777000 || (replyMarkup = messageObject6.messageOwner.reply_markup) == null) {
                                    id2 = i28;
                                    arrayList7 = arrayList20;
                                } else {
                                    arrayList7 = replyMarkup.rows;
                                    id2 = messageObject6.getId();
                                }
                                i4 = -1;
                                size4 = i12 - 1;
                                str4 = str22;
                                str26 = str23;
                                string = str20;
                                zArr2 = zArr;
                                strArr2 = strArr;
                                arrayList4 = arrayList19;
                                str27 = str18;
                                z6 = z14;
                                longSparseArray14 = longSparseArray9;
                                j8 = j11;
                                str3 = str21;
                            }
                        }
                        longSparseArray9 = longSparseArray14;
                        str23 = str17;
                        strArr = strArr2;
                        i12 = size4;
                        str20 = string;
                        id2 = i28;
                        arrayList7 = arrayList20;
                        i4 = -1;
                        size4 = i12 - 1;
                        str4 = str22;
                        str26 = str23;
                        string = str20;
                        zArr2 = zArr;
                        strArr2 = strArr;
                        arrayList4 = arrayList19;
                        str27 = str18;
                        z6 = z14;
                        longSparseArray14 = longSparseArray9;
                        j8 = j11;
                        str3 = str21;
                    }
                    str14 = str3;
                    str15 = str4;
                    arrayList8 = arrayList4;
                    j10 = j8;
                    longSparseArray8 = longSparseArray14;
                    str16 = string;
                    bitmapLoadMultipleAvatars = bitmap5;
                    i11 = id2;
                } else {
                    ArrayList<String> arrayList21 = new ArrayList<>();
                    ArrayList<Object> arrayList22 = new ArrayList<>();
                    Pair<Integer, Boolean> storyPushes = notificationsController3.parseStoryPushes(arrayList21, arrayList22);
                    int iIntValue = ((Integer) storyPushes.first).intValue();
                    boolean zBooleanValue = ((Boolean) storyPushes.second).booleanValue();
                    if (zBooleanValue) {
                        string5 = LocaleController.formatPluralString("StoryNotificationHidden", iIntValue, new Object[0]);
                    } else if (arrayList21.isEmpty()) {
                        FileLog.d(str5 + j6 + "] continue; story but names is empty");
                        longSparseArray5 = longSparseArray7;
                        notificationsController2 = notificationsController3;
                        i6 = i24;
                        arrayList5 = arrayList16;
                        i7 = i25;
                        notification2 = notification;
                        str8 = str3;
                        z10 = z5;
                        arrayList6 = arrayList3;
                        longSparseArray6 = longSparseArray4;
                        z9 = z13;
                        sharedPreferences2 = sharedPreferences4;
                        j7 = j16;
                    } else if (arrayList21.size() != 1) {
                        dialogKey3 = dialogKey6;
                        if (arrayList21.size() == 2) {
                            longSparseArray10 = longSparseArray7;
                            sb3.append(LocaleController.formatString(R.string.StoryNotification2, arrayList21.get(0), arrayList21.get(1)));
                            j9 = j16;
                            long jMin2 = Long.MAX_VALUE;
                            while (i17 < notificationsController3.storyPushMessages.size()) {
                            }
                            messagingStyle.setGroupConversation(false);
                            if (arrayList21.size() == 1) {
                                messagingStyle.addMessage(sb3, jMin2, new Person.Builder().setName(pluralString).build());
                                if (zBooleanValue) {
                                }
                                arrayList7 = null;
                            }
                        } else {
                            longSparseArray10 = longSparseArray7;
                            if (arrayList21.size() == 3 && notificationsController3.storyPushMessages.size() == 3) {
                                j9 = j16;
                                pluralString = LocaleController.formatString(R.string.StoryNotification3, notificationsController3.cutLastName(arrayList21.get(0)), notificationsController3.cutLastName(arrayList21.get(1)), notificationsController3.cutLastName(arrayList21.get(2)));
                            } else {
                                j9 = j16;
                                pluralString = LocaleController.formatPluralString("StoryNotification4", notificationsController3.storyPushMessages.size() - 2, notificationsController3.cutLastName(arrayList21.get(0)), notificationsController3.cutLastName(arrayList21.get(1)));
                            }
                            sb3.append(pluralString);
                            long jMin22 = Long.MAX_VALUE;
                            while (i17 < notificationsController3.storyPushMessages.size()) {
                            }
                            messagingStyle.setGroupConversation(false);
                            if (arrayList21.size() == 1) {
                            }
                        }
                    } else if (iIntValue == 1) {
                        string5 = LocaleController.getString("StoryNotificationSingle");
                    } else {
                        dialogKey3 = dialogKey6;
                        sb3.append(LocaleController.formatPluralString("StoryNotification1", iIntValue, arrayList21.get(0)));
                        longSparseArray10 = longSparseArray7;
                        j9 = j16;
                        long jMin222 = Long.MAX_VALUE;
                        for (i17 = 0; i17 < notificationsController3.storyPushMessages.size(); i17++) {
                            jMin222 = Math.min(notificationsController3.storyPushMessages.get(i17).date, jMin222);
                        }
                        messagingStyle.setGroupConversation(false);
                        String pluralString2 = (arrayList21.size() == 1 || zBooleanValue) ? LocaleController.formatPluralString(str6, iIntValue, new Object[0]) : arrayList21.get(0);
                        messagingStyle.addMessage(sb3, jMin222, new Person.Builder().setName(pluralString2).build());
                        if (zBooleanValue) {
                            bitmapLoadMultipleAvatars = loadMultipleAvatars(arrayList22);
                            str16 = pluralString2;
                            str14 = str3;
                            str15 = str4;
                            arrayList8 = arrayList4;
                            j10 = j8;
                            longSparseArray8 = longSparseArray10;
                            i11 = 0;
                        } else {
                            str16 = pluralString2;
                            str14 = str3;
                            str15 = str4;
                            arrayList8 = arrayList4;
                            j10 = j8;
                            longSparseArray8 = longSparseArray10;
                            i11 = 0;
                            bitmapLoadMultipleAvatars = null;
                        }
                        arrayList7 = null;
                    }
                    sb3.append(string5);
                    dialogKey3 = dialogKey6;
                    longSparseArray10 = longSparseArray7;
                    j9 = j16;
                    long jMin2222 = Long.MAX_VALUE;
                    while (i17 < notificationsController3.storyPushMessages.size()) {
                    }
                    messagingStyle.setGroupConversation(false);
                    if (arrayList21.size() == 1) {
                    }
                }
                Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                intent2.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                intent2.setFlags(ConnectionsManager.FileTypeFile);
                intent2.addCategory("android.intent.category.LAUNCHER");
                if (messageObject2 == null && messageObject2.isStoryReactionPush) {
                    intent2.putExtra("storyId", Math.abs(messageObject2.getId()));
                    str4 = str15;
                    dialogKey4 = dialogKey3;
                } else {
                    dialogKey4 = dialogKey3;
                    if (dialogKey4.story) {
                        str4 = str15;
                        if (DialogObject.isEncryptedDialog(j6)) {
                            intent2.putExtra("encId", DialogObject.getEncryptedChatId(j6));
                        } else if (DialogObject.isUserDialog(j6)) {
                            intent2.putExtra("userId", j6);
                        } else {
                            intent2.putExtra("chatId", -j6);
                        }
                    } else {
                        long[] jArr2 = new long[notificationsController3.storyPushMessages.size()];
                        int i29 = 0;
                        while (i29 < notificationsController3.storyPushMessages.size()) {
                            jArr2[i29] = notificationsController3.storyPushMessages.get(i29).dialogId;
                            i29++;
                            str15 = str15;
                        }
                        str4 = str15;
                        intent2.putExtra("storyDialogIds", jArr2);
                    }
                }
                StringBuilder sb6 = new StringBuilder();
                sb6.append("show extra notifications chatId ");
                sb6.append(j6);
                sb6.append(" topicId ");
                j12 = j10;
                sb6.append(j12);
                FileLog.d(sb6.toString());
                if (j12 != 0) {
                    intent2.putExtra("topicId", j12);
                }
                intent2.putExtra("currentAccount", notificationsController3.currentAccount);
                PendingIntent activity = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 1140850688);
                NotificationCompat.WearableExtender wearableExtender = new NotificationCompat.WearableExtender();
                if (action != null) {
                    wearableExtender.addAction(action);
                }
                int i30 = i11;
                arrayList9 = arrayList7;
                Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) AutoMessageHeardReceiver.class);
                intent3.addFlags(32);
                intent3.setAction("org.telegram.messenger.ACTION_MESSAGE_HEARD");
                intent3.putExtra(str13, j6);
                int i31 = i9;
                intent3.putExtra(str12, i31);
                intent3.putExtra("currentAccount", notificationsController3.currentAccount);
                bitmap3 = bitmapLoadMultipleAvatars;
                NotificationCompat.Action actionBuild2 = new NotificationCompat.Action.Builder(R.drawable.msg_markread, LocaleController.getString(R.string.MarkAsRead), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent3, 167772160)).setSemanticAction(2).setShowsUserInterface(false).build();
                if (!DialogObject.isEncryptedDialog(j6)) {
                    action2 = actionBuild2;
                    messageObject3 = messageObject2;
                    string4 = j6 != globalSecretChatId ? "tgenc" + DialogObject.getEncryptedChatId(j6) + "_" + i31 : null;
                } else if (DialogObject.isUserDialog(j6)) {
                    string4 = "tguser" + j6 + "_" + i31;
                    action2 = actionBuild2;
                    messageObject3 = messageObject2;
                } else {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("tgchat");
                    action2 = actionBuild2;
                    messageObject3 = messageObject2;
                    sb7.append(-j6);
                    sb7.append("_");
                    sb7.append(i31);
                    string4 = sb7.toString();
                }
                if (string4 == null) {
                    wearableExtender.setDismissalId(string4);
                    NotificationCompat.WearableExtender wearableExtender2 = new NotificationCompat.WearableExtender();
                    wearableExtender2.setDismissalId("summary_" + string4);
                    builder.extend(wearableExtender2);
                }
                wearableExtender.setBridgeTag("tgaccount" + j9);
                if (dialogKey4.story) {
                    action3 = action2;
                    arrayList10 = arrayList8;
                    jMin = ((MessageObject) arrayList10.get(0)).messageOwner.date * 1000;
                } else {
                    jMin = Long.MAX_VALUE;
                    int i32 = 0;
                    while (i32 < notificationsController3.storyPushMessages.size()) {
                        jMin = Math.min(notificationsController3.storyPushMessages.get(i32).date, jMin);
                        i32++;
                        action2 = action2;
                    }
                    action3 = action2;
                    arrayList10 = arrayList8;
                }
                NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(ApplicationLoader.applicationContext).setContentTitle(str16).setSmallIcon(R.drawable.notification).setContentText(sb3.toString()).setAutoCancel(true);
                if (dialogKey4.story) {
                    arrayList10 = notificationsController3.storyPushMessages;
                }
                category = autoCancel.setNumber(arrayList10.size()).setColor(-15618822).setGroupSummary(false).setWhen(jMin).setShowWhen(true).setStyle(messagingStyle).setContentIntent(activity).extend(wearableExtender).setSortKey(String.valueOf(Long.MAX_VALUE - jMin)).setCategory(RemoteMessageConst.MessageBody.MSG);
                try {
                    Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                    intent4.putExtra("messageDate", i5);
                    intent4.putExtra("dialogId", j6);
                    intent4.putExtra("currentAccount", notificationsController3.currentAccount);
                    if (dialogKey4.story) {
                        intent4.putExtra("story", true);
                    }
                    if (messageObject3 == null) {
                        messageObject4 = messageObject3;
                        try {
                            if (messageObject4.isStoryReactionPush) {
                                intent4.putExtra("storyReaction", true);
                            }
                        } catch (Exception e6) {
                            e = e6;
                            FileLog.e(e);
                            if (z5) {
                            }
                            if (messageObject4 == null) {
                            }
                            i23 = i7 + 1;
                            arrayList15 = arrayList5;
                            size2 = i6;
                            z15 = z9;
                            arrayList12 = arrayList6;
                            z4 = z10;
                            notificationsSettings = sharedPreferences2;
                            longSparseArray11 = longSparseArray3;
                            clientUserId = j7;
                            longSparseArray12 = longSparseArray6;
                            str3 = str8;
                            longSparseArray13 = longSparseArray5;
                            notificationBuild = notification2;
                            notificationsController3 = notificationsController2;
                        }
                    } else {
                        messageObject4 = messageObject3;
                    }
                    category.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent4, 167772160));
                } catch (Exception e7) {
                    e = e7;
                    messageObject4 = messageObject3;
                }
                if (z5) {
                    category.setGroup(notificationsController3.notificationGroup);
                    category.setGroupAlertBehavior(1);
                }
                if (messageObject4 == null || (message = messageObject4.messageOwner) == null || (replyMarkup2 = message.reply_markup) == null) {
                    tL_keyboardButtonCopy = null;
                } else {
                    tL_keyboardButtonCopy = null;
                    for (int i33 = 0; i33 < replyMarkup2.rows.size(); i33++) {
                        int i34 = 0;
                        while (true) {
                            if (i34 >= ((TLRPC.TL_keyboardButtonRow) replyMarkup2.rows.get(i33)).buttons.size()) {
                                break;
                            }
                            if (((TLRPC.TL_keyboardButtonRow) replyMarkup2.rows.get(i33)).buttons.get(i34) instanceof TLRPC.TL_keyboardButtonCopy) {
                                tL_keyboardButtonCopy = (TLRPC.TL_keyboardButtonCopy) ((TLRPC.TL_keyboardButtonRow) replyMarkup2.rows.get(i33)).buttons.get(i34);
                                break;
                            }
                            i34++;
                        }
                        if (tL_keyboardButtonCopy != null) {
                            break;
                        }
                    }
                }
                if (tL_keyboardButtonCopy != null) {
                    Intent intent5 = new Intent(ApplicationLoader.applicationContext, (Class<?>) CopyCodeReceiver.class);
                    intent5.addFlags(32);
                    intent5.setAction("org.telegram.messenger.ACTION_COPY_CODE");
                    intent5.putExtra("text", tL_keyboardButtonCopy.copy_text);
                    category.addAction(new NotificationCompat.Action.Builder(R.drawable.msg_copy, tL_keyboardButtonCopy.text, PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent5, 167772160)).setShowsUserInterface(false).build());
                }
                if (dialogKey4.dialogId != UserObject.VERIFY) {
                    if (action != null) {
                        category.addAction(action);
                    }
                    if (!z13 && !dialogKey4.story && (messageObject4 == null || !messageObject4.isStoryReactionPush)) {
                        category.addAction(action3);
                    }
                }
                if (arrayList3.size() != 1 && !TextUtils.isEmpty(str) && !dialogKey4.story) {
                    category.setSubText(str);
                }
                if (DialogObject.isEncryptedDialog(j6)) {
                    category.setLocalOnly(true);
                }
                if (bitmap3 != null) {
                    category.setLargeIcon(bitmap3);
                }
                if (!AndroidUtilities.needShowPasscode(false) && !SharedConfig.isWaitingForPasscodeEnter && arrayList9 != null) {
                    size = arrayList9.size();
                    i15 = 0;
                    while (i15 < size) {
                        ArrayList arrayList23 = arrayList9;
                        TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow2 = (TLRPC.TL_keyboardButtonRow) arrayList23.get(i15);
                        int size5 = tL_keyboardButtonRow2.buttons.size();
                        int i35 = 0;
                        while (i35 < size5) {
                            TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) tL_keyboardButtonRow2.buttons.get(i35);
                            if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                                i16 = size;
                                arrayList11 = arrayList23;
                                Intent intent6 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationCallbackReceiver.class);
                                intent6.putExtra("currentAccount", notificationsController3.currentAccount);
                                intent6.putExtra("did", j6);
                                byte[] bArr = keyboardButton.data;
                                if (bArr != null) {
                                    intent6.putExtra(RemoteMessageConst.DATA, bArr);
                                }
                                intent6.putExtra("mid", i30);
                                String str31 = keyboardButton.text;
                                Context context2 = ApplicationLoader.applicationContext;
                                int i36 = notificationsController3.lastButtonId;
                                tL_keyboardButtonRow = tL_keyboardButtonRow2;
                                notificationsController3.lastButtonId = i36 + 1;
                                category.addAction(0, str31, PendingIntent.getBroadcast(context2, i36, intent6, 167772160));
                            } else {
                                i16 = size;
                                arrayList11 = arrayList23;
                                tL_keyboardButtonRow = tL_keyboardButtonRow2;
                            }
                            i35++;
                            size = i16;
                            arrayList23 = arrayList11;
                            tL_keyboardButtonRow2 = tL_keyboardButtonRow;
                        }
                        i15++;
                        arrayList9 = arrayList23;
                    }
                }
                if (chat4 == null || user5 == null) {
                    user6 = user5;
                } else {
                    user6 = user5;
                    String str32 = user6.phone;
                    if (str32 != null && str32.length() > 0) {
                        category.addPerson("tel:+" + user6.phone);
                    }
                }
                Notification notification3 = notification;
                boolean z19 = z5;
                if (Build.VERSION.SDK_INT >= 26) {
                    notificationsController3.setNotificationChannel(notification3, category, z19);
                }
                FileLog.d("showExtraNotifications: holders.add " + j6);
                i6 = i24;
                j7 = j9;
                z9 = z13;
                z10 = z19;
                longSparseArray5 = longSparseArray8;
                longSparseArray6 = longSparseArray4;
                i7 = i25;
                str8 = str14;
                arrayList6 = arrayList3;
                TLRPC.Chat chat7 = chat4;
                sharedPreferences2 = sharedPreferences4;
                notification2 = notification3;
                arrayList5 = arrayList16;
                arrayList5.add(new C1NotificationHolder(num.intValue(), j6, dialogKey4.story, j12, str16, user6, chat7, category, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
                notificationsController2 = this;
                notificationsController2.wearNotificationsIds.put(j6, num);
            } else {
                TLRPC.User user10 = getMessagesController().getUser(Long.valueOf(j16));
                if (user10 == null) {
                    user10 = getUserConfig().getCurrentUser();
                }
                if (user10 != null) {
                    try {
                        userProfilePhoto3 = user10.photo;
                    } catch (Throwable th) {
                        th = th;
                        j8 = j3;
                    }
                    if (userProfilePhoto3 != null && (fileLocation7 = userProfilePhoto3.photo_small) != null) {
                        j8 = j3;
                        try {
                            if (fileLocation7.volume_id != 0 && fileLocation7.local_id != 0) {
                                Person.Builder name3 = new Person.Builder().setName(LocaleController.getString(R.string.FromYou));
                                loadRoundAvatar(getFileLoader().getPathToAttach(user10.photo.photo_small, true), name3);
                                personBuild = name3.build();
                                try {
                                    longSparseArray7.put(j16, personBuild);
                                } catch (Throwable th2) {
                                    th = th2;
                                    person2 = personBuild;
                                    FileLog.e(th);
                                    personBuild = person2;
                                    i23 = i7 + 1;
                                    arrayList15 = arrayList5;
                                    size2 = i6;
                                    z15 = z9;
                                    arrayList12 = arrayList6;
                                    z4 = z10;
                                    notificationsSettings = sharedPreferences2;
                                    longSparseArray11 = longSparseArray3;
                                    clientUserId = j7;
                                    longSparseArray12 = longSparseArray6;
                                    str3 = str8;
                                    longSparseArray13 = longSparseArray5;
                                    notificationBuild = notification2;
                                    notificationsController3 = notificationsController2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        if (messageObject != null) {
                            String str262 = "";
                            if (personBuild == null) {
                                messagingStyle = (personBuild == null && (messageObject != null || !(messageObject.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest))) ? new NotificationCompat.MessagingStyle(personBuild) : new NotificationCompat.MessagingStyle("");
                                i10 = Build.VERSION.SDK_INT;
                                if (i10 >= 28) {
                                    messagingStyle.setConversationTitle(str25);
                                    if (i10 >= 28) {
                                        messagingStyle.setGroupConversation(i10 >= 28 || (!z6 && DialogObject.isChatDialog(j6)) || UserObject.isReplyUser(j6));
                                        StringBuilder sb32 = new StringBuilder();
                                        action = actionBuild;
                                        String[] strArr22 = new String[1];
                                        messageObject2 = messageObject;
                                        boolean[] zArr22 = new boolean[1];
                                        if (dialogKey6.story) {
                                        }
                                        Intent intent22 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                        intent22.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                        intent22.setFlags(ConnectionsManager.FileTypeFile);
                                        intent22.addCategory("android.intent.category.LAUNCHER");
                                        if (messageObject2 == null) {
                                            dialogKey4 = dialogKey3;
                                            if (dialogKey4.story) {
                                            }
                                            StringBuilder sb62 = new StringBuilder();
                                            sb62.append("show extra notifications chatId ");
                                            sb62.append(j6);
                                            sb62.append(" topicId ");
                                            j12 = j10;
                                            sb62.append(j12);
                                            FileLog.d(sb62.toString());
                                            if (j12 != 0) {
                                            }
                                            intent22.putExtra("currentAccount", notificationsController3.currentAccount);
                                            PendingIntent activity2 = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent22, 1140850688);
                                            NotificationCompat.WearableExtender wearableExtender3 = new NotificationCompat.WearableExtender();
                                            if (action != null) {
                                            }
                                            int i302 = i11;
                                            arrayList9 = arrayList7;
                                            Intent intent32 = new Intent(ApplicationLoader.applicationContext, (Class<?>) AutoMessageHeardReceiver.class);
                                            intent32.addFlags(32);
                                            intent32.setAction("org.telegram.messenger.ACTION_MESSAGE_HEARD");
                                            intent32.putExtra(str13, j6);
                                            int i312 = i9;
                                            intent32.putExtra(str12, i312);
                                            intent32.putExtra("currentAccount", notificationsController3.currentAccount);
                                            bitmap3 = bitmapLoadMultipleAvatars;
                                            NotificationCompat.Action actionBuild22 = new NotificationCompat.Action.Builder(R.drawable.msg_markread, LocaleController.getString(R.string.MarkAsRead), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent32, 167772160)).setSemanticAction(2).setShowsUserInterface(false).build();
                                            if (!DialogObject.isEncryptedDialog(j6)) {
                                            }
                                            if (string4 == null) {
                                            }
                                            wearableExtender3.setBridgeTag("tgaccount" + j9);
                                            if (dialogKey4.story) {
                                            }
                                            NotificationCompat.Builder autoCancel2 = new NotificationCompat.Builder(ApplicationLoader.applicationContext).setContentTitle(str16).setSmallIcon(R.drawable.notification).setContentText(sb32.toString()).setAutoCancel(true);
                                            if (dialogKey4.story) {
                                            }
                                            category = autoCancel2.setNumber(arrayList10.size()).setColor(-15618822).setGroupSummary(false).setWhen(jMin).setShowWhen(true).setStyle(messagingStyle).setContentIntent(activity2).extend(wearableExtender3).setSortKey(String.valueOf(Long.MAX_VALUE - jMin)).setCategory(RemoteMessageConst.MessageBody.MSG);
                                            Intent intent42 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                            intent42.putExtra("messageDate", i5);
                                            intent42.putExtra("dialogId", j6);
                                            intent42.putExtra("currentAccount", notificationsController3.currentAccount);
                                            if (dialogKey4.story) {
                                            }
                                            if (messageObject3 == null) {
                                            }
                                            category.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, num.intValue(), intent42, 167772160));
                                            if (z5) {
                                            }
                                            if (messageObject4 == null) {
                                                tL_keyboardButtonCopy = null;
                                                if (tL_keyboardButtonCopy != null) {
                                                }
                                                if (dialogKey4.dialogId != UserObject.VERIFY) {
                                                }
                                                if (arrayList3.size() != 1) {
                                                    if (DialogObject.isEncryptedDialog(j6)) {
                                                    }
                                                    if (bitmap3 != null) {
                                                    }
                                                    if (!AndroidUtilities.needShowPasscode(false)) {
                                                        size = arrayList9.size();
                                                        i15 = 0;
                                                        while (i15 < size) {
                                                        }
                                                    }
                                                    if (chat4 == null) {
                                                        user6 = user5;
                                                        Notification notification32 = notification;
                                                        boolean z192 = z5;
                                                        if (Build.VERSION.SDK_INT >= 26) {
                                                        }
                                                        FileLog.d("showExtraNotifications: holders.add " + j6);
                                                        i6 = i24;
                                                        j7 = j9;
                                                        z9 = z13;
                                                        z10 = z192;
                                                        longSparseArray5 = longSparseArray8;
                                                        longSparseArray6 = longSparseArray4;
                                                        i7 = i25;
                                                        str8 = str14;
                                                        arrayList6 = arrayList3;
                                                        TLRPC.Chat chat72 = chat4;
                                                        sharedPreferences2 = sharedPreferences4;
                                                        notification2 = notification32;
                                                        arrayList5 = arrayList16;
                                                        arrayList5.add(new C1NotificationHolder(num.intValue(), j6, dialogKey4.story, j12, str16, user6, chat72, category, j2, str2, jArr, i, uri, i2, z, z2, z3, i3));
                                                        notificationsController2 = this;
                                                        notificationsController2.wearNotificationsIds.put(j6, num);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    personBuild = person2;
                }
            }
            i23 = i7 + 1;
            arrayList15 = arrayList5;
            size2 = i6;
            z15 = z9;
            arrayList12 = arrayList6;
            z4 = z10;
            notificationsSettings = sharedPreferences2;
            longSparseArray11 = longSparseArray3;
            clientUserId = j7;
            longSparseArray12 = longSparseArray6;
            str3 = str8;
            longSparseArray13 = longSparseArray5;
            notificationBuild = notification2;
            notificationsController3 = notificationsController2;
        }
        LongSparseArray longSparseArray16 = longSparseArray13;
        LongSparseArray longSparseArray17 = longSparseArray12;
        Notification notification4 = notificationBuild;
        NotificationsController notificationsController4 = notificationsController3;
        ArrayList arrayList24 = arrayList15;
        if (z4) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.d("show summary with id " + notificationsController4.notificationId);
            }
            try {
                notificationManager.notify(notificationsController4.notificationId, notification4);
                notificationsController = notificationsController4;
                arrayList = arrayList24;
            } catch (SecurityException e8) {
                FileLog.e(e8);
                notificationsController = this;
                arrayList = arrayList24;
                notificationsController.resetNotificationSound(builder, j, j2, str2, jArr, i, uri, i2, z, z2, z3, i3);
            }
        } else {
            notificationsController = notificationsController4;
            arrayList = arrayList24;
            if (notificationsController.openedInBubbleDialogs.isEmpty()) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("cancel summary with id " + notificationsController.notificationId);
                }
                notificationManager.cancel(notificationsController.notificationId);
            }
        }
        int i37 = 0;
        while (i37 < longSparseArray17.size()) {
            LongSparseArray longSparseArray18 = longSparseArray17;
            if (!notificationsController.openedInBubbleDialogs.contains(Long.valueOf(longSparseArray18.keyAt(i37)))) {
                Integer num4 = (Integer) longSparseArray18.valueAt(i37);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.d("cancel notification id " + num4);
                }
                notificationManager.cancel(num4.intValue());
            }
            i37++;
            longSparseArray17 = longSparseArray18;
        }
        ArrayList arrayList25 = new ArrayList(arrayList.size());
        FileLog.d("showExtraNotifications: holders.size()=" + arrayList.size());
        int size6 = arrayList.size();
        int i38 = 0;
        while (i38 < size6) {
            ArrayList arrayList26 = arrayList;
            C1NotificationHolder c1NotificationHolder = (C1NotificationHolder) arrayList26.get(i38);
            arrayList25.clear();
            if (Build.VERSION.SDK_INT < 29 || DialogObject.isEncryptedDialog(c1NotificationHolder.dialogId)) {
                longSparseArray = longSparseArray16;
            } else {
                NotificationCompat.Builder builder3 = c1NotificationHolder.notification;
                long j19 = c1NotificationHolder.dialogId;
                longSparseArray = longSparseArray16;
                String strCreateNotificationShortcut = createNotificationShortcut(builder3, j19, c1NotificationHolder.name, c1NotificationHolder.user, c1NotificationHolder.chat, (Person) longSparseArray.get(j19), !c1NotificationHolder.story);
                if (strCreateNotificationShortcut != null) {
                    arrayList25.add(strCreateNotificationShortcut);
                }
            }
            FileLog.d("showExtraNotifications: holders[" + i38 + "].call()");
            c1NotificationHolder.call();
            if (!unsupportedNotificationShortcut() && !arrayList25.isEmpty()) {
                ShortcutManagerCompat.removeDynamicShortcuts(ApplicationLoader.applicationContext, arrayList25);
            }
            i38++;
            arrayList = arrayList26;
            longSparseArray16 = longSparseArray;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(70:79|(1:81)(1:82)|83|(1:86)|85|87|(1:93)|94|(1:102)(2:98|(1:100)(1:101))|103|(62:105|(2:110|(1:115)(1:114))(1:109)|118|(1:120)(1:(1:123)(1:124))|121|125|(55:128|(0)(2:134|(1:136)(1:137))|138|(1:144)(1:143)|145|(2:(2:148|(1:150))(1:151)|(1:153)(49:154|163|(48:169|(1:171)|(4:174|(2:176|(1:178)(1:179))(1:180)|181|(4:187|188|(1:190)(1:191)|192)(1:186))(1:193)|194|195|(3:198|228|(1:230)(4:(3:(2:236|(1:238)(1:239))(1:234)|235|240)(1:241)|242|(1:244)|245))(4:199|(4:201|(7:203|(2:205|(1:207))(1:209)|208|(1:211)|212|(3:(1:216)(2:218|(1:220)(1:221))|217|222)|223)(1:225)|224|226)|649|227)|(1:254)(1:253)|(1:276)(3:259|(1:261)(1:262)|(2:264|(1:266)(3:267|(1:269)(2:270|(1:272)(40:274|(39:279|(1:281)|284|(4:286|(1:288)(1:289)|290|(1:292)(1:293))(1:294)|295|(6:299|332|(1:334)(1:335)|336|(1:338)(1:340)|339)(2:300|(1:(3:303|(1:305)(1:306)|307)(3:308|(1:310)(1:311)|312))(2:313|(7:(1:316)(1:318)|317|319|(1:321)(2:(1:323)(1:324)|325)|326|(1:328)(1:330)|329)(1:331)))|(1:342)(1:343)|344|(1:349)(1:348)|(1:353)(1:352)|(1:357)|(1:363)(1:362)|(7:365|(1:367)(1:368)|369|(1:371)|372|373|(1:375)(1:376))(1:377)|(3:639|381|(1:385))|(1:390)(1:391)|392|(1:394)(3:395|(4:397|(2:400|398)|654|401)(22:402|(5:404|(2:406|(1:408)(2:409|(1:411)))|412|(1:416)(2:418|(1:(3:423|(20:431|453|(1:460)|461|633|462|(1:464)|467|(3:469|470|471)(1:474)|475|(1:479)(10:(2:481|(1:483)(3:635|485|(4:487|(1:489)(1:490)|491|(1:493))))|497|(3:501|525|(1:527)(1:528))(1:(3:503|504|(1:506)(0))(2:507|(2:522|(1:524)(0))(2:509|(3:511|522|(0)(0))(3:512|(2:514|(1:516))(2:517|(2:519|(2:521|527)))|528))))|(1:588)(7:(3:535|(1:537)(1:538)|539)|(5:568|(1:570)(1:572)|571|(1:574)(2:576|(1:578)(1:(2:582|587)(2:583|(1:585)(1:586))))|575)(2:543|(6:545|(1:553)(1:(1:551)(1:552))|(0)(0)|571|(0)(0)|575)(9:554|(1:556)(3:558|(7:637|564|568|(0)(0)|571|(0)(0)|575)|566)|557|567|568|(0)(0)|571|(0)(0)|575))|590|(1:612)(4:598|(4:600|(3:602|(4:604|(1:606)|607|653)(2:608|652)|609)|651|610)|650|611)|(4:620|(1:622)(1:624)|623|625)|626|655)|589|590|(2:592|612)(0)|(7:614|616|618|620|(0)(0)|623|625)|626|655)|496|497|(4:499|501|525|(0)(0))(0)|(2:588|589)(0)|590|(0)(0)|(0)|626|655)|432)(3:433|(2:435|(1:444)(21:439|(0)(1:443)|453|(3:456|458|460)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655))|432)))|417)(2:448|(1:452))|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655)|445)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655)(1:282)|283|284|(0)(0)|295|(7:297|299|332|(0)(0)|336|(0)(0)|339)(0)|(0)(0)|344|(2:346|349)(0)|(1:353)(0)|(2:355|357)|(2:359|363)(0)|(0)(0)|(4:379|639|381|(2:383|385))|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655))|273))(1:275))|277|(0)(0)|283|284|(0)(0)|295|(0)(0)|(0)(0)|344|(0)(0)|(0)(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655)(1:168)|172|(0)(0)|194|195|(3:198|228|(0)(0))(0)|(1:254)(0)|(3:256|276|277)(0)|(0)(0)|283|284|(0)(0)|295|(0)(0)|(0)(0)|344|(0)(0)|(0)(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655))(1:155)|(2:157|(1:159)(1:160))(1:161)|162|163|(4:165|167|169|(1:172)(0))(0)|(0)(0)|194|195|(0)(0)|(0)(0)|(0)(0)|(0)(0)|283|284|(0)(0)|295|(0)(0)|(0)(0)|344|(0)(0)|(0)(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655)(1:129)|131|(1:133)(0)|138|(3:140|142|144)(0)|145|(0)(0)|(0)(0)|162|163|(0)(0)|(0)(0)|194|195|(0)(0)|(0)(0)|(0)(0)|(0)(0)|283|284|(0)(0)|295|(0)(0)|(0)(0)|344|(0)(0)|(0)(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655)(1:117)|116|118|(0)(0)|121|125|(2:128|(0)(2:131|(0)(0)))(0)|138|(0)(0)|145|(0)(0)|(0)(0)|162|163|(0)(0)|(0)(0)|194|195|(0)(0)|(0)(0)|(0)(0)|(0)(0)|283|284|(0)(0)|295|(0)(0)|(0)(0)|344|(0)(0)|(0)(0)|(0)|(0)(0)|(0)(0)|(0)|(0)(0)|392|(0)(0)|446|417|447|453|(0)|461|633|462|(0)|467|(0)(0)|475|(0)(0)|496|497|(0)(0)|(0)(0)|590|(0)(0)|(0)|626|655) */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x0b51, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0b6d, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x032e A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0362 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0369 A[PHI: r3
      0x0369: PHI (r3v8 org.telegram.tgnet.TLRPC$User) = (r3v7 org.telegram.tgnet.TLRPC$User), (r3v142 org.telegram.tgnet.TLRPC$User) binds: [B:130:0x035a, B:132:0x0360] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x037e A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03bd A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03c9 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03d5 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03e4 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03ef A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0591 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x05e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x05f5  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x06b4 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x06fb A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x077d  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x078d A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x08c2 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x08ce A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0916 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0921  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0929 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0930 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x093d  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0945  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x094a A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:377:0x096d  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0976  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x098d  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x09c3 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:395:0x09d4 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b0b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0b4a A[Catch: all -> 0x0b51, TryCatch #0 {all -> 0x0b51, blocks: (B:462:0x0b2f, B:464:0x0b4a, B:467:0x0b54, B:471:0x0b5b, B:475:0x0b63), top: B:633:0x0b2f }] */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0b62  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0b72 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0b78  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0bcd  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0bd0  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0c0a  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0c15  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0c19  */
    /* JADX WARN: Removed duplicated region for block: B:530:0x0c1e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:570:0x0d11 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:572:0x0d1c  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x0d21 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:576:0x0d2b  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0d5a A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:592:0x0d6d A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0e22  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0e28 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0e4e A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:624:0x0e60 A[Catch: Exception -> 0x0061, TryCatch #4 {Exception -> 0x0061, blocks: (B:13:0x0032, B:14:0x003e, B:16:0x0046, B:19:0x005d, B:23:0x006a, B:25:0x0074, B:27:0x0084, B:28:0x0089, B:31:0x008e, B:34:0x0094, B:35:0x00a7, B:37:0x00af, B:38:0x00e2, B:40:0x0103, B:43:0x010b, B:45:0x0114, B:48:0x011b, B:52:0x012f, B:71:0x01eb, B:73:0x0219, B:75:0x022b, B:77:0x0231, B:79:0x0235, B:81:0x0253, B:83:0x025a, B:87:0x0271, B:91:0x027d, B:93:0x0289, B:94:0x028f, B:96:0x029a, B:98:0x02a0, B:100:0x02ae, B:103:0x02ca, B:105:0x02dc, B:107:0x02ec, B:109:0x02f2, B:118:0x030e, B:120:0x032e, B:131:0x035c, B:133:0x0362, B:138:0x0378, B:140:0x037e, B:145:0x0386, B:148:0x0398, B:163:0x03c5, B:165:0x03c9, B:174:0x03ef, B:176:0x03f8, B:178:0x0400, B:181:0x042d, B:183:0x0438, B:194:0x04ab, B:199:0x04ca, B:201:0x04ee, B:203:0x0506, B:205:0x050a, B:226:0x0566, B:211:0x051a, B:212:0x0520, B:216:0x052d, B:217:0x0538, B:222:0x055a, B:218:0x053d, B:220:0x0542, B:221:0x054e, B:223:0x055e, B:227:0x0572, B:248:0x05e5, B:259:0x05fe, B:261:0x061a, B:264:0x0651, B:266:0x065b, B:279:0x06b4, B:284:0x06db, B:286:0x06fb, B:288:0x0737, B:290:0x0754, B:292:0x0766, B:295:0x0787, B:297:0x078d, B:303:0x07a5, B:305:0x07b3, B:307:0x07c6, B:344:0x0910, B:346:0x0916, B:355:0x0930, B:357:0x0936, B:365:0x094a, B:369:0x0957, B:372:0x0960, B:388:0x0988, B:392:0x0993, B:394:0x09c3, B:453:0x0ab2, B:456:0x0b0d, B:458:0x0b11, B:460:0x0b17, B:479:0x0b72, B:504:0x0bd5, B:532:0x0c22, B:541:0x0c61, B:543:0x0c69, B:545:0x0c6d, B:547:0x0c75, B:551:0x0c80, B:570:0x0d11, B:574:0x0d21, B:590:0x0d67, B:592:0x0d6d, B:594:0x0d71, B:596:0x0d7c, B:598:0x0d82, B:600:0x0d8c, B:602:0x0d9b, B:604:0x0da9, B:606:0x0dc8, B:607:0x0dcd, B:609:0x0dfd, B:610:0x0e0d, B:614:0x0e28, B:616:0x0e2e, B:618:0x0e36, B:620:0x0e3c, B:622:0x0e4e, B:623:0x0e5b, B:625:0x0e6e, B:624:0x0e60, B:626:0x0e71, B:578:0x0d2e, B:585:0x0d42, B:587:0x0d51, B:552:0x0ca9, B:553:0x0cae, B:554:0x0cb1, B:556:0x0cbd, B:567:0x0d0b, B:560:0x0cc5, B:562:0x0ccd, B:566:0x0d06, B:535:0x0c2c, B:537:0x0c34, B:539:0x0c5c, B:588:0x0d5a, B:514:0x0beb, B:519:0x0bfa, B:522:0x0c03, B:525:0x0c0e, B:481:0x0b7a, B:483:0x0b87, B:477:0x0b6d, B:395:0x09d4, B:397:0x09d8, B:398:0x09e1, B:400:0x09e9, B:401:0x09fa, B:402:0x0a02, B:404:0x0a09, B:408:0x0a18, B:411:0x0a24, B:412:0x0a2b, B:414:0x0a31, B:418:0x0a3c, B:420:0x0a45, B:423:0x0a4d, B:425:0x0a53, B:427:0x0a57, B:429:0x0a5f, B:435:0x0a70, B:437:0x0a76, B:439:0x0a7a, B:441:0x0a84, B:448:0x0a93, B:450:0x0aa2, B:452:0x0aa8, B:306:0x07bf, B:308:0x07f1, B:310:0x0801, B:312:0x0814, B:311:0x080d, B:319:0x0854, B:321:0x085c, B:326:0x0874, B:325:0x086f, B:332:0x08b6, B:334:0x08c2, B:336:0x08d5, B:335:0x08ce, B:289:0x0743, B:267:0x0672, B:269:0x0684, B:273:0x069b, B:270:0x068d, B:272:0x0691, B:228:0x057f, B:234:0x0598, B:235:0x05a3, B:240:0x05c5, B:242:0x05cb, B:245:0x05d2, B:236:0x05a8, B:238:0x05ad, B:239:0x05b9, B:187:0x0444, B:190:0x044f, B:192:0x049c, B:191:0x0468, B:179:0x040d, B:169:0x03d5, B:171:0x03e4, B:159:0x03b7, B:162:0x03bf, B:160:0x03ba, B:161:0x03bd, B:136:0x036f, B:137:0x0374, B:110:0x02f8, B:112:0x02fe, B:101:0x02bb, B:86:0x026e, B:54:0x013a, B:57:0x0142, B:60:0x014b, B:61:0x0152, B:62:0x0162, B:64:0x0169, B:65:0x017f, B:67:0x0186, B:69:0x018e, B:70:0x01c1, B:50:0x0124, B:72:0x020e, B:381:0x0979), top: B:641:0x0032, inners: #3 }] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r2v64, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r2v67, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r2v69, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r3v87, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v87, types: [org.telegram.messenger.MessageObject] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showOrUpdateNotification(boolean z) {
        MessageObject messageObject;
        Bitmap bitmap;
        long jLongValue;
        long jLongValue2;
        String str;
        TLRPC.Chat chat;
        boolean z2;
        Bitmap bitmap2;
        int notifyOverride;
        long j;
        boolean zIsGlobalNotificationsEnabled;
        TLRPC.User user;
        long j2;
        NotificationsController notificationsController;
        String title;
        boolean z3;
        String str2;
        String string;
        boolean z4;
        String str3;
        SharedPreferences sharedPreferences;
        String str4;
        String string2;
        long j3;
        TLRPC.User user2;
        SharedPreferences sharedPreferences2;
        long j4;
        String string3;
        NotificationCompat.Builder builder;
        boolean z5;
        MessageObject messageObject2;
        String stringForMessage;
        String strReplace;
        String str5;
        StringBuilder sb;
        boolean z6;
        boolean z7;
        String str6;
        NotificationCompat.Builder builder2;
        boolean z8;
        SharedPreferences sharedPreferences3;
        long j5;
        boolean z9;
        boolean z10;
        long j6;
        boolean z11;
        String path;
        boolean z12;
        String str7;
        long j7;
        String propertyString;
        int i;
        int i2;
        Integer numValueOf;
        boolean z13;
        String str8;
        TLRPC.Chat chat2;
        long j8;
        long j9;
        String string4;
        boolean z14;
        int i3;
        int i4;
        MessageObject messageObject3;
        Object obj;
        String str9;
        int i5;
        int i6;
        boolean z15;
        int iIntValue;
        boolean z16;
        int i7;
        String str10;
        boolean z17;
        boolean z18;
        String str11;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        TLRPC.Chat chat3;
        TLRPC.User user3;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        NotificationCompat.Builder builder3;
        long[] jArr;
        boolean z19;
        int i13;
        int i14;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        long j10;
        boolean z20;
        int i15;
        int i16;
        String string5;
        Context context;
        int i17;
        int i18;
        TLRPC.ReplyMarkup replyMarkup;
        int i19;
        MessageObject messageObject4;
        TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow;
        int i20;
        long j11;
        int i21;
        long[] jArr5;
        Uri uri;
        int i22;
        String str12;
        int ringerMode;
        String string6;
        boolean z21;
        String string7;
        boolean z22;
        String string8;
        boolean z23;
        boolean z24;
        int i23;
        int i24;
        int i25;
        int iElapsedRealtime;
        int i26;
        boolean z25;
        StringBuilder sb2;
        StringBuilder sb3;
        String pluralString;
        String str13 = "file://";
        if (!getUserConfig().isClientActivated() || ((this.pushMessages.isEmpty() && this.storyPushMessages.isEmpty()) || !(SharedConfig.showNotificationsForAllAccounts || this.currentAccount == UserConfig.selectedAccount))) {
            dismissNotification();
            return;
        }
        try {
            getConnectionsManager().resumeNetworkMaybe();
            int i27 = 0;
            long j12 = 0;
            StoryNotification storyNotification = null;
            while (i27 < this.pushMessages.size()) {
                MessageObject messageObject5 = this.pushMessages.get(i27);
                String str14 = str13;
                long j13 = messageObject5.messageOwner.date;
                if (j12 < j13) {
                    j12 = j13;
                    storyNotification = messageObject5;
                }
                i27++;
                str13 = str14;
            }
            String str15 = str13;
            StoryNotification storyNotification2 = storyNotification;
            for (int i28 = 0; i28 < this.storyPushMessages.size(); i28++) {
                StoryNotification storyNotification3 = this.storyPushMessages.get(i28);
                long j14 = storyNotification3.date;
                if (j12 < j14 / 1000) {
                    j12 = j14 / 1000;
                    storyNotification2 = storyNotification3;
                }
            }
            if (storyNotification2 == null) {
                return;
            }
            if (storyNotification2 instanceof StoryNotification) {
                StoryNotification storyNotification4 = storyNotification2;
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.date = (int) (System.currentTimeMillis() / 1000);
                int size = 0;
                boolean z26 = false;
                for (int i29 = 0; i29 < this.storyPushMessages.size(); i29++) {
                    z26 |= this.storyPushMessages.get(i29).hidden;
                    tL_message.date = Math.min(tL_message.date, (int) (this.storyPushMessages.get(i29).date / 1000));
                    size += this.storyPushMessages.get(i29).dateByIds.size();
                }
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                long j15 = storyNotification4.dialogId;
                tL_peerUser.user_id = j15;
                tL_message.dialog_id = j15;
                tL_message.peer_id = tL_peerUser;
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<Object> arrayList2 = new ArrayList<>();
                parseStoryPushes(arrayList, arrayList2);
                Bitmap bitmapLoadMultipleAvatars = SharedConfig.getDevicePerformanceClass() >= 1 ? loadMultipleAvatars(arrayList2) : null;
                String pluralString2 = (z26 || this.storyPushMessages.size() >= 2 || arrayList.isEmpty()) ? LocaleController.formatPluralString("Stories", size, new Object[0]) : arrayList.get(0);
                if (z26) {
                    pluralString = LocaleController.formatPluralString("StoryNotificationHidden", size, new Object[0]);
                } else if (arrayList.isEmpty()) {
                    pluralString = "";
                } else if (arrayList.size() == 1) {
                    pluralString = size == 1 ? LocaleController.getString("StoryNotificationSingle") : LocaleController.formatPluralString("StoryNotification1", size, arrayList.get(0));
                } else if (arrayList.size() == 2) {
                    pluralString = LocaleController.formatString(R.string.StoryNotification2, arrayList.get(0), arrayList.get(1));
                } else if (arrayList.size() == 3 && this.storyPushMessages.size() == 3) {
                    pluralString = LocaleController.formatString(R.string.StoryNotification3, cutLastName(arrayList.get(0)), cutLastName(arrayList.get(1)), cutLastName(arrayList.get(2)));
                } else {
                    pluralString = LocaleController.formatPluralString("StoryNotification4", this.storyPushMessages.size() - 2, cutLastName(arrayList.get(0)), cutLastName(arrayList.get(1)));
                    tL_message.message = pluralString;
                    MessageObject messageObject6 = new MessageObject(this.currentAccount, tL_message, tL_message.message, pluralString2, pluralString2, false, false, false, false);
                    messageObject6.isStoryPush = true;
                    messageObject = messageObject6;
                    bitmap = bitmapLoadMultipleAvatars;
                }
                tL_message.message = pluralString;
                MessageObject messageObject62 = new MessageObject(this.currentAccount, tL_message, tL_message.message, pluralString2, pluralString2, false, false, false, false);
                messageObject62.isStoryPush = true;
                messageObject = messageObject62;
                bitmap = bitmapLoadMultipleAvatars;
            } else {
                messageObject = this.pushMessages.get(0);
                bitmap = null;
            }
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            int i30 = notificationsSettings.getInt("dismissDate", 0);
            if (!messageObject.isStoryPush && messageObject.messageOwner.date <= i30) {
                dismissNotification();
                return;
            }
            long dialogId = messageObject.getDialogId();
            long topicId = MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, getMessagesController().isForum(messageObject));
            boolean z27 = messageObject.isStoryPush;
            long fromChatId = messageObject.messageOwner.mentioned ? messageObject.getFromChatId() : dialogId;
            messageObject.getId();
            TLRPC.Peer peer = messageObject.messageOwner.peer_id;
            long j16 = peer.chat_id;
            if (j16 == 0) {
                j16 = peer.channel_id;
            }
            long j17 = j16;
            long j18 = peer.user_id;
            if (messageObject.isFromUser() && (j18 == 0 || j18 == getUserConfig().getClientUserId())) {
                j18 = messageObject.messageOwner.from_id.user_id;
            }
            if (messageObject.getDialogId() != UserObject.VERIFY || messageObject.getForwardedFromId() == null) {
                jLongValue = j18;
                jLongValue2 = j17;
            } else if (messageObject.getForwardedFromId().longValue() >= 0) {
                jLongValue = messageObject.getForwardedFromId().longValue();
                jLongValue2 = 0;
            } else {
                jLongValue2 = messageObject.getForwardedFromId().longValue();
                jLongValue = 0;
            }
            TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(jLongValue));
            if (jLongValue2 != 0) {
                str = "currentAccount";
                TLRPC.Chat chat4 = getMessagesController().getChat(Long.valueOf(jLongValue2));
                if (chat4 == null && messageObject.isFcmMessage()) {
                    z2 = messageObject.localChannel;
                    chat = chat4;
                } else if (!ChatObject.isChannel(chat4) || chat4.megagroup) {
                    chat = chat4;
                } else {
                    chat = chat4;
                    z2 = true;
                }
                String str16 = str;
                TLRPC.Chat chat5 = chat;
                long j19 = jLongValue2;
                bitmap2 = bitmap;
                int i31 = i30;
                notifyOverride = getNotifyOverride(notificationsSettings, fromChatId, topicId);
                if (notifyOverride != -1) {
                    Boolean boolValueOf = Boolean.valueOf(z2);
                    boolean z28 = messageObject.isReactionPush;
                    zIsGlobalNotificationsEnabled = isGlobalNotificationsEnabled(dialogId, boolValueOf, z28, z28);
                    j = j19;
                } else if (notifyOverride != 2) {
                    j = j19;
                    zIsGlobalNotificationsEnabled = true;
                } else {
                    j = j19;
                    zIsGlobalNotificationsEnabled = false;
                }
                if (j != 0 || chat5 != null) {
                    user = user4;
                    if (user != null) {
                        j2 = topicId;
                        notificationsController = this;
                        title = chat5 != null ? notificationsController.getTitle(chat5) : UserObject.getUserName(user);
                    }
                    boolean z29 = AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter;
                    z3 = !"samsung".equalsIgnoreCase(Build.MANUFACTURER);
                    if (DialogObject.isEncryptedDialog(dialogId)) {
                        str2 = title;
                    } else {
                        if (z3) {
                            str2 = title;
                            if (notificationsController.pushDialogs.size() <= 1) {
                            }
                        } else {
                            str2 = title;
                        }
                        if (!z29) {
                            string = str2;
                            z4 = true;
                            if (!messageObject.isReactionPush || messageObject.isStoryReactionPush) {
                                str3 = string;
                                sharedPreferences = notificationsSettings;
                                str4 = str16;
                                if (sharedPreferences.getBoolean("EnableReactionsPreview", true)) {
                                    string2 = LocaleController.getString(R.string.NotificationHiddenName);
                                }
                                if (z3) {
                                    user2 = user;
                                    if (UserConfig.getActivatedAccountsCount() <= 1) {
                                        string3 = "";
                                    } else if (notificationsController.pushDialogs.size() == 1) {
                                        string3 = UserObject.getFirstName(getUserConfig().getCurrentUser());
                                    } else {
                                        string3 = UserObject.getFirstName(getUserConfig().getCurrentUser()) + "・";
                                    }
                                    j3 = j;
                                    if (notificationsController.pushDialogs.size() != 1 || Build.VERSION.SDK_INT < 23) {
                                        if (notificationsController.pushDialogs.size() == 1) {
                                            sb3 = new StringBuilder();
                                            sb3.append(string3);
                                            sharedPreferences2 = sharedPreferences;
                                            sb3.append(LocaleController.formatPluralString("NewMessages", notificationsController.total_unread_count, new Object[0]));
                                            j4 = dialogId;
                                        } else {
                                            sharedPreferences2 = sharedPreferences;
                                            sb3 = new StringBuilder();
                                            sb3.append(string3);
                                            j4 = dialogId;
                                            sb3.append(LocaleController.formatString(R.string.NotificationMessagesPeopleDisplayOrder, LocaleController.formatPluralString("NewMessages", notificationsController.total_unread_count, new Object[0]), LocaleController.formatPluralString("FromChats", notificationsController.pushDialogs.size(), new Object[0])));
                                        }
                                        string3 = sb3.toString();
                                    } else {
                                        sharedPreferences2 = sharedPreferences;
                                        j4 = dialogId;
                                    }
                                } else {
                                    j3 = j;
                                    user2 = user;
                                    sharedPreferences2 = sharedPreferences;
                                    j4 = dialogId;
                                    string3 = "";
                                }
                                builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                                if (notificationsController.pushMessages.size() <= 1 || !z3) {
                                    z5 = zIsGlobalNotificationsEnabled;
                                    boolean[] zArr = new boolean[1];
                                    String str17 = string3;
                                    messageObject2 = messageObject;
                                    stringForMessage = notificationsController.getStringForMessage(messageObject2, false, zArr, null);
                                    boolean zIsSilentMessage = notificationsController.isSilentMessage(messageObject2);
                                    if (stringForMessage != null) {
                                        return;
                                    }
                                    if (z4) {
                                        if (chat5 != null && z3) {
                                            sb = new StringBuilder();
                                            sb.append(" @ ");
                                            sb.append(string2);
                                        } else if (zArr[0]) {
                                            sb = new StringBuilder();
                                            sb.append(string2);
                                            sb.append(": ");
                                        } else {
                                            sb = new StringBuilder();
                                            sb.append(string2);
                                            sb.append(" ");
                                        }
                                        strReplace = stringForMessage.replace(sb.toString(), "");
                                    } else {
                                        strReplace = stringForMessage;
                                    }
                                    builder.setContentText(strReplace);
                                    if (!z3) {
                                        str17 = strReplace;
                                    }
                                    builder.setStyle(new NotificationCompat.BigTextStyle().bigText(strReplace));
                                    str5 = stringForMessage;
                                    string3 = str17;
                                    z6 = zIsSilentMessage;
                                } else {
                                    builder.setContentText(string3);
                                    NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
                                    inboxStyle.setBigContentTitle(string2);
                                    int iMin = Math.min(10, notificationsController.pushMessages.size());
                                    z5 = zIsGlobalNotificationsEnabled;
                                    boolean[] zArr2 = new boolean[1];
                                    MessageObject messageObject7 = messageObject;
                                    int i32 = 0;
                                    ?? r14 = 2;
                                    String str18 = null;
                                    while (i32 < iMin) {
                                        int i33 = iMin;
                                        MessageObject messageObject8 = notificationsController.pushMessages.get(i32);
                                        NotificationCompat.Builder builder4 = builder;
                                        String str19 = string3;
                                        int i34 = i32;
                                        String stringForMessage2 = notificationsController.getStringForMessage(messageObject8, false, zArr2, null);
                                        if (stringForMessage2 != null) {
                                            if (messageObject8.isStoryPush) {
                                                i26 = i31;
                                            } else {
                                                i26 = i31;
                                                if (messageObject8.messageOwner.date <= i26) {
                                                    z25 = r14;
                                                }
                                            }
                                            boolean zIsSilentMessage2 = r14;
                                            if (r14 == 2) {
                                                str18 = stringForMessage2;
                                                zIsSilentMessage2 = notificationsController.isSilentMessage(messageObject8);
                                            }
                                            if (notificationsController.pushDialogs.size() == 1 && z4) {
                                                if (chat5 != null) {
                                                    sb2 = new StringBuilder();
                                                    sb2.append(" @ ");
                                                    sb2.append(string2);
                                                } else if (zArr2[0]) {
                                                    sb2 = new StringBuilder();
                                                    sb2.append(string2);
                                                    sb2.append(": ");
                                                } else {
                                                    sb2 = new StringBuilder();
                                                    sb2.append(string2);
                                                    sb2.append(" ");
                                                }
                                                stringForMessage2 = stringForMessage2.replace(sb2.toString(), "");
                                            }
                                            inboxStyle.addLine(stringForMessage2);
                                            z25 = zIsSilentMessage2;
                                        } else {
                                            i26 = i31;
                                            z25 = r14;
                                        }
                                        i32 = i34 + 1;
                                        i31 = i26;
                                        iMin = i33;
                                        string3 = str19;
                                        builder = builder4;
                                        r14 = z25;
                                    }
                                    inboxStyle.setSummaryText(string3);
                                    builder.setStyle(inboxStyle);
                                    str5 = str18;
                                    messageObject2 = messageObject7;
                                    z6 = r14;
                                }
                                z7 = !z || !z5 || MediaController.getInstance().isRecordingAudio() || z6;
                                if (z7 || j4 != fromChatId || chat5 == null) {
                                    str6 = str5;
                                    builder2 = builder;
                                    z8 = z7;
                                    sharedPreferences3 = sharedPreferences2;
                                    j5 = j4;
                                } else {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(NotificationsSettingsFacade.PROPERTY_CUSTOM);
                                    j5 = j4;
                                    sb4.append(j5);
                                    sharedPreferences3 = sharedPreferences2;
                                    if (sharedPreferences3.getBoolean(sb4.toString(), false)) {
                                        i24 = sharedPreferences3.getInt("smart_max_count_" + j5, 2);
                                        StringBuilder sb5 = new StringBuilder();
                                        z8 = z7;
                                        sb5.append("smart_delay_");
                                        sb5.append(j5);
                                        i23 = sharedPreferences3.getInt(sb5.toString(), 180);
                                    } else {
                                        z8 = z7;
                                        i23 = 180;
                                        i24 = 2;
                                    }
                                    if (i24 != 0) {
                                        Point point = (Point) notificationsController.smartNotificationsDialogs.get(j5);
                                        if (point == null) {
                                            str6 = str5;
                                            builder2 = builder;
                                            notificationsController.smartNotificationsDialogs.put(j5, new Point(1, (int) (SystemClock.elapsedRealtime() / 1000)));
                                        } else {
                                            str6 = str5;
                                            builder2 = builder;
                                            if (point.y + i23 < SystemClock.elapsedRealtime() / 1000) {
                                                iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
                                                i25 = 1;
                                            } else {
                                                int i35 = point.x;
                                                if (i35 >= i24) {
                                                    z9 = true;
                                                    if (z9) {
                                                        StringBuilder sb6 = new StringBuilder();
                                                        sb6.append("sound_enabled_");
                                                        z10 = z9;
                                                        j6 = j2;
                                                        sb6.append(getSharedPrefKey(j5, j6));
                                                        if (!sharedPreferences3.getBoolean(sb6.toString(), true)) {
                                                            z11 = true;
                                                        }
                                                        path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                                                        z12 = !ApplicationLoader.mainInterfacePaused;
                                                        getSharedPrefKey(j5, j6);
                                                        if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                                                            int property = notificationsController.dialogsNotificationsFacade.getProperty("vibrate_", j5, j6, 0);
                                                            int property2 = notificationsController.dialogsNotificationsFacade.getProperty("priority_", j5, j6, 3);
                                                            str7 = string3;
                                                            long property3 = notificationsController.dialogsNotificationsFacade.getProperty("sound_document_id_", j5, j6, 0L);
                                                            if (property3 != 0) {
                                                                propertyString = getMediaDataController().ringtoneDataStore.getSoundPath(property3);
                                                                z24 = true;
                                                            } else {
                                                                propertyString = notificationsController.dialogsNotificationsFacade.getPropertyString("sound_path_", j5, j6, null);
                                                                z24 = false;
                                                            }
                                                            int property4 = notificationsController.dialogsNotificationsFacade.getProperty("color_", j5, j6, 0);
                                                            if (property4 != 0) {
                                                                numValueOf = Integer.valueOf(property4);
                                                                z13 = z24;
                                                                j7 = j6;
                                                                i = property2;
                                                                i2 = property;
                                                            } else {
                                                                z13 = z24;
                                                                j7 = j6;
                                                                i = property2;
                                                                i2 = property;
                                                                numValueOf = null;
                                                            }
                                                        } else {
                                                            str7 = string3;
                                                            j7 = j6;
                                                            propertyString = null;
                                                            i = 3;
                                                            i2 = 0;
                                                            numValueOf = null;
                                                            z13 = false;
                                                        }
                                                        if (messageObject2.isReactionPush || messageObject2.isStoryReactionPush) {
                                                            MessageObject messageObject9 = messageObject2;
                                                            str8 = string2;
                                                            chat2 = chat5;
                                                            j8 = jLongValue;
                                                            j9 = sharedPreferences3.getLong("ReactionSoundDocId", 0L);
                                                            if (j9 == 0) {
                                                                string4 = getMediaDataController().ringtoneDataStore.getSoundPath(j9);
                                                                z14 = true;
                                                            } else {
                                                                string4 = sharedPreferences3.getString("ReactionSoundPath", path);
                                                                z14 = false;
                                                            }
                                                            i3 = sharedPreferences3.getInt("vibrate_react", 0);
                                                            i4 = sharedPreferences3.getInt("priority_react", 1);
                                                            String str20 = string4;
                                                            int i36 = sharedPreferences3.getInt("ReactionsLed", -16776961);
                                                            messageObject3 = messageObject9;
                                                            obj = path;
                                                            if (messageObject3.isStoryReactionPush) {
                                                                str9 = str20;
                                                                i5 = 4;
                                                                i6 = 4;
                                                            } else {
                                                                str9 = str20;
                                                                i5 = 4;
                                                                i6 = 5;
                                                            }
                                                            z15 = z14;
                                                            iIntValue = i36;
                                                        } else {
                                                            MessageObject messageObject10 = messageObject2;
                                                            if (j3 == 0) {
                                                                str8 = string2;
                                                                chat2 = chat5;
                                                                long j20 = jLongValue;
                                                                if (j20 != 0) {
                                                                    j8 = j20;
                                                                    long j21 = sharedPreferences3.getLong(z27 ? "StoriesSoundDocId" : "GlobalSoundDocId", 0L);
                                                                    if (j21 != 0) {
                                                                        string6 = getMediaDataController().ringtoneDataStore.getSoundPath(j21);
                                                                        z21 = true;
                                                                    } else {
                                                                        string6 = sharedPreferences3.getString(z27 ? "StoriesSoundPath" : "GlobalSoundPath", path);
                                                                        z21 = false;
                                                                    }
                                                                    int i37 = sharedPreferences3.getInt("vibrate_messages", 0);
                                                                    int i38 = sharedPreferences3.getInt("priority_messages", 1);
                                                                    String str21 = string6;
                                                                    int i39 = sharedPreferences3.getInt("MessagesLed", -16776961);
                                                                    obj = path;
                                                                    i4 = i38;
                                                                    i5 = 4;
                                                                    i6 = z27 ? 3 : 1;
                                                                    i3 = i37;
                                                                    iIntValue = i39;
                                                                    messageObject3 = messageObject10;
                                                                    z15 = z21;
                                                                    str9 = str21;
                                                                } else {
                                                                    j8 = j20;
                                                                    obj = path;
                                                                    messageObject3 = messageObject10;
                                                                    i5 = 4;
                                                                    str9 = null;
                                                                    iIntValue = -16776961;
                                                                    i3 = 0;
                                                                    i4 = 0;
                                                                    i6 = 1;
                                                                    z15 = false;
                                                                }
                                                            } else if (z2) {
                                                                str8 = string2;
                                                                chat2 = chat5;
                                                                long j22 = sharedPreferences3.getLong("ChannelSoundDocId", 0L);
                                                                if (j22 != 0) {
                                                                    string8 = getMediaDataController().ringtoneDataStore.getSoundPath(j22);
                                                                    z23 = true;
                                                                } else {
                                                                    string8 = sharedPreferences3.getString("ChannelSoundPath", path);
                                                                    z23 = false;
                                                                }
                                                                int i40 = sharedPreferences3.getInt("vibrate_channel", 0);
                                                                z15 = z23;
                                                                i4 = sharedPreferences3.getInt("priority_channel", 1);
                                                                str9 = string8;
                                                                j8 = jLongValue;
                                                                i6 = 2;
                                                                obj = path;
                                                                i3 = i40;
                                                                i5 = 4;
                                                                iIntValue = sharedPreferences3.getInt("ChannelLed", -16776961);
                                                                messageObject3 = messageObject10;
                                                            } else {
                                                                str8 = string2;
                                                                chat2 = chat5;
                                                                long j23 = sharedPreferences3.getLong("GroupSoundDocId", 0L);
                                                                if (j23 != 0) {
                                                                    string7 = getMediaDataController().ringtoneDataStore.getSoundPath(j23);
                                                                    z22 = true;
                                                                } else {
                                                                    string7 = sharedPreferences3.getString("GroupSoundPath", path);
                                                                    z22 = false;
                                                                }
                                                                i3 = sharedPreferences3.getInt("vibrate_group", 0);
                                                                i4 = sharedPreferences3.getInt("priority_group", 1);
                                                                z15 = z22;
                                                                j8 = jLongValue;
                                                                messageObject3 = messageObject10;
                                                                obj = path;
                                                                iIntValue = sharedPreferences3.getInt("GroupLed", -16776961);
                                                                str9 = string7;
                                                                i5 = 4;
                                                                i6 = 0;
                                                            }
                                                        }
                                                        if (i3 == i5) {
                                                            z16 = true;
                                                            i3 = 0;
                                                        } else {
                                                            z16 = false;
                                                        }
                                                        if (TextUtils.isEmpty(propertyString) || TextUtils.equals(str9, propertyString)) {
                                                            z13 = z15;
                                                            i7 = 3;
                                                            str10 = str9;
                                                            z17 = true;
                                                        } else {
                                                            str10 = propertyString;
                                                            i7 = 3;
                                                            z17 = false;
                                                        }
                                                        if (i == i7 || i4 == i) {
                                                            i = i4;
                                                        } else {
                                                            z17 = false;
                                                        }
                                                        if (numValueOf != null && numValueOf.intValue() != iIntValue) {
                                                            iIntValue = numValueOf.intValue();
                                                            z17 = false;
                                                        }
                                                        if (i2 == 0 || i2 == 4 || i2 == i3) {
                                                            z18 = z17;
                                                            i2 = i3;
                                                        } else {
                                                            z18 = false;
                                                        }
                                                        if (z12) {
                                                            str11 = !sharedPreferences3.getBoolean("EnableInAppSounds", true) ? null : str10;
                                                            if (!sharedPreferences3.getBoolean("EnableInAppVibrate", true)) {
                                                                i2 = 2;
                                                            }
                                                            i9 = i2;
                                                            i8 = sharedPreferences3.getBoolean("EnableInAppPopup", true) ? 2 : 0;
                                                        } else {
                                                            str11 = str10;
                                                            int i41 = i2;
                                                            i8 = i;
                                                            i9 = i41;
                                                        }
                                                        if (z16 && i9 != 2) {
                                                            try {
                                                                ringerMode = audioManager.getRingerMode();
                                                                if (ringerMode != 0 && ringerMode != 1) {
                                                                    i9 = 2;
                                                                }
                                                            } catch (Exception e) {
                                                                FileLog.e(e);
                                                            }
                                                        }
                                                        if (z11) {
                                                            str11 = null;
                                                            i9 = 0;
                                                            i8 = 0;
                                                            i10 = 0;
                                                        } else {
                                                            i10 = iIntValue;
                                                        }
                                                        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                                        intent.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                                        intent.setFlags(ConnectionsManager.FileTypeFile);
                                                        if (messageObject3.isStoryReactionPush) {
                                                            intent.putExtra("storyId", Math.abs(messageObject3.getId()));
                                                            i12 = i10;
                                                        } else {
                                                            if (!messageObject3.isStoryPush) {
                                                                i11 = i10;
                                                                if (DialogObject.isEncryptedDialog(j5)) {
                                                                    i12 = i11;
                                                                    chat3 = chat2;
                                                                    user3 = user2;
                                                                    if (notificationsController.pushDialogs.size() == 1 && j5 != globalSecretChatId) {
                                                                        intent.putExtra("encId", DialogObject.getEncryptedChatId(j5));
                                                                    }
                                                                } else {
                                                                    if (notificationsController.pushDialogs.size() == 1) {
                                                                        if (j3 != 0) {
                                                                            intent.putExtra("chatId", j3);
                                                                        } else if (j8 != 0) {
                                                                            intent.putExtra("userId", j8);
                                                                        }
                                                                    }
                                                                    if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
                                                                        i12 = i11;
                                                                        chat3 = chat2;
                                                                    } else if (notificationsController.pushDialogs.size() == 1 && Build.VERSION.SDK_INT < 28) {
                                                                        if (chat2 != null) {
                                                                            chat3 = chat2;
                                                                            TLRPC.ChatPhoto chatPhoto = chat3.photo;
                                                                            if (chatPhoto != null && (fileLocation2 = chatPhoto.photo_small) != null && fileLocation2.volume_id != 0 && fileLocation2.local_id != 0) {
                                                                                fileLocation = fileLocation2;
                                                                                i12 = i11;
                                                                                user3 = user2;
                                                                                String str22 = str4;
                                                                                intent.putExtra(str22, notificationsController.currentAccount);
                                                                                long j24 = j5;
                                                                                builder3 = builder2;
                                                                                String str23 = str11;
                                                                                int i42 = i9;
                                                                                builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                                                                builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                                                                if (chat3 == null && user3 != null && (str12 = user3.phone) != null && str12.length() > 0) {
                                                                                    builder3.addPerson("tel:+" + user3.phone);
                                                                                }
                                                                                Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                                                intent2.putExtra("messageDate", messageObject3.messageOwner.date);
                                                                                intent2.putExtra(str22, notificationsController.currentAccount);
                                                                                if (messageObject3.isStoryPush) {
                                                                                    intent2.putExtra("story", true);
                                                                                }
                                                                                if (messageObject3.isStoryReactionPush) {
                                                                                    i22 = 1;
                                                                                } else {
                                                                                    i22 = 1;
                                                                                    intent2.putExtra("storyReaction", true);
                                                                                }
                                                                                builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent2, 167772160));
                                                                                if (bitmap2 != null) {
                                                                                    if (fileLocation != null) {
                                                                                        jArr = null;
                                                                                        BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(fileLocation, null, "50_50");
                                                                                        if (imageFromMemory != null) {
                                                                                            builder3.setLargeIcon(imageFromMemory.getBitmap());
                                                                                        } else {
                                                                                            try {
                                                                                                File pathToAttach = getFileLoader().getPathToAttach(fileLocation, true);
                                                                                                if (pathToAttach.exists()) {
                                                                                                    float fDp = 160.0f / AndroidUtilities.dp(50.0f);
                                                                                                    BitmapFactory.Options options = new BitmapFactory.Options();
                                                                                                    options.inSampleSize = fDp < 1.0f ? 1 : (int) fDp;
                                                                                                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(pathToAttach.getAbsolutePath(), options);
                                                                                                    if (bitmapDecodeFile != null) {
                                                                                                        builder3.setLargeIcon(bitmapDecodeFile);
                                                                                                    }
                                                                                                }
                                                                                            } catch (Throwable unused) {
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    if (!z || z6) {
                                                                                        builder3.setPriority(-1);
                                                                                        if (Build.VERSION.SDK_INT < 26) {
                                                                                            z19 = true;
                                                                                            i13 = 2;
                                                                                        } else {
                                                                                            z19 = true;
                                                                                            i13 = 0;
                                                                                        }
                                                                                    } else if (i8 == 0) {
                                                                                        builder3.setPriority(0);
                                                                                        if (Build.VERSION.SDK_INT >= 26) {
                                                                                            z19 = true;
                                                                                            i13 = 3;
                                                                                        }
                                                                                    } else {
                                                                                        int i43 = 1;
                                                                                        if (i8 == 1) {
                                                                                            builder3.setPriority(i43);
                                                                                            if (Build.VERSION.SDK_INT < 26) {
                                                                                                z19 = true;
                                                                                                i13 = 4;
                                                                                            }
                                                                                        } else if (i8 == 2) {
                                                                                            i43 = 1;
                                                                                            builder3.setPriority(i43);
                                                                                            if (Build.VERSION.SDK_INT < 26) {
                                                                                            }
                                                                                        } else {
                                                                                            if (i8 == 4) {
                                                                                                builder3.setPriority(-2);
                                                                                                if (Build.VERSION.SDK_INT >= 26) {
                                                                                                    z19 = true;
                                                                                                    i13 = 1;
                                                                                                }
                                                                                            } else if (i8 == 5) {
                                                                                                builder3.setPriority(-1);
                                                                                                if (Build.VERSION.SDK_INT >= 26) {
                                                                                                    z19 = true;
                                                                                                    i13 = 2;
                                                                                                }
                                                                                            }
                                                                                            z19 = true;
                                                                                            i13 = 0;
                                                                                        }
                                                                                    }
                                                                                    if (z6 != z19 && !z11) {
                                                                                        if (!z12 || (sharedPreferences3.getBoolean("EnableInAppPreview", z19) && str6 != null)) {
                                                                                            builder3.setTicker(str6.length() > 100 ? str6.substring(0, 100).replace('\n', ' ').trim() + "..." : str6);
                                                                                        }
                                                                                        if (str23 == null || str23.equalsIgnoreCase("NoSound")) {
                                                                                            jArr5 = jArr;
                                                                                            if (i12 == 0) {
                                                                                                i14 = i12;
                                                                                                builder3.setLights(i14, 1000, 1000);
                                                                                            } else {
                                                                                                i14 = i12;
                                                                                            }
                                                                                            if (i42 != 2) {
                                                                                                jArr2 = new long[]{0, 0};
                                                                                                builder3.setVibrate(jArr2);
                                                                                            } else if (i42 == 1) {
                                                                                                jArr2 = new long[]{0, 100, 0, 100};
                                                                                                builder3.setVibrate(jArr2);
                                                                                            } else if (i42 == 0 || i42 == 4) {
                                                                                                builder3.setDefaults(2);
                                                                                                jArr3 = jArr5;
                                                                                                jArr4 = new long[0];
                                                                                            } else if (i42 == 3) {
                                                                                                long[] jArr6 = {0, 1000};
                                                                                                builder3.setVibrate(jArr6);
                                                                                                jArr = jArr5;
                                                                                                jArr2 = jArr6;
                                                                                            } else {
                                                                                                jArr3 = jArr5;
                                                                                                jArr4 = jArr;
                                                                                            }
                                                                                            jArr = jArr5;
                                                                                        } else {
                                                                                            int i44 = Build.VERSION.SDK_INT;
                                                                                            if (i44 >= 26) {
                                                                                                if (str23.equalsIgnoreCase("Default") || str23.equals(obj)) {
                                                                                                    jArr5 = Settings.System.DEFAULT_NOTIFICATION_URI;
                                                                                                } else if (z13) {
                                                                                                    ?? uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str23));
                                                                                                    ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile, 1);
                                                                                                    jArr5 = uriForFile;
                                                                                                } else {
                                                                                                    jArr5 = Uri.parse(str23);
                                                                                                }
                                                                                                if (i12 == 0) {
                                                                                                }
                                                                                                if (i42 != 2) {
                                                                                                }
                                                                                                jArr = jArr5;
                                                                                            } else {
                                                                                                if (str23.equals(obj)) {
                                                                                                    uri = Settings.System.DEFAULT_NOTIFICATION_URI;
                                                                                                } else {
                                                                                                    if (i44 >= 24 && str23.startsWith(str15) && !AndroidUtilities.isInternalUri(Uri.parse(str23))) {
                                                                                                        try {
                                                                                                            Uri uriForFile2 = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", new File(str23.replace(str15, "")));
                                                                                                            ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", uriForFile2, 1);
                                                                                                            builder3.setSound(uriForFile2, 5);
                                                                                                        } catch (Exception unused2) {
                                                                                                        }
                                                                                                        jArr5 = jArr;
                                                                                                        if (i12 == 0) {
                                                                                                        }
                                                                                                        if (i42 != 2) {
                                                                                                        }
                                                                                                        jArr = jArr5;
                                                                                                    }
                                                                                                    uri = Uri.parse(str23);
                                                                                                }
                                                                                                builder3.setSound(uri, 5);
                                                                                                jArr5 = jArr;
                                                                                                if (i12 == 0) {
                                                                                                }
                                                                                                if (i42 != 2) {
                                                                                                }
                                                                                                jArr = jArr5;
                                                                                            }
                                                                                        }
                                                                                        if (!AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter || messageObject3.getDialogId() != 777000 || (replyMarkup = messageObject3.messageOwner.reply_markup) == null) {
                                                                                            j10 = j24;
                                                                                            z20 = false;
                                                                                        } else {
                                                                                            ArrayList arrayList3 = replyMarkup.rows;
                                                                                            int size2 = arrayList3.size();
                                                                                            boolean z30 = false;
                                                                                            int i45 = 0;
                                                                                            while (i45 < size2) {
                                                                                                TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow2 = (TLRPC.TL_keyboardButtonRow) arrayList3.get(i45);
                                                                                                int size3 = tL_keyboardButtonRow2.buttons.size();
                                                                                                int i46 = 0;
                                                                                                while (i46 < size3) {
                                                                                                    TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) tL_keyboardButtonRow2.buttons.get(i46);
                                                                                                    ArrayList arrayList4 = arrayList3;
                                                                                                    if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                                                                                                        i19 = size2;
                                                                                                        Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationCallbackReceiver.class);
                                                                                                        intent3.putExtra(str22, notificationsController.currentAccount);
                                                                                                        tL_keyboardButtonRow = tL_keyboardButtonRow2;
                                                                                                        i20 = size3;
                                                                                                        j11 = j24;
                                                                                                        intent3.putExtra("did", j11);
                                                                                                        byte[] bArr = keyboardButton.data;
                                                                                                        if (bArr != null) {
                                                                                                            intent3.putExtra(RemoteMessageConst.DATA, bArr);
                                                                                                        }
                                                                                                        intent3.putExtra("mid", messageObject3.getId());
                                                                                                        String str24 = keyboardButton.text;
                                                                                                        Context context2 = ApplicationLoader.applicationContext;
                                                                                                        int i47 = notificationsController.lastButtonId;
                                                                                                        messageObject4 = messageObject3;
                                                                                                        notificationsController.lastButtonId = i47 + 1;
                                                                                                        builder3.addAction(0, str24, PendingIntent.getBroadcast(context2, i47, intent3, 167772160));
                                                                                                        i21 = 1;
                                                                                                        z30 = true;
                                                                                                    } else {
                                                                                                        i19 = size2;
                                                                                                        messageObject4 = messageObject3;
                                                                                                        tL_keyboardButtonRow = tL_keyboardButtonRow2;
                                                                                                        i20 = size3;
                                                                                                        j11 = j24;
                                                                                                        i21 = 1;
                                                                                                    }
                                                                                                    i46 += i21;
                                                                                                    size2 = i19;
                                                                                                    j24 = j11;
                                                                                                    arrayList3 = arrayList4;
                                                                                                    tL_keyboardButtonRow2 = tL_keyboardButtonRow;
                                                                                                    size3 = i20;
                                                                                                    messageObject3 = messageObject4;
                                                                                                }
                                                                                                i45++;
                                                                                                size2 = size2;
                                                                                            }
                                                                                            j10 = j24;
                                                                                            z20 = z30;
                                                                                        }
                                                                                        if (!z20 && (i15 = Build.VERSION.SDK_INT) < 24 && SharedConfig.passcodeHash.length() == 0 && hasMessagesToReply()) {
                                                                                            Intent intent4 = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupReplyReceiver.class);
                                                                                            intent4.putExtra(str22, notificationsController.currentAccount);
                                                                                            if (i15 > 19) {
                                                                                                i16 = R.drawable.ic_ab_reply2;
                                                                                                string5 = LocaleController.getString(R.string.Reply);
                                                                                                context = ApplicationLoader.applicationContext;
                                                                                                i17 = 167772160;
                                                                                                i18 = 2;
                                                                                            } else {
                                                                                                i16 = R.drawable.ic_ab_reply;
                                                                                                string5 = LocaleController.getString(R.string.Reply);
                                                                                                context = ApplicationLoader.applicationContext;
                                                                                                i17 = 167772160;
                                                                                                i18 = 2;
                                                                                            }
                                                                                            builder3.addAction(i16, string5, PendingIntent.getBroadcast(context, i18, intent4, i17));
                                                                                        }
                                                                                        showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                                                        scheduleNotificationRepeat();
                                                                                    }
                                                                                    i14 = i12;
                                                                                    jArr2 = new long[]{0, 0};
                                                                                    builder3.setVibrate(jArr2);
                                                                                    jArr4 = jArr2;
                                                                                    jArr3 = jArr;
                                                                                    if (AndroidUtilities.needShowPasscode()) {
                                                                                        j10 = j24;
                                                                                        z20 = false;
                                                                                    }
                                                                                    if (!z20) {
                                                                                        Intent intent42 = new Intent(ApplicationLoader.applicationContext, (Class<?>) PopupReplyReceiver.class);
                                                                                        intent42.putExtra(str22, notificationsController.currentAccount);
                                                                                        if (i15 > 19) {
                                                                                        }
                                                                                        builder3.addAction(i16, string5, PendingIntent.getBroadcast(context, i18, intent42, i17));
                                                                                    }
                                                                                    showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                                                    scheduleNotificationRepeat();
                                                                                }
                                                                                builder3.setLargeIcon(bitmap2);
                                                                                jArr = null;
                                                                                if (z) {
                                                                                    builder3.setPriority(-1);
                                                                                    if (Build.VERSION.SDK_INT < 26) {
                                                                                    }
                                                                                }
                                                                                if (z6 != z19) {
                                                                                    i14 = i12;
                                                                                    jArr2 = new long[]{0, 0};
                                                                                    builder3.setVibrate(jArr2);
                                                                                    jArr4 = jArr2;
                                                                                    jArr3 = jArr;
                                                                                }
                                                                                if (AndroidUtilities.needShowPasscode()) {
                                                                                }
                                                                                if (!z20) {
                                                                                }
                                                                                showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                                                scheduleNotificationRepeat();
                                                                            }
                                                                            i12 = i11;
                                                                        } else {
                                                                            chat3 = chat2;
                                                                            if (user2 != null) {
                                                                                user3 = user2;
                                                                                TLRPC.UserProfilePhoto userProfilePhoto = user3.photo;
                                                                                if (userProfilePhoto != null && (fileLocation = userProfilePhoto.photo_small) != null) {
                                                                                    i12 = i11;
                                                                                    if (fileLocation.volume_id == 0 || fileLocation.local_id == 0) {
                                                                                    }
                                                                                    String str222 = str4;
                                                                                    intent.putExtra(str222, notificationsController.currentAccount);
                                                                                    long j242 = j5;
                                                                                    builder3 = builder2;
                                                                                    String str232 = str11;
                                                                                    int i422 = i9;
                                                                                    builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                                                                    builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                                                                    if (chat3 == null) {
                                                                                        builder3.addPerson("tel:+" + user3.phone);
                                                                                    }
                                                                                    Intent intent22 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                                                    intent22.putExtra("messageDate", messageObject3.messageOwner.date);
                                                                                    intent22.putExtra(str222, notificationsController.currentAccount);
                                                                                    if (messageObject3.isStoryPush) {
                                                                                    }
                                                                                    if (messageObject3.isStoryReactionPush) {
                                                                                    }
                                                                                    builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent22, 167772160));
                                                                                    if (bitmap2 != null) {
                                                                                    }
                                                                                    jArr = null;
                                                                                    if (z) {
                                                                                    }
                                                                                    if (z6 != z19) {
                                                                                    }
                                                                                    if (AndroidUtilities.needShowPasscode()) {
                                                                                    }
                                                                                    if (!z20) {
                                                                                    }
                                                                                    showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                                                    scheduleNotificationRepeat();
                                                                                }
                                                                                i12 = i11;
                                                                            }
                                                                            i12 = i11;
                                                                        }
                                                                    }
                                                                    user3 = user2;
                                                                }
                                                                fileLocation = null;
                                                                String str2222 = str4;
                                                                intent.putExtra(str2222, notificationsController.currentAccount);
                                                                long j2422 = j5;
                                                                builder3 = builder2;
                                                                String str2322 = str11;
                                                                int i4222 = i9;
                                                                builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                                                builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                                                if (chat3 == null) {
                                                                }
                                                                Intent intent222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                                intent222.putExtra("messageDate", messageObject3.messageOwner.date);
                                                                intent222.putExtra(str2222, notificationsController.currentAccount);
                                                                if (messageObject3.isStoryPush) {
                                                                }
                                                                if (messageObject3.isStoryReactionPush) {
                                                                }
                                                                builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent222, 167772160));
                                                                if (bitmap2 != null) {
                                                                }
                                                                jArr = null;
                                                                if (z) {
                                                                }
                                                                if (z6 != z19) {
                                                                }
                                                                if (AndroidUtilities.needShowPasscode()) {
                                                                }
                                                                if (!z20) {
                                                                }
                                                                showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                                scheduleNotificationRepeat();
                                                            }
                                                            long[] jArr7 = new long[notificationsController.storyPushMessages.size()];
                                                            int i48 = 0;
                                                            while (i48 < notificationsController.storyPushMessages.size()) {
                                                                jArr7[i48] = notificationsController.storyPushMessages.get(i48).dialogId;
                                                                i48++;
                                                                i10 = i10;
                                                            }
                                                            i11 = i10;
                                                            intent.putExtra("storyDialogIds", jArr7);
                                                            i12 = i11;
                                                        }
                                                        chat3 = chat2;
                                                        user3 = user2;
                                                        fileLocation = null;
                                                        String str22222 = str4;
                                                        intent.putExtra(str22222, notificationsController.currentAccount);
                                                        long j24222 = j5;
                                                        builder3 = builder2;
                                                        String str23222 = str11;
                                                        int i42222 = i9;
                                                        builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                                        builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                                        if (chat3 == null) {
                                                        }
                                                        Intent intent2222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                        intent2222.putExtra("messageDate", messageObject3.messageOwner.date);
                                                        intent2222.putExtra(str22222, notificationsController.currentAccount);
                                                        if (messageObject3.isStoryPush) {
                                                        }
                                                        if (messageObject3.isStoryReactionPush) {
                                                        }
                                                        builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent2222, 167772160));
                                                        if (bitmap2 != null) {
                                                        }
                                                        jArr = null;
                                                        if (z) {
                                                        }
                                                        if (z6 != z19) {
                                                        }
                                                        if (AndroidUtilities.needShowPasscode()) {
                                                        }
                                                        if (!z20) {
                                                        }
                                                        showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                        scheduleNotificationRepeat();
                                                    }
                                                    z10 = z9;
                                                    j6 = j2;
                                                    z11 = z10;
                                                    path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                                                    z12 = !ApplicationLoader.mainInterfacePaused;
                                                    getSharedPrefKey(j5, j6);
                                                    if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                                                    }
                                                    if (messageObject2.isReactionPush) {
                                                        MessageObject messageObject92 = messageObject2;
                                                        str8 = string2;
                                                        chat2 = chat5;
                                                        j8 = jLongValue;
                                                        j9 = sharedPreferences3.getLong("ReactionSoundDocId", 0L);
                                                        if (j9 == 0) {
                                                        }
                                                        i3 = sharedPreferences3.getInt("vibrate_react", 0);
                                                        i4 = sharedPreferences3.getInt("priority_react", 1);
                                                        String str202 = string4;
                                                        int i362 = sharedPreferences3.getInt("ReactionsLed", -16776961);
                                                        messageObject3 = messageObject92;
                                                        obj = path;
                                                        if (messageObject3.isStoryReactionPush) {
                                                        }
                                                        z15 = z14;
                                                        iIntValue = i362;
                                                    }
                                                    if (i3 == i5) {
                                                    }
                                                    if (TextUtils.isEmpty(propertyString)) {
                                                        z13 = z15;
                                                        i7 = 3;
                                                        str10 = str9;
                                                        z17 = true;
                                                    }
                                                    if (i == i7) {
                                                        i = i4;
                                                    }
                                                    if (numValueOf != null) {
                                                        iIntValue = numValueOf.intValue();
                                                        z17 = false;
                                                    }
                                                    if (i2 == 0) {
                                                        z18 = z17;
                                                        i2 = i3;
                                                    }
                                                    if (z12) {
                                                    }
                                                    if (z16) {
                                                        ringerMode = audioManager.getRingerMode();
                                                        if (ringerMode != 0) {
                                                            i9 = 2;
                                                        }
                                                    }
                                                    if (z11) {
                                                    }
                                                    Intent intent5 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                                    intent5.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                                    intent5.setFlags(ConnectionsManager.FileTypeFile);
                                                    if (messageObject3.isStoryReactionPush) {
                                                    }
                                                    chat3 = chat2;
                                                    user3 = user2;
                                                    fileLocation = null;
                                                    String str222222 = str4;
                                                    intent5.putExtra(str222222, notificationsController.currentAccount);
                                                    long j242222 = j5;
                                                    builder3 = builder2;
                                                    String str232222 = str11;
                                                    int i422222 = i9;
                                                    builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent5, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                                    builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                                    if (chat3 == null) {
                                                    }
                                                    Intent intent22222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                                    intent22222.putExtra("messageDate", messageObject3.messageOwner.date);
                                                    intent22222.putExtra(str222222, notificationsController.currentAccount);
                                                    if (messageObject3.isStoryPush) {
                                                    }
                                                    if (messageObject3.isStoryReactionPush) {
                                                    }
                                                    builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent22222, 167772160));
                                                    if (bitmap2 != null) {
                                                    }
                                                    jArr = null;
                                                    if (z) {
                                                    }
                                                    if (z6 != z19) {
                                                    }
                                                    if (AndroidUtilities.needShowPasscode()) {
                                                    }
                                                    if (!z20) {
                                                    }
                                                    showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                                    scheduleNotificationRepeat();
                                                }
                                                i25 = i35 + 1;
                                                iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
                                            }
                                            point.set(i25, iElapsedRealtime);
                                        }
                                    } else {
                                        str6 = str5;
                                        builder2 = builder;
                                    }
                                }
                                z9 = z8;
                                if (z9) {
                                }
                                z11 = z10;
                                path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                                z12 = !ApplicationLoader.mainInterfacePaused;
                                getSharedPrefKey(j5, j6);
                                if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                                }
                                if (messageObject2.isReactionPush) {
                                }
                                if (i3 == i5) {
                                }
                                if (TextUtils.isEmpty(propertyString)) {
                                }
                                if (i == i7) {
                                }
                                if (numValueOf != null) {
                                }
                                if (i2 == 0) {
                                }
                                if (z12) {
                                }
                                if (z16) {
                                }
                                if (z11) {
                                }
                                Intent intent52 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                                intent52.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                                intent52.setFlags(ConnectionsManager.FileTypeFile);
                                if (messageObject3.isStoryReactionPush) {
                                }
                                chat3 = chat2;
                                user3 = user2;
                                fileLocation = null;
                                String str2222222 = str4;
                                intent52.putExtra(str2222222, notificationsController.currentAccount);
                                long j2422222 = j5;
                                builder3 = builder2;
                                String str2322222 = str11;
                                int i4222222 = i9;
                                builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent52, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                                builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                                if (chat3 == null) {
                                }
                                Intent intent222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                                intent222222.putExtra("messageDate", messageObject3.messageOwner.date);
                                intent222222.putExtra(str2222222, notificationsController.currentAccount);
                                if (messageObject3.isStoryPush) {
                                }
                                if (messageObject3.isStoryReactionPush) {
                                }
                                builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent222222, 167772160));
                                if (bitmap2 != null) {
                                }
                                jArr = null;
                                if (z) {
                                }
                                if (z6 != z19) {
                                }
                                if (AndroidUtilities.needShowPasscode()) {
                                }
                                if (!z20) {
                                }
                                showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                                scheduleNotificationRepeat();
                            }
                            str3 = string;
                            sharedPreferences = notificationsSettings;
                            str4 = str16;
                            string2 = str3;
                            if (z3) {
                            }
                            builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                            if (notificationsController.pushMessages.size() <= 1) {
                                z5 = zIsGlobalNotificationsEnabled;
                                boolean[] zArr3 = new boolean[1];
                                String str172 = string3;
                                messageObject2 = messageObject;
                                stringForMessage = notificationsController.getStringForMessage(messageObject2, false, zArr3, null);
                                boolean zIsSilentMessage3 = notificationsController.isSilentMessage(messageObject2);
                                if (stringForMessage != null) {
                                }
                            }
                            if (z) {
                            }
                            if (z7) {
                                str6 = str5;
                                builder2 = builder;
                                z8 = z7;
                                sharedPreferences3 = sharedPreferences2;
                                j5 = j4;
                                z9 = z8;
                            }
                            if (z9) {
                            }
                            z11 = z10;
                            path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                            z12 = !ApplicationLoader.mainInterfacePaused;
                            getSharedPrefKey(j5, j6);
                            if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                            }
                            if (messageObject2.isReactionPush) {
                            }
                            if (i3 == i5) {
                            }
                            if (TextUtils.isEmpty(propertyString)) {
                            }
                            if (i == i7) {
                            }
                            if (numValueOf != null) {
                            }
                            if (i2 == 0) {
                            }
                            if (z12) {
                            }
                            if (z16) {
                            }
                            if (z11) {
                            }
                            Intent intent522 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                            intent522.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                            intent522.setFlags(ConnectionsManager.FileTypeFile);
                            if (messageObject3.isStoryReactionPush) {
                            }
                            chat3 = chat2;
                            user3 = user2;
                            fileLocation = null;
                            String str22222222 = str4;
                            intent522.putExtra(str22222222, notificationsController.currentAccount);
                            long j24222222 = j5;
                            builder3 = builder2;
                            String str23222222 = str11;
                            int i42222222 = i9;
                            builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent522, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                            builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                            if (chat3 == null) {
                            }
                            Intent intent2222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                            intent2222222.putExtra("messageDate", messageObject3.messageOwner.date);
                            intent2222222.putExtra(str22222222, notificationsController.currentAccount);
                            if (messageObject3.isStoryPush) {
                            }
                            if (messageObject3.isStoryReactionPush) {
                            }
                            builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent2222222, 167772160));
                            if (bitmap2 != null) {
                            }
                            jArr = null;
                            if (z) {
                            }
                            if (z6 != z19) {
                            }
                            if (AndroidUtilities.needShowPasscode()) {
                            }
                            if (!z20) {
                            }
                            showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                            scheduleNotificationRepeat();
                        }
                    }
                    string = LocaleController.getString(z29 ? j != 0 ? R.string.NotificationHiddenChatName : R.string.NotificationHiddenName : R.string.AppName);
                    z4 = false;
                    if (messageObject.isReactionPush) {
                        str3 = string;
                        sharedPreferences = notificationsSettings;
                        str4 = str16;
                        if (sharedPreferences.getBoolean("EnableReactionsPreview", true)) {
                            string2 = str3;
                        }
                    }
                    if (z3) {
                    }
                    builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                    if (notificationsController.pushMessages.size() <= 1) {
                    }
                    if (z) {
                    }
                    if (z7) {
                    }
                    if (z9) {
                    }
                    z11 = z10;
                    path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                    z12 = !ApplicationLoader.mainInterfacePaused;
                    getSharedPrefKey(j5, j6);
                    if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                    }
                    if (messageObject2.isReactionPush) {
                    }
                    if (i3 == i5) {
                    }
                    if (TextUtils.isEmpty(propertyString)) {
                    }
                    if (i == i7) {
                    }
                    if (numValueOf != null) {
                    }
                    if (i2 == 0) {
                    }
                    if (z12) {
                    }
                    if (z16) {
                    }
                    if (z11) {
                    }
                    Intent intent5222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                    intent5222.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                    intent5222.setFlags(ConnectionsManager.FileTypeFile);
                    if (messageObject3.isStoryReactionPush) {
                    }
                    chat3 = chat2;
                    user3 = user2;
                    fileLocation = null;
                    String str222222222 = str4;
                    intent5222.putExtra(str222222222, notificationsController.currentAccount);
                    long j242222222 = j5;
                    builder3 = builder2;
                    String str232222222 = str11;
                    int i422222222 = i9;
                    builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent5222, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                    builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                    if (chat3 == null) {
                    }
                    Intent intent22222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                    intent22222222.putExtra("messageDate", messageObject3.messageOwner.date);
                    intent22222222.putExtra(str222222222, notificationsController.currentAccount);
                    if (messageObject3.isStoryPush) {
                    }
                    if (messageObject3.isStoryReactionPush) {
                    }
                    builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent22222222, 167772160));
                    if (bitmap2 != null) {
                    }
                    jArr = null;
                    if (z) {
                    }
                    if (z6 != z19) {
                    }
                    if (AndroidUtilities.needShowPasscode()) {
                    }
                    if (!z20) {
                    }
                    showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                    scheduleNotificationRepeat();
                }
                user = user4;
                if (!messageObject.isFcmMessage()) {
                    title = messageObject.localName;
                    j2 = topicId;
                    notificationsController = this;
                }
                if (AndroidUtilities.needShowPasscode()) {
                }
                z3 = !"samsung".equalsIgnoreCase(Build.MANUFACTURER);
                if (DialogObject.isEncryptedDialog(dialogId)) {
                }
                string = LocaleController.getString(z29 ? j != 0 ? R.string.NotificationHiddenChatName : R.string.NotificationHiddenName : R.string.AppName);
                z4 = false;
                if (messageObject.isReactionPush) {
                }
                if (z3) {
                }
                builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
                if (notificationsController.pushMessages.size() <= 1) {
                }
                if (z) {
                }
                if (z7) {
                }
                if (z9) {
                }
                z11 = z10;
                path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
                z12 = !ApplicationLoader.mainInterfacePaused;
                getSharedPrefKey(j5, j6);
                if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
                }
                if (messageObject2.isReactionPush) {
                }
                if (i3 == i5) {
                }
                if (TextUtils.isEmpty(propertyString)) {
                }
                if (i == i7) {
                }
                if (numValueOf != null) {
                }
                if (i2 == 0) {
                }
                if (z12) {
                }
                if (z16) {
                }
                if (z11) {
                }
                Intent intent52222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                intent52222.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
                intent52222.setFlags(ConnectionsManager.FileTypeFile);
                if (messageObject3.isStoryReactionPush) {
                }
                chat3 = chat2;
                user3 = user2;
                fileLocation = null;
                String str2222222222 = str4;
                intent52222.putExtra(str2222222222, notificationsController.currentAccount);
                long j2422222222 = j5;
                builder3 = builder2;
                String str2322222222 = str11;
                int i4222222222 = i9;
                builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent52222, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
                builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
                if (chat3 == null) {
                }
                Intent intent222222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
                intent222222222.putExtra("messageDate", messageObject3.messageOwner.date);
                intent222222222.putExtra(str2222222222, notificationsController.currentAccount);
                if (messageObject3.isStoryPush) {
                }
                if (messageObject3.isStoryReactionPush) {
                }
                builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent222222222, 167772160));
                if (bitmap2 != null) {
                }
                jArr = null;
                if (z) {
                }
                if (z6 != z19) {
                }
                if (AndroidUtilities.needShowPasscode()) {
                }
                if (!z20) {
                }
                showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
                scheduleNotificationRepeat();
            }
            str = "currentAccount";
            chat = null;
            z2 = false;
            String str162 = str;
            TLRPC.Chat chat52 = chat;
            long j192 = jLongValue2;
            bitmap2 = bitmap;
            int i312 = i30;
            notifyOverride = getNotifyOverride(notificationsSettings, fromChatId, topicId);
            if (notifyOverride != -1) {
            }
            if (j != 0) {
                user = user4;
                if (user != null) {
                    if (!messageObject.isFcmMessage()) {
                    }
                }
            }
            if (AndroidUtilities.needShowPasscode()) {
            }
            z3 = !"samsung".equalsIgnoreCase(Build.MANUFACTURER);
            if (DialogObject.isEncryptedDialog(dialogId)) {
            }
            string = LocaleController.getString(z29 ? j != 0 ? R.string.NotificationHiddenChatName : R.string.NotificationHiddenName : R.string.AppName);
            z4 = false;
            if (messageObject.isReactionPush) {
            }
            if (z3) {
            }
            builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext);
            if (notificationsController.pushMessages.size() <= 1) {
            }
            if (z) {
            }
            if (z7) {
            }
            if (z9) {
            }
            z11 = z10;
            path = Settings.System.DEFAULT_NOTIFICATION_URI.getPath();
            z12 = !ApplicationLoader.mainInterfacePaused;
            getSharedPrefKey(j5, j6);
            if (notificationsController.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_CUSTOM, j5, j6, false)) {
            }
            if (messageObject2.isReactionPush) {
            }
            if (i3 == i5) {
            }
            if (TextUtils.isEmpty(propertyString)) {
            }
            if (i == i7) {
            }
            if (numValueOf != null) {
            }
            if (i2 == 0) {
            }
            if (z12) {
            }
            if (z16) {
            }
            if (z11) {
            }
            Intent intent522222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
            intent522222.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
            intent522222.setFlags(ConnectionsManager.FileTypeFile);
            if (messageObject3.isStoryReactionPush) {
            }
            chat3 = chat2;
            user3 = user2;
            fileLocation = null;
            String str22222222222 = str4;
            intent522222.putExtra(str22222222222, notificationsController.currentAccount);
            long j24222222222 = j5;
            builder3 = builder2;
            String str23222222222 = str11;
            int i42222222222 = i9;
            builder3.setContentTitle(str8).setSmallIcon(R.drawable.notification).setAutoCancel(true).setNumber(notificationsController.total_unread_count).setContentIntent(PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent522222, 1140850688)).setGroup(notificationsController.notificationGroup).setGroupSummary(true).setShowWhen(true).setWhen(messageObject3.messageOwner.date * 1000).setColor(-15618822);
            builder3.setCategory(RemoteMessageConst.MessageBody.MSG);
            if (chat3 == null) {
            }
            Intent intent2222222222 = new Intent(ApplicationLoader.applicationContext, (Class<?>) NotificationDismissReceiver.class);
            intent2222222222.putExtra("messageDate", messageObject3.messageOwner.date);
            intent2222222222.putExtra(str22222222222, notificationsController.currentAccount);
            if (messageObject3.isStoryPush) {
            }
            if (messageObject3.isStoryReactionPush) {
            }
            builder3.setDeleteIntent(PendingIntent.getBroadcast(ApplicationLoader.applicationContext, i22, intent2222222222, 167772160));
            if (bitmap2 != null) {
            }
            jArr = null;
            if (z) {
            }
            if (z6 != z19) {
            }
            if (AndroidUtilities.needShowPasscode()) {
            }
            if (!z20) {
            }
            showExtraNotifications(builder3, str7, j10, j7, str2, jArr4, i14, jArr3, i13, z18, z12, z11, i6);
            scheduleNotificationRepeat();
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    private void updateStoryPushesRunnable() {
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < this.storyPushMessages.size(); i++) {
            Iterator<Pair<Long, Long>> it = this.storyPushMessages.get(i).dateByIds.values().iterator();
            while (it.hasNext()) {
                jMin = Math.min(jMin, ((Long) it.next().second).longValue());
            }
        }
        DispatchQueue dispatchQueue = notificationsQueue;
        dispatchQueue.cancelRunnable(this.checkStoryPushesRunnable);
        long jCurrentTimeMillis = jMin - System.currentTimeMillis();
        if (jMin != Long.MAX_VALUE) {
            dispatchQueue.postRunnable(this.checkStoryPushesRunnable, Math.max(0L, jCurrentTimeMillis));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:190:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0481 A[PHI: r2
      0x0481: PHI (r2v54 java.lang.String) = 
      (r2v53 java.lang.String)
      (r2v60 java.lang.String)
      (r2v62 java.lang.String)
      (r2v63 java.lang.String)
      (r2v64 java.lang.String)
      (r2v65 java.lang.String)
     binds: [B:220:0x047f, B:217:0x046b, B:214:0x0466, B:206:0x045a, B:201:0x0452, B:197:0x044b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0483 A[PHI: r2
      0x0483: PHI (r2v56 java.lang.String) = 
      (r2v53 java.lang.String)
      (r2v60 java.lang.String)
      (r2v62 java.lang.String)
      (r2v63 java.lang.String)
      (r2v64 java.lang.String)
      (r2v65 java.lang.String)
     binds: [B:220:0x047f, B:217:0x046b, B:214:0x0466, B:206:0x045a, B:201:0x0452, B:197:0x044b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0546 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0598 A[LOOP:1: B:272:0x0593->B:274:0x0598, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x05f5  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x05a2 A[EDGE_INSN: B:326:0x05a2->B:275:0x05a2 BREAK  A[LOOP:1: B:272:0x0593->B:274:0x0598], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String validateChannelId(long j, long j2, String str, long[] jArr, int i, Uri uri, int i2, boolean z, boolean z2, boolean z3, int i3) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String string;
        String str7;
        String string2;
        String str8;
        String string3;
        String string4;
        StringBuilder sb;
        String str9;
        String str10;
        String str11;
        String str12;
        NotificationsController notificationsController;
        long j3;
        String str13;
        String str14;
        boolean z4;
        String str15;
        int i4;
        String str16;
        long[] jArr2;
        String string5;
        String str17;
        String str18;
        boolean z5;
        String str19;
        int i5;
        String str20;
        Uri uri2;
        String strMD5;
        StringBuilder sb2;
        boolean z6;
        boolean z7;
        long[] jArr3;
        String str21;
        String str22;
        String str23;
        int i6;
        long[] jArr4;
        SharedPreferences.Editor editorEdit;
        boolean z8;
        String str24;
        boolean z9;
        int i7;
        String str25;
        int i8;
        String str26;
        String str27;
        ensureGroupsCreated();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        String string6 = "stories";
        if (z3) {
            str4 = "other" + this.currentAccount;
            str5 = null;
        } else {
            if (i3 == 2) {
                str2 = "channels" + this.currentAccount;
                str3 = "overwrite_channel";
            } else if (i3 == 0) {
                str2 = "groups" + this.currentAccount;
                str3 = "overwrite_group";
            } else if (i3 == 3) {
                str2 = "stories" + this.currentAccount;
                str3 = "overwrite_stories";
            } else if (i3 == 4 || i3 == 5) {
                str2 = "reactions" + this.currentAccount;
                str3 = "overwrite_reactions";
            } else {
                str2 = "private" + this.currentAccount;
                str3 = "overwrite_private";
            }
            String str28 = str3;
            str4 = str2;
            str5 = str28;
        }
        boolean z10 = !z && DialogObject.isEncryptedDialog(j);
        boolean z11 = (z2 || str5 == null || !notificationsSettings.getBoolean(str5, false)) ? false : true;
        if (uri == null) {
            StringBuilder sb3 = new StringBuilder();
            str6 = "reactions";
            sb3.append("NoSound");
            sb3.append(2);
            string = sb3.toString();
        } else {
            str6 = "reactions";
            string = uri.toString();
        }
        String strMD52 = Utilities.MD5(string);
        if (strMD52 != null) {
            str7 = "private";
            if (strMD52.length() > 5) {
                strMD52 = strMD52.substring(0, 5);
            }
        } else {
            str7 = "private";
        }
        if (z3) {
            string2 = LocaleController.getString(R.string.NotificationsSilent);
            string6 = "silent";
        } else {
            if (z) {
                String string7 = LocaleController.getString(z2 ? R.string.NotificationsInAppDefault : R.string.NotificationsDefault);
                if (i3 == 2) {
                    if (z2) {
                        str8 = "channels_ia";
                        string3 = string7;
                    } else {
                        string3 = string7;
                        str8 = "channels";
                    }
                } else if (i3 != 0) {
                    if (i3 == 3) {
                        if (z2) {
                            str8 = "stories_ia";
                        } else {
                            string3 = string7;
                            str8 = string6;
                        }
                    } else if (i3 == 4 || i3 == 5) {
                        str8 = z2 ? "reactions_ia" : str6;
                    } else if (z2) {
                        str8 = "private_ia";
                    } else {
                        string3 = string7;
                        str8 = str7;
                    }
                    string3 = string7;
                } else if (z2) {
                    str8 = "groups_ia";
                    string3 = string7;
                } else {
                    string3 = string7;
                    str8 = "groups";
                }
                String str29 = str8 + "_" + strMD52;
                string4 = notificationsSettings.getString(str29, null);
                String string8 = notificationsSettings.getString(str29 + "_s", null);
                StringBuilder sb4 = new StringBuilder();
                if (string4 == null) {
                    NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(string4);
                    if (BuildVars.LOGS_ENABLED) {
                        str14 = str4;
                        StringBuilder sb5 = new StringBuilder();
                        str13 = "channel_";
                        sb5.append("current channel for ");
                        sb5.append(string4);
                        sb5.append(" = ");
                        sb5.append(notificationChannel);
                        FileLog.d(sb5.toString());
                    } else {
                        str13 = "channel_";
                        str14 = str4;
                    }
                    if (notificationChannel == null) {
                        str10 = "_s";
                        jArr2 = jArr;
                        sb = sb4;
                        str12 = "secret";
                        notificationsController = this;
                        j3 = j;
                        z4 = z11;
                        str15 = "_";
                        str16 = str29;
                        i4 = i;
                        str18 = null;
                        str17 = null;
                        string5 = null;
                        z5 = false;
                        if (z5) {
                            str19 = str10;
                            if (!z4) {
                            }
                            i5 = 0;
                            while (true) {
                                str20 = str19;
                                if (i5 < jArr2.length) {
                                }
                                sb.append(jArr2[i5]);
                                i5++;
                                str19 = str20;
                            }
                            sb.append(i4);
                            uri2 = uri;
                            if (uri2 != null) {
                            }
                            sb.append(i2);
                            if (!z) {
                                sb.append(str12);
                            }
                            strMD5 = Utilities.MD5(sb.toString());
                            if (!z3) {
                                systemNotificationManager.deleteNotificationChannel(string5);
                                if (BuildVars.LOGS_ENABLED) {
                                }
                                string5 = null;
                            }
                        }
                        if (string5 == null) {
                        }
                        return string5;
                    }
                    if (!z3 && !z11) {
                        int importance = notificationChannel.getImportance();
                        Uri sound = notificationChannel.getSound();
                        long[] vibrationPattern = notificationChannel.getVibrationPattern();
                        z4 = z11;
                        boolean zShouldVibrate = notificationChannel.shouldVibrate();
                        if (zShouldVibrate || vibrationPattern != null) {
                            z7 = zShouldVibrate;
                            jArr3 = vibrationPattern;
                        } else {
                            z7 = zShouldVibrate;
                            jArr3 = new long[]{0, 0};
                        }
                        int lightColor = notificationChannel.getLightColor();
                        if (jArr3 != null) {
                            for (long j4 : jArr3) {
                                sb4.append(j4);
                            }
                        }
                        sb4.append(lightColor);
                        if (sound != null) {
                            sb4.append(sound.toString());
                        }
                        sb4.append(importance);
                        if (!z && z10) {
                            sb4.append("secret");
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("current channel settings for " + string4 + " = " + ((Object) sb4) + " old = " + string8);
                        }
                        String strMD53 = Utilities.MD5(sb4.toString());
                        sb4.setLength(0);
                        if (z2 && i2 != importance) {
                            str10 = "_s";
                            jArr2 = jArr;
                            i4 = i;
                            sb = sb4;
                            str21 = string8;
                            str22 = string4;
                            str12 = "secret";
                            notificationsController = this;
                            str23 = strMD53;
                            str15 = "_";
                            z5 = false;
                            z4 = true;
                            j3 = j;
                            str16 = str29;
                        } else if (strMD53.equals(string8)) {
                            str10 = "_s";
                            jArr2 = jArr;
                            i4 = i;
                            sb = sb4;
                            str21 = string8;
                            str22 = string4;
                            str12 = "secret";
                            notificationsController = this;
                            str23 = strMD53;
                            str15 = "_";
                            j3 = j;
                            str16 = str29;
                            z5 = false;
                        } else {
                            if (importance == 0) {
                                SharedPreferences.Editor editorEdit2 = notificationsSettings.edit();
                                if (z) {
                                    if (!z2) {
                                        if (i3 == 3) {
                                            editorEdit2.putBoolean("EnableAllStories", false);
                                        } else if (i3 == 4) {
                                            editorEdit2.putBoolean("EnableReactionsMessages", true);
                                            editorEdit2.putBoolean("EnableReactionsStories", true);
                                        } else {
                                            editorEdit2.putInt(getGlobalNotificationsKey(i3), Integer.MAX_VALUE);
                                        }
                                        updateServerNotificationsSettings(i3);
                                    }
                                    str10 = "_s";
                                    str16 = str29;
                                    str22 = string4;
                                    str27 = "secret";
                                    str23 = strMD53;
                                    i6 = lightColor;
                                    str15 = "_";
                                    sb = sb4;
                                    str21 = string8;
                                } else {
                                    if (i3 == 3) {
                                        StringBuilder sb6 = new StringBuilder();
                                        sb6.append(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY);
                                        i6 = lightColor;
                                        sb6.append(getSharedPrefKey(j, 0L));
                                        editorEdit2.putBoolean(sb6.toString(), false);
                                        str26 = "secret";
                                    } else {
                                        str26 = "secret";
                                        i6 = lightColor;
                                        editorEdit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, 0L), 2);
                                    }
                                    str10 = "_s";
                                    str21 = string8;
                                    str16 = str29;
                                    str22 = string4;
                                    sb = sb4;
                                    str23 = strMD53;
                                    str15 = "_";
                                    str27 = str26;
                                    updateServerNotificationsSettings(j, 0L, true);
                                }
                                j3 = j;
                                str12 = str27;
                                editorEdit = editorEdit2;
                                jArr4 = jArr3;
                            } else {
                                str10 = "_s";
                                str16 = str29;
                                str22 = string4;
                                str12 = "secret";
                                str23 = strMD53;
                                i6 = lightColor;
                                str15 = "_";
                                sb = sb4;
                                j3 = j;
                                str21 = string8;
                                if (importance == i2) {
                                    jArr4 = jArr3;
                                    editorEdit = null;
                                    z8 = false;
                                    notificationsController = this;
                                    jArr2 = jArr;
                                    z9 = z7;
                                    if ((!notificationsController.isEmptyVibration(jArr2)) == z9) {
                                        if (!z2) {
                                            if (editorEdit == null) {
                                                editorEdit = notificationsSettings.edit();
                                            }
                                            if (!z) {
                                                str25 = "vibrate_" + j3;
                                                if (z9) {
                                                }
                                            } else if (i3 == 2) {
                                                str25 = "vibrate_channel";
                                                i8 = z9 ? 0 : 2;
                                            } else if (i3 == 0) {
                                                str25 = "vibrate_group";
                                                if (z9) {
                                                }
                                            } else if (i3 == 3) {
                                                str25 = "vibrate_stories";
                                                if (z9) {
                                                }
                                            } else if (i3 == 4 || i3 == 5) {
                                                str25 = "vibrate_react";
                                                if (z9) {
                                                }
                                            } else {
                                                str25 = "vibrate_messages";
                                                if (z9) {
                                                }
                                            }
                                            editorEdit.putInt(str25, i8);
                                        }
                                        jArr2 = jArr4;
                                        i4 = i;
                                        i7 = i6;
                                        z8 = true;
                                    } else {
                                        i4 = i;
                                        i7 = i6;
                                    }
                                    if (i7 != i4) {
                                        if (!z2) {
                                            if (editorEdit == null) {
                                                editorEdit = notificationsSettings.edit();
                                            }
                                            editorEdit.putInt(z ? i3 == 2 ? "ChannelLed" : i3 == 0 ? "GroupLed" : i3 == 3 ? "StoriesLed" : (i3 == 5 || i3 == 4) ? "ReactionsLed" : "MessagesLed" : "color_" + j3, i7);
                                        }
                                        i4 = i7;
                                        z8 = true;
                                    }
                                    if (editorEdit != null) {
                                        editorEdit.commit();
                                    }
                                    z5 = z8;
                                } else if (z2) {
                                    jArr4 = jArr3;
                                    editorEdit = null;
                                } else {
                                    SharedPreferences.Editor editorEdit3 = notificationsSettings.edit();
                                    jArr4 = jArr3;
                                    int i9 = (importance == 4 || importance == 5) ? 1 : importance == 1 ? 4 : importance == 2 ? 5 : 0;
                                    if (z) {
                                        if (i3 == 3) {
                                            editorEdit3.putBoolean("EnableAllStories", true);
                                        } else if (i3 == 4) {
                                            editorEdit3.putBoolean("EnableReactionsMessages", true);
                                            editorEdit3.putBoolean("EnableReactionsStories", true);
                                        } else {
                                            editorEdit3.putInt(getGlobalNotificationsKey(i3), 0);
                                        }
                                        str24 = i3 == 2 ? "priority_channel" : i3 == 0 ? "priority_group" : i3 == 3 ? "priority_stories" : (i3 == 4 || i3 == 5) ? "priority_react" : "priority_messages";
                                    } else if (i3 == 3) {
                                        editorEdit3.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + j3, true);
                                        editorEdit = editorEdit3;
                                    } else {
                                        editorEdit3.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + j3, 0);
                                        editorEdit3.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + j3);
                                        str24 = "priority_" + j3;
                                    }
                                    editorEdit3.putInt(str24, i9);
                                    editorEdit = editorEdit3;
                                }
                            }
                            z8 = true;
                            notificationsController = this;
                            jArr2 = jArr;
                            z9 = z7;
                            if ((!notificationsController.isEmptyVibration(jArr2)) == z9) {
                            }
                            if (i7 != i4) {
                            }
                            if (editorEdit != null) {
                            }
                            z5 = z8;
                        }
                        str17 = str23;
                        str18 = str21;
                        string5 = str22;
                        if (z5 || str17 == null) {
                            str19 = str10;
                            if (!z4 || str17 == null || !z2 || !z) {
                                i5 = 0;
                                while (true) {
                                    str20 = str19;
                                    if (i5 < jArr2.length) {
                                        break;
                                    }
                                    sb.append(jArr2[i5]);
                                    i5++;
                                    str19 = str20;
                                }
                                sb.append(i4);
                                uri2 = uri;
                                if (uri2 != null) {
                                    sb.append(uri.toString());
                                }
                                sb.append(i2);
                                if (!z && z10) {
                                    sb.append(str12);
                                }
                                strMD5 = Utilities.MD5(sb.toString());
                                if (!z3 && string5 != null && (z4 || !str18.equals(strMD5))) {
                                    try {
                                        systemNotificationManager.deleteNotificationChannel(string5);
                                    } catch (Exception e) {
                                        FileLog.e(e);
                                    }
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.d("delete channel by settings change " + string5);
                                    }
                                    string5 = null;
                                }
                            }
                            if (string5 == null) {
                                if (z) {
                                    sb2 = new StringBuilder();
                                    sb2.append(notificationsController.currentAccount);
                                    sb2.append(str13);
                                    sb2.append(str16);
                                } else {
                                    sb2 = new StringBuilder();
                                    sb2.append(notificationsController.currentAccount);
                                    sb2.append(str13);
                                    sb2.append(j3);
                                }
                                sb2.append(str15);
                                sb2.append(Utilities.random.nextLong());
                                string5 = sb2.toString();
                                if (z10) {
                                    string3 = LocaleController.getString(R.string.SecretChatName);
                                }
                                NotificationChannel notificationChannel2 = new NotificationChannel(string5, string3, i2);
                                notificationChannel2.setGroup(str14);
                                if (i4 != 0) {
                                    notificationChannel2.enableLights(true);
                                    notificationChannel2.setLightColor(i4);
                                    z6 = false;
                                } else {
                                    z6 = false;
                                    notificationChannel2.enableLights(false);
                                }
                                if (notificationsController.isEmptyVibration(jArr2)) {
                                    notificationChannel2.enableVibration(z6);
                                } else {
                                    notificationChannel2.enableVibration(true);
                                    if (jArr2.length > 0) {
                                        notificationChannel2.setVibrationPattern(jArr2);
                                    }
                                }
                                AudioAttributes.Builder builder = new AudioAttributes.Builder();
                                builder.setContentType(4);
                                builder.setUsage(5);
                                if (uri2 != null) {
                                    notificationChannel2.setSound(uri2, builder.build());
                                } else {
                                    notificationChannel2.setSound(null, builder.build());
                                }
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.d("create new channel " + string5);
                                }
                                notificationsController.lastNotificationChannelCreateTime = SystemClock.elapsedRealtime();
                                systemNotificationManager.createNotificationChannel(notificationChannel2);
                                notificationsSettings.edit().putString(str16, string5).putString(str16 + str20, strMD5).commit();
                            }
                            return string5;
                        }
                        SharedPreferences.Editor editorPutString = notificationsSettings.edit().putString(str16, string5);
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(str16);
                        str19 = str10;
                        sb7.append(str19);
                        editorPutString.putString(sb7.toString(), str17).commit();
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.d("change edited channel " + string5);
                        }
                        strMD5 = str17;
                        str20 = str19;
                        uri2 = uri;
                        if (string5 == null) {
                        }
                        return string5;
                    }
                    str10 = "_s";
                    jArr2 = jArr;
                    sb = sb4;
                    str9 = string8;
                    str11 = string4;
                    str12 = "secret";
                    notificationsController = this;
                    j3 = j;
                    z4 = z11;
                    str15 = "_";
                    str16 = str29;
                    i4 = i;
                } else {
                    sb = sb4;
                    str9 = string8;
                    str10 = "_s";
                    str11 = string4;
                    str12 = "secret";
                    notificationsController = this;
                    j3 = j;
                    str13 = "channel_";
                    str14 = str4;
                    z4 = z11;
                    str15 = "_";
                    i4 = i;
                    str16 = str29;
                    jArr2 = jArr;
                }
                str18 = str9;
                string5 = str11;
                str17 = null;
                z5 = false;
                if (z5) {
                }
                if (string5 == null) {
                }
                return string5;
            }
            string2 = z2 ? LocaleController.formatString(R.string.NotificationsChatInApp, str) : str;
            StringBuilder sb8 = new StringBuilder();
            sb8.append(z2 ? "org.telegram.keyia" : "org.telegram.key");
            sb8.append(j);
            sb8.append("_");
            sb8.append(j2);
            string6 = sb8.toString();
        }
        string3 = string2;
        str8 = string6;
        String str292 = str8 + "_" + strMD52;
        string4 = notificationsSettings.getString(str292, null);
        String string82 = notificationsSettings.getString(str292 + "_s", null);
        StringBuilder sb42 = new StringBuilder();
        if (string4 == null) {
        }
        str18 = str9;
        string5 = str11;
        str17 = null;
        z5 = false;
        if (z5) {
        }
        if (string5 == null) {
        }
        return string5;
    }

    public void cleanup() {
        this.popupMessages.clear();
        this.popupReplyMessages.clear();
        this.channelGroupsCreated = false;
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$1();
            }
        });
    }

    public void clearDialogNotificationsSettings(long j, long j2) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        String sharedPrefKey = getSharedPrefKey(j, j2);
        editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey).remove(NotificationsSettingsFacade.PROPERTY_CUSTOM + sharedPrefKey);
        getMessagesStorage().setDialogFlags(j, 0L);
        TLRPC.Dialog dialog = (TLRPC.Dialog) getMessagesController().dialogs_dict.get(j);
        if (dialog != null) {
            dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
        }
        editorEdit.commit();
        getNotificationsController().updateServerNotificationsSettings(j, j2, true);
    }

    public void deleteAllNotificationChannels() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteAllNotificationChannels$41();
            }
        });
    }

    public void deleteNotificationChannel(long j, long j2) {
        deleteNotificationChannel(j, j2, -1);
    }

    public void deleteNotificationChannel(final long j, final long j2, final int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannel$39(j, j2, i);
            }
        });
    }

    public void deleteNotificationChannelGlobal(int i) {
        deleteNotificationChannelGlobal(i, -1);
    }

    public void deleteNotificationChannelGlobal(final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteNotificationChannelGlobal$40(i, i2);
            }
        });
    }

    /* renamed from: deleteNotificationChannelGlobalInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$deleteNotificationChannelGlobal$40(int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor editorEdit = notificationsSettings.edit();
            if (i2 == 0 || i2 == -1) {
                String str = i == 2 ? "channels" : i == 0 ? "groups" : i == 3 ? "stories" : (i == 4 || i == 5) ? "reactions" : "private";
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    editorEdit.remove(str).remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("delete channel global internal " + string);
                    }
                }
            }
            if (i2 == 1 || i2 == -1) {
                String str2 = i == 2 ? "channels_ia" : i == 0 ? "groups_ia" : i == 3 ? "stories_ia" : (i == 4 || i == 5) ? "reactions_ia" : "private_ia";
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    editorEdit.remove(str2).remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.d("delete channel global internal " + string2);
                    }
                }
            }
            editorEdit.remove(i == 2 ? "overwrite_channel" : i == 0 ? "overwrite_group" : i == 3 ? "overwrite_stories" : (i == 4 || i == 5) ? "overwrite_reactions" : "overwrite_private");
            editorEdit.commit();
        } catch (Exception e3) {
            FileLog.e(e3);
        }
    }

    protected void ensureGroupsCreated() {
        SharedPreferences.Editor editorRemove;
        String str;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        if (this.groupsCreated == null) {
            this.groupsCreated = Boolean.valueOf(notificationsSettings.getBoolean("groupsCreated5", false));
        }
        if (!this.groupsCreated.booleanValue()) {
            try {
                String str2 = this.currentAccount + "channel";
                List notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                SharedPreferences.Editor editorEdit = null;
                for (int i = 0; i < size; i++) {
                    NotificationChannel notificationChannelM = NotificationsController$$ExternalSyntheticApiModelOutline13.m(notificationChannels.get(i));
                    String id = notificationChannelM.getId();
                    if (id.startsWith(str2)) {
                        int importance = notificationChannelM.getImportance();
                        if (importance != 4 && importance != 5 && !id.contains("_ia_")) {
                            if (id.contains("_channels_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorRemove = editorEdit.remove("priority_channel").remove("vibrate_channel").remove("ChannelSoundPath");
                                str = "ChannelSound";
                            } else if (id.contains("_reactions_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorRemove = editorEdit.remove("priority_react").remove("vibrate_react").remove("ReactionSoundPath");
                                str = "ReactionSound";
                            } else if (id.contains("_groups_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorRemove = editorEdit.remove("priority_group").remove("vibrate_group").remove("GroupSoundPath");
                                str = "GroupSound";
                            } else if (id.contains("_private_")) {
                                if (editorEdit == null) {
                                    editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editorEdit.remove("priority_messages");
                                editorRemove = editorEdit.remove("priority_group").remove("vibrate_messages").remove("GlobalSoundPath");
                                str = "GlobalSound";
                            } else {
                                long jLongValue = Utilities.parseLong(id.substring(9, id.indexOf(95, 9))).longValue();
                                if (jLongValue != 0) {
                                    if (editorEdit == null) {
                                        editorEdit = getAccountInstance().getNotificationsSettings().edit();
                                    }
                                    editorRemove = editorEdit.remove("priority_" + jLongValue).remove("vibrate_" + jLongValue).remove("sound_path_" + jLongValue);
                                    str = "sound_" + jLongValue;
                                }
                            }
                            editorRemove.remove(str);
                        }
                        systemNotificationManager.deleteNotificationChannel(id);
                    }
                }
                if (editorEdit != null) {
                    editorEdit.commit();
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            notificationsSettings.edit().putBoolean("groupsCreated5", true).commit();
            this.groupsCreated = Boolean.TRUE;
        }
        if (this.channelGroupsCreated) {
            return;
        }
        List notificationChannelGroups = systemNotificationManager.getNotificationChannelGroups();
        String str3 = "channels" + this.currentAccount;
        String str4 = "groups" + this.currentAccount;
        String str5 = "private" + this.currentAccount;
        String str6 = "stories" + this.currentAccount;
        String str7 = "reactions" + this.currentAccount;
        String str8 = "other" + this.currentAccount;
        int size2 = notificationChannelGroups.size();
        String str9 = str8;
        String str10 = str7;
        String str11 = str6;
        String str12 = str5;
        for (int i2 = 0; i2 < size2; i2++) {
            String id2 = NotificationsController$$ExternalSyntheticApiModelOutline16.m(notificationChannelGroups.get(i2)).getId();
            if (str3 != null && str3.equals(id2)) {
                str3 = null;
            } else if (str4 != null && str4.equals(id2)) {
                str4 = null;
            } else if (str11 != null && str11.equals(id2)) {
                str11 = null;
            } else if (str10 != null && str10.equals(id2)) {
                str10 = null;
            } else if (str12 != null && str12.equals(id2)) {
                str12 = null;
            } else if (str9 != null && str9.equals(id2)) {
                str9 = null;
            }
            if (str3 == null && str11 == null && str10 == null && str4 == null && str12 == null && str9 == null) {
                break;
            }
        }
        if (str3 != null || str4 != null || str10 != null || str11 != null || str12 != null || str9 != null) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                getUserConfig().getCurrentUser();
            }
            String str13 = user != null ? " (" + ContactsController.formatName(user.first_name, user.last_name) + ")" : "";
            ArrayList arrayList = new ArrayList();
            if (str3 != null) {
                arrayList.add(new NotificationChannelGroup(str3, LocaleController.getString(R.string.NotificationsChannels) + str13));
            }
            if (str4 != null) {
                arrayList.add(new NotificationChannelGroup(str4, LocaleController.getString(R.string.NotificationsGroups) + str13));
            }
            if (str11 != null) {
                arrayList.add(new NotificationChannelGroup(str11, LocaleController.getString(R.string.NotificationsStories) + str13));
            }
            if (str10 != null) {
                arrayList.add(new NotificationChannelGroup(str10, LocaleController.getString(R.string.NotificationsReactions) + str13));
            }
            if (str12 != null) {
                arrayList.add(new NotificationChannelGroup(str12, LocaleController.getString(R.string.NotificationsPrivateChats) + str13));
            }
            if (str9 != null) {
                arrayList.add(new NotificationChannelGroup(str9, LocaleController.getString(R.string.NotificationsOther) + str13));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    protected void forceShowPopupForReply() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceShowPopupForReply$6();
            }
        });
    }

    public NotificationsSettingsFacade getNotificationsSettingsFacade() {
        return this.dialogsNotificationsFacade;
    }

    public int getTotalUnreadCount() {
        return this.total_unread_count;
    }

    public boolean hasMessagesToReply() {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            if (!messageObject.isReactionPush) {
                TLRPC.Message message = messageObject.messageOwner;
                if ((!message.mentioned || !(message.action instanceof TLRPC.TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && ((messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) && dialogId != UserObject.VERIFY)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void hideNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideNotifications$34();
            }
        });
    }

    public boolean isGlobalNotificationsEnabled(int i) {
        SharedPreferences notificationsSettings;
        String str;
        if (i == 4) {
            notificationsSettings = getAccountInstance().getNotificationsSettings();
            str = "EnableReactionsMessages";
        } else if (i == 5) {
            notificationsSettings = getAccountInstance().getNotificationsSettings();
            str = "EnableReactionsStories";
        } else {
            if (i != 3) {
                return getAccountInstance().getNotificationsSettings().getInt(getGlobalNotificationsKey(i), 0) < getConnectionsManager().getCurrentTime();
            }
            notificationsSettings = getAccountInstance().getNotificationsSettings();
            str = "EnableAllStories";
        }
        return notificationsSettings.getBoolean(str, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isGlobalNotificationsEnabled(long j, Boolean bool, boolean z, boolean z2) {
        int i;
        if (z) {
            i = 4;
        } else if (z2) {
            i = 5;
        } else if (!DialogObject.isChatDialog(j)) {
            i = 1;
        } else if (bool != null) {
            i = bool.booleanValue() ? 2 : 0;
        } else {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-j));
            if (!ChatObject.isChannel(chat) || chat.megagroup) {
            }
        }
        return isGlobalNotificationsEnabled(i);
    }

    public boolean isGlobalNotificationsEnabled(long j, boolean z, boolean z2) {
        return isGlobalNotificationsEnabled(j, null, z, z2);
    }

    public void loadTopicsNotificationsExceptions(final long j, final Consumer<HashSet<Integer>> consumer) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadTopicsNotificationsExceptions$51(j, consumer);
            }
        });
    }

    public void muteDialog(long j, long j2, boolean z) {
        if (z) {
            getInstance(this.currentAccount).muteUntil(j, j2, Integer.MAX_VALUE);
            return;
        }
        boolean zIsGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j, false, false);
        boolean z2 = j2 != 0;
        SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        if (!zIsGlobalNotificationsEnabled || z2) {
            editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 0);
        } else {
            editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2));
        }
        if (j2 == 0) {
            getMessagesStorage().setDialogFlags(j, 0L);
            TLRPC.Dialog dialog = (TLRPC.Dialog) getMessagesController().dialogs_dict.get(j);
            if (dialog != null) {
                dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
            }
        }
        editorEdit.apply();
        updateServerNotificationsSettings(j, j2);
    }

    public void muteUntil(long j, long j2, int i) {
        if (j != 0) {
            SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            boolean z = j2 != 0;
            boolean zIsGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j, false, false);
            String sharedPrefKey = getSharedPrefKey(j, j2);
            long j3 = 1;
            if (i != Integer.MAX_VALUE) {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 3);
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + sharedPrefKey, getConnectionsManager().getCurrentTime() + i);
                j3 = 1 | (((long) i) << 32);
            } else if (zIsGlobalNotificationsEnabled || z) {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 2);
            } else {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
                j3 = 0L;
            }
            editorEdit.apply();
            if (j2 == 0) {
                getInstance(this.currentAccount).removeNotificationsForDialog(j);
                MessagesStorage.getInstance(this.currentAccount).setDialogFlags(j, j3);
                TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j);
                if (dialog != null) {
                    TLRPC.TL_peerNotifySettings tL_peerNotifySettings = new TLRPC.TL_peerNotifySettings();
                    dialog.notify_settings = tL_peerNotifySettings;
                    if (i != Integer.MAX_VALUE || zIsGlobalNotificationsEnabled) {
                        tL_peerNotifySettings.mute_until = i;
                    }
                }
            }
            getInstance(this.currentAccount).updateServerNotificationsSettings(j, j2);
        }
    }

    public void playOutChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playOutChatSound$46();
            }
        });
    }

    public void processDeleteStory(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDeleteStory$14(j, i);
            }
        });
    }

    public void processDialogsUpdateRead(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList();
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDialogsUpdateRead$28(longSparseIntArray, arrayList);
            }
        });
    }

    public void processEditedMessages(final LongSparseArray longSparseArray) {
        TLRPC.Message message;
        if (longSparseArray == null || longSparseArray.size() == 0) {
            return;
        }
        for (int i = 0; i < longSparseArray.size(); i++) {
            ArrayList arrayList = (ArrayList) longSparseArray.valueAt(i);
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    MessageObject messageObject = (MessageObject) arrayList.get(i2);
                    if (messageObject != null && (message = messageObject.messageOwner) != null) {
                        TLRPC.MessageAction messageAction = message.action;
                        if (messageAction instanceof TLRPC.TL_messageActionConferenceCall) {
                            TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction;
                            if (tL_messageActionConferenceCall.active || tL_messageActionConferenceCall.missed) {
                                VoIPGroupNotification.hide(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getId());
                            }
                        }
                    }
                }
            }
        }
        new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processEditedMessages$21(longSparseArray);
            }
        });
    }

    public void processIgnoreStories() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$16();
            }
        });
    }

    public void processIgnoreStories(final long j) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStories$18(j);
            }
        });
    }

    public void processIgnoreStoryReactions() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processIgnoreStoryReactions$17();
            }
        });
    }

    public void processLoadedUnreadMessages(final LongSparseArray longSparseArray, final ArrayList<TLRPC.Message> arrayList, final ArrayList<MessageObject> arrayList2, ArrayList<TLRPC.User> arrayList3, ArrayList<TLRPC.Chat> arrayList4, ArrayList<TLRPC.EncryptedChat> arrayList5, final Collection<StoryNotification> collection) {
        getMessagesController().putUsers(arrayList3, true);
        getMessagesController().putChats(arrayList4, true);
        getMessagesController().putEncryptedChats(arrayList5, true);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedUnreadMessages$31(arrayList, longSparseArray, arrayList2, collection);
            }
        });
    }

    public void processNewMessages(final ArrayList<MessageObject> arrayList, final boolean z, final boolean z2, final CountDownLatch countDownLatch) {
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("NotificationsController: processNewMessages msgs.size()=");
            sb.append(arrayList == null ? "null" : Integer.valueOf(arrayList.size()));
            sb.append(" isLast=");
            sb.append(z);
            sb.append(" isFcm=");
            sb.append(z2);
            sb.append(")");
            FileLog.d(sb.toString());
        }
        if (arrayList != null) {
            int i = 0;
            while (i < arrayList.size()) {
                MessageObject messageObject = arrayList.get(i);
                if (messageObject != null && messageObject.messageOwner != null && !messageObject.isOutOwner()) {
                    TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                    if (messageAction instanceof TLRPC.TL_messageActionConferenceCall) {
                        TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction;
                        if (tL_messageActionConferenceCall.active || tL_messageActionConferenceCall.missed || getConnectionsManager().getCurrentTime() - messageObject.messageOwner.date >= getMessagesController().callRingTimeout / 1000) {
                            VoIPGroupNotification.hide(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getId());
                        } else {
                            HashSet hashSet = new HashSet();
                            hashSet.add(Long.valueOf(messageObject.getDialogId()));
                            Iterator it = tL_messageActionConferenceCall.other_participants.iterator();
                            while (it.hasNext()) {
                                hashSet.add(Long.valueOf(DialogObject.getPeerDialogId((TLRPC.Peer) it.next())));
                            }
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it2 = hashSet.iterator();
                            while (it2.hasNext()) {
                                long jLongValue = ((Long) it2.next()).longValue();
                                if (sb2.length() > 0) {
                                    sb2.append(", ");
                                }
                                sb2.append(DialogObject.getShortName(this.currentAccount, jLongValue));
                            }
                            VoIPGroupNotification.request(ApplicationLoader.applicationContext, this.currentAccount, messageObject.getDialogId(), sb2.toString(), tL_messageActionConferenceCall.call_id, messageObject.getId(), tL_messageActionConferenceCall.video);
                            arrayList.remove(i);
                            i--;
                        }
                    }
                }
                i++;
            }
        }
        if (!arrayList.isEmpty()) {
            final ArrayList arrayList2 = new ArrayList(0);
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processNewMessages$25(arrayList, arrayList2, z2, z, countDownLatch);
                }
            });
        } else if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public void processReadMessages(final LongSparseIntArray longSparseIntArray, final long j, final int i, final int i2, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadMessages$20(longSparseIntArray, arrayList, j, i2, i, z);
            }
        });
    }

    public void processReadStories() {
    }

    public void processReadStories(final long j, int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processReadStories$15(j);
            }
        });
    }

    public void processSeenStoryReactions(long j, final int i) {
        if (j != getUserConfig().getClientUserId()) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSeenStoryReactions$13(i);
            }
        });
    }

    public void removeDeletedHisoryFromNotifications(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedHisoryFromNotifications$12(longSparseIntArray, arrayList);
            }
        });
    }

    public void removeDeletedMessagesFromNotifications(final LongSparseArray longSparseArray, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeDeletedMessagesFromNotifications$9(longSparseArray, z, arrayList);
            }
        });
    }

    public void removeNotificationsForDialog(long j) {
        processReadMessages(null, j, 0, Integer.MAX_VALUE, false);
        LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
        longSparseIntArray.put(j, 0);
        processDialogsUpdateRead(longSparseIntArray);
    }

    protected void repeatNotificationMaybe() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$repeatNotificationMaybe$38();
            }
        });
    }

    public void setDialogNotificationsSettings(long j, long j2, int i) {
        SharedPreferences.Editor editorEdit = getAccountInstance().getNotificationsSettings().edit();
        TLRPC.Dialog dialog = (TLRPC.Dialog) MessagesController.getInstance(UserConfig.selectedAccount).dialogs_dict.get(j);
        if (i == 4) {
            if (isGlobalNotificationsEnabled(j, false, false)) {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2));
            } else {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 0);
            }
            getMessagesStorage().setDialogFlags(j, 0L);
            if (dialog != null) {
                dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
            }
        } else {
            int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
            if (i == 0) {
                currentTime += 3600;
            } else if (i == 1) {
                currentTime += 28800;
            } else if (i == 2) {
                currentTime += 172800;
            } else if (i == 3) {
                currentTime = Integer.MAX_VALUE;
            }
            long j3 = 1;
            if (i == 3) {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 2);
            } else {
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), 3);
                editorEdit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, j2), currentTime);
                j3 = 1 | (((long) currentTime) << 32);
            }
            getInstance(UserConfig.selectedAccount).removeNotificationsForDialog(j);
            MessagesStorage.getInstance(UserConfig.selectedAccount).setDialogFlags(j, j3);
            if (dialog != null) {
                TLRPC.TL_peerNotifySettings tL_peerNotifySettings = new TLRPC.TL_peerNotifySettings();
                dialog.notify_settings = tL_peerNotifySettings;
                tL_peerNotifySettings.mute_until = currentTime;
            }
        }
        editorEdit.commit();
        updateServerNotificationsSettings(j, j2);
    }

    public void setGlobalNotificationsEnabled(int i, int i2) {
        getAccountInstance().getNotificationsSettings().edit().putInt(getGlobalNotificationsKey(i), i2).commit();
        updateServerNotificationsSettings(i);
        getMessagesStorage().updateMutedDialogsFiltersCounters();
        deleteNotificationChannelGlobal(i);
    }

    public void setInChatSoundEnabled(boolean z) {
        this.inChatSoundEnabled = z;
    }

    public void setLastOnlineFromOtherDevice(final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setLastOnlineFromOtherDevice$4(i);
            }
        });
    }

    public void setOpenedDialogId(final long j, final long j2) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedDialogId$2(j, j2);
            }
        });
    }

    public void setOpenedInBubble(final long j, final boolean z) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setOpenedInBubble$3(z, j);
            }
        });
    }

    public void showNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showNotifications$33();
            }
        });
    }

    public void updateBadge() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateBadge$32();
            }
        });
    }

    public void updateServerNotificationsSettings(int i) {
        TL_account$TL_reactionsNotifySettings tL_account$TL_reactionsNotifySettings;
        TL_account$ReactionNotificationsFrom tL_account$TL_reactionNotificationsFromAll;
        TL_account$TL_reactionsNotifySettings tL_account$TL_reactionsNotifySettings2;
        TL_account$ReactionNotificationsFrom tL_account$TL_reactionNotificationsFromAll2;
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings;
        String str;
        String str2;
        String str3;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        if (i == 4 || i == 5) {
            TL_account$setReactionsNotifySettings tL_account$setReactionsNotifySettings = new TL_account$setReactionsNotifySettings();
            tL_account$setReactionsNotifySettings.settings = new TL_account$TL_reactionsNotifySettings();
            if (notificationsSettings.getBoolean("EnableReactionsMessages", true)) {
                tL_account$setReactionsNotifySettings.settings.flags |= 1;
                if (notificationsSettings.getBoolean("EnableReactionsMessagesContacts", false)) {
                    tL_account$TL_reactionsNotifySettings2 = tL_account$setReactionsNotifySettings.settings;
                    tL_account$TL_reactionNotificationsFromAll2 = new TL_account$TL_reactionNotificationsFromContacts();
                } else {
                    tL_account$TL_reactionsNotifySettings2 = tL_account$setReactionsNotifySettings.settings;
                    tL_account$TL_reactionNotificationsFromAll2 = new TL_account$TL_reactionNotificationsFromAll();
                }
                tL_account$TL_reactionsNotifySettings2.messages_notify_from = tL_account$TL_reactionNotificationsFromAll2;
            }
            if (notificationsSettings.getBoolean("EnableReactionsStories", true)) {
                tL_account$setReactionsNotifySettings.settings.flags |= 2;
                if (notificationsSettings.getBoolean("EnableReactionsStoriesContacts", false)) {
                    tL_account$TL_reactionsNotifySettings = tL_account$setReactionsNotifySettings.settings;
                    tL_account$TL_reactionNotificationsFromAll = new TL_account$TL_reactionNotificationsFromContacts();
                } else {
                    tL_account$TL_reactionsNotifySettings = tL_account$setReactionsNotifySettings.settings;
                    tL_account$TL_reactionNotificationsFromAll = new TL_account$TL_reactionNotificationsFromAll();
                }
                tL_account$TL_reactionsNotifySettings.stories_notify_from = tL_account$TL_reactionNotificationsFromAll;
            }
            tL_account$setReactionsNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnableReactionsPreview", true);
            tL_account$setReactionsNotifySettings.settings.sound = getInputSound(notificationsSettings, "ReactionSound", "ReactionSoundDocId", "ReactionSoundPath");
            getConnectionsManager().sendRequest(tL_account$setReactionsNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda53
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    NotificationsController.lambda$updateServerNotificationsSettings$48(tLObject, tL_error);
                }
            });
            return;
        }
        TL_account$updateNotifySettings tL_account$updateNotifySettings = new TL_account$updateNotifySettings();
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings2 = new TLRPC.TL_inputPeerNotifySettings();
        tL_account$updateNotifySettings.settings = tL_inputPeerNotifySettings2;
        tL_inputPeerNotifySettings2.flags = 5;
        if (i == 0) {
            tL_account$updateNotifySettings.peer = new TLRPC.TL_inputNotifyChats();
            tL_account$updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableGroup2", 0);
            tL_account$updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewGroup", true);
            tL_inputPeerNotifySettings = tL_account$updateNotifySettings.settings;
            tL_inputPeerNotifySettings.flags |= 8;
            str = "GroupSoundDocId";
            str2 = "GroupSoundPath";
            str3 = "GroupSound";
        } else {
            if (i == 1 || i == 3) {
                tL_account$updateNotifySettings.peer = new TLRPC.TL_inputNotifyUsers();
                tL_account$updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableAll2", 0);
                tL_account$updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewAll", true);
                TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings3 = tL_account$updateNotifySettings.settings;
                tL_inputPeerNotifySettings3.flags |= 128;
                tL_inputPeerNotifySettings3.stories_hide_sender = notificationsSettings.getBoolean("EnableHideStoriesSenders", false);
                if (notificationsSettings.contains("EnableAllStories")) {
                    TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings4 = tL_account$updateNotifySettings.settings;
                    tL_inputPeerNotifySettings4.flags |= 64;
                    tL_inputPeerNotifySettings4.stories_muted = !notificationsSettings.getBoolean("EnableAllStories", true);
                }
                TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings5 = tL_account$updateNotifySettings.settings;
                tL_inputPeerNotifySettings5.flags |= 8;
                tL_inputPeerNotifySettings5.sound = getInputSound(notificationsSettings, "GlobalSound", "GlobalSoundDocId", "GlobalSoundPath");
                TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings6 = tL_account$updateNotifySettings.settings;
                tL_inputPeerNotifySettings6.flags |= 256;
                tL_inputPeerNotifySettings6.stories_sound = getInputSound(notificationsSettings, "StoriesSound", "StoriesSoundDocId", "StoriesSoundPath");
                getConnectionsManager().sendRequest(tL_account$updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda52
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        NotificationsController.lambda$updateServerNotificationsSettings$49(tLObject, tL_error);
                    }
                });
            }
            tL_account$updateNotifySettings.peer = new TLRPC.TL_inputNotifyBroadcasts();
            tL_account$updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableChannel2", 0);
            tL_account$updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewChannel", true);
            tL_inputPeerNotifySettings = tL_account$updateNotifySettings.settings;
            tL_inputPeerNotifySettings.flags |= 8;
            str = "ChannelSoundDocId";
            str2 = "ChannelSoundPath";
            str3 = "ChannelSound";
        }
        tL_inputPeerNotifySettings.sound = getInputSound(notificationsSettings, str3, str, str2);
        getConnectionsManager().sendRequest(tL_account$updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda52
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.lambda$updateServerNotificationsSettings$49(tLObject, tL_error);
            }
        });
    }

    public void updateServerNotificationsSettings(long j, long j2) {
        updateServerNotificationsSettings(j, j2, true);
    }

    public void updateServerNotificationsSettings(long j, long j2, boolean z) {
        int i = 0;
        if (z) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsSettingsUpdated, new Object[0]);
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TL_account$updateNotifySettings tL_account$updateNotifySettings = new TL_account$updateNotifySettings();
        tL_account$updateNotifySettings.settings = new TLRPC.TL_inputPeerNotifySettings();
        String sharedPrefKey = getSharedPrefKey(j, j2);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings = tL_account$updateNotifySettings.settings;
        tL_inputPeerNotifySettings.flags |= 1;
        tL_inputPeerNotifySettings.show_previews = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + sharedPrefKey, true);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings2 = tL_account$updateNotifySettings.settings;
        tL_inputPeerNotifySettings2.flags = tL_inputPeerNotifySettings2.flags | 2;
        tL_inputPeerNotifySettings2.silent = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + sharedPrefKey, false);
        if (notificationsSettings.contains(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey)) {
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings3 = tL_account$updateNotifySettings.settings;
            tL_inputPeerNotifySettings3.flags |= 64;
            tL_inputPeerNotifySettings3.stories_muted = !notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, true);
        }
        int i2 = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, j2), -1);
        if (i2 != -1) {
            TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings4 = tL_account$updateNotifySettings.settings;
            tL_inputPeerNotifySettings4.flags |= 4;
            if (i2 == 3) {
                i = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, j2), 0);
            } else if (i2 == 2) {
                i = Integer.MAX_VALUE;
            }
            tL_inputPeerNotifySettings4.mute_until = i;
        }
        long j3 = notificationsSettings.getLong("sound_document_id_" + getSharedPrefKey(j, j2), 0L);
        String string = notificationsSettings.getString("sound_path_" + getSharedPrefKey(j, j2), null);
        TLRPC.TL_inputPeerNotifySettings tL_inputPeerNotifySettings5 = tL_account$updateNotifySettings.settings;
        tL_inputPeerNotifySettings5.flags = tL_inputPeerNotifySettings5.flags | 8;
        if (j3 != 0) {
            TLRPC.TL_notificationSoundRingtone tL_notificationSoundRingtone = new TLRPC.TL_notificationSoundRingtone();
            tL_notificationSoundRingtone.id = j3;
            tL_account$updateNotifySettings.settings.sound = tL_notificationSoundRingtone;
        } else if (string == null) {
            tL_inputPeerNotifySettings5.sound = new TLRPC.TL_notificationSoundDefault();
        } else if (string.equalsIgnoreCase("NoSound")) {
            tL_account$updateNotifySettings.settings.sound = new TLRPC.TL_notificationSoundNone();
        } else {
            TLRPC.TL_notificationSoundLocal tL_notificationSoundLocal = new TLRPC.TL_notificationSoundLocal();
            tL_notificationSoundLocal.title = notificationsSettings.getString("sound_" + getSharedPrefKey(j, j2), null);
            tL_notificationSoundLocal.data = string;
            tL_account$updateNotifySettings.settings.sound = tL_notificationSoundLocal;
        }
        if (j2 == 0 || j == getUserConfig().getClientUserId()) {
            TLRPC.TL_inputNotifyPeer tL_inputNotifyPeer = new TLRPC.TL_inputNotifyPeer();
            tL_account$updateNotifySettings.peer = tL_inputNotifyPeer;
            tL_inputNotifyPeer.peer = getMessagesController().getInputPeer(j);
        } else {
            TLRPC.TL_inputNotifyForumTopic tL_inputNotifyForumTopic = new TLRPC.TL_inputNotifyForumTopic();
            tL_inputNotifyForumTopic.peer = getMessagesController().getInputPeer(j);
            tL_inputNotifyForumTopic.top_msg_id = (int) j2;
            tL_account$updateNotifySettings.peer = tL_inputNotifyForumTopic;
        }
        getConnectionsManager().sendRequest(tL_account$updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda72
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                NotificationsController.lambda$updateServerNotificationsSettings$47(tLObject, tL_error);
            }
        });
    }
}
