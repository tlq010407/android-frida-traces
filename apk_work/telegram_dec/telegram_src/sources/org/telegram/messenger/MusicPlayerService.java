package org.telegram.messenger;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.LaunchActivity;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MusicPlayerService extends Service implements NotificationCenter.NotificationCenterDelegate {
    private static final int ID_NOTIFICATION = 5;
    public static final String NOTIFY_CLOSE = "org.telegram.android.musicplayer.close";
    public static final String NOTIFY_NEXT = "org.telegram.android.musicplayer.next";
    public static final String NOTIFY_PAUSE = "org.telegram.android.musicplayer.pause";
    public static final String NOTIFY_PLAY = "org.telegram.android.musicplayer.play";
    public static final String NOTIFY_PREVIOUS = "org.telegram.android.musicplayer.previous";
    public static final String NOTIFY_SEEK = "org.telegram.android.musicplayer.seek";
    private static boolean supportBigNotifications;
    private static boolean supportLockScreenControls;
    private Bitmap albumArtPlaceholder;
    private AudioManager audioManager;
    private boolean foregroundServiceIsStarted;
    private BroadcastReceiver headsetPlugReceiver = new BroadcastReceiver() { // from class: org.telegram.messenger.MusicPlayerService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
            }
        }
    };
    private ImageReceiver imageReceiver;
    private String loadingFilePath;
    private MediaSession mediaSession;
    private int notificationMessageID;
    private PlaybackState.Builder playbackState;
    private RemoteControlClient remoteControlClient;

    static {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        supportBigNotifications = true;
        if (i >= 21 && TextUtils.isEmpty(AndroidUtilities.getSystemProperty("ro.miui.ui.version.code"))) {
            z = false;
        }
        supportLockScreenControls = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void createNotification(MessageObject messageObject, boolean z) throws IllegalArgumentException {
        StringBuilder sb;
        String str;
        Bitmap avatarBitmap;
        Bitmap avatarBitmap2;
        Bitmap cover;
        TLRPC.Chat chat;
        Bitmap bitmap;
        String str2;
        Bitmap bitmap2;
        String str3;
        int i;
        int i2;
        String str4;
        String str5;
        int i3;
        String musicTitle = messageObject.getMusicTitle();
        String musicAuthor = messageObject.getMusicAuthor();
        AudioInfo audioInfo = MediaController.getInstance().getAudioInfo();
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
        if (messageObject.isMusic()) {
            intent.setAction("com.tmessages.openplayer");
            intent.addCategory("android.intent.category.LAUNCHER");
        } else if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            intent.setAction("android.intent.action.VIEW");
            TLRPC.Peer peer = messageObject.messageOwner.peer_id;
            boolean z2 = peer instanceof TLRPC.TL_peerUser;
            long j = z2 ? peer.user_id : peer instanceof TLRPC.TL_peerChat ? peer.chat_id : peer instanceof TLRPC.TL_peerChannel ? peer.channel_id : 0L;
            if (j != 0) {
                if (z2) {
                    sb = new StringBuilder();
                    str = "tg://openmessage?user_id=";
                } else {
                    sb = new StringBuilder();
                    str = "tg://openmessage?chat_id=";
                }
                sb.append(str);
                sb.append(j);
                sb.append("&message_id=");
                sb.append(messageObject.getId());
                intent.setData(Uri.parse(sb.toString()));
            }
        }
        PendingIntent activity = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, fixIntentFlags(ConnectionsManager.FileTypeVideo));
        long duration = (long) (messageObject.getDuration() * 1000.0d);
        if (messageObject.isMusic()) {
            String artworkUrl = messageObject.getArtworkUrl(true);
            String artworkUrl2 = messageObject.getArtworkUrl(false);
            avatarBitmap2 = audioInfo != null ? audioInfo.getSmallCover() : null;
            cover = audioInfo != null ? audioInfo.getCover() : null;
            this.loadingFilePath = null;
            this.imageReceiver.setImageBitmap((Drawable) null);
            if (avatarBitmap2 != null || TextUtils.isEmpty(artworkUrl)) {
                this.loadingFilePath = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(messageObject.getDocument()).getAbsolutePath();
            } else {
                boolean z3 = !z;
                cover = loadArtworkFromUrl(artworkUrl2, true, z3);
                if (cover == null) {
                    avatarBitmap2 = loadArtworkFromUrl(artworkUrl, false, z3);
                    bitmap = avatarBitmap2;
                } else {
                    avatarBitmap2 = loadArtworkFromUrl(artworkUrl2, false, z3);
                }
            }
            bitmap = cover;
        } else if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            long senderId = messageObject.getSenderId();
            if (messageObject.isFromUser()) {
                TLRPC.User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(senderId));
                if (user != 0) {
                    musicTitle = UserObject.getUserName(user);
                    chat = user;
                    boolean z4 = !z;
                    avatarBitmap = getAvatarBitmap(chat, true, z4);
                    avatarBitmap2 = getAvatarBitmap(chat, false, z4);
                }
                avatarBitmap = null;
                avatarBitmap2 = null;
            } else {
                TLRPC.Chat chat2 = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-senderId));
                if (chat2 != null) {
                    musicTitle = chat2.title;
                    chat = chat2;
                    boolean z42 = !z;
                    avatarBitmap = getAvatarBitmap(chat, true, z42);
                    avatarBitmap2 = getAvatarBitmap(chat, false, z42);
                }
                avatarBitmap = null;
                avatarBitmap2 = null;
            }
            cover = (avatarBitmap != null || avatarBitmap2 == null) ? avatarBitmap : avatarBitmap2;
            musicAuthor = LocaleController.getString(messageObject.isVoice() ? R.string.AttachAudio : R.string.AttachRound);
            bitmap = cover;
        } else {
            bitmap = null;
            avatarBitmap2 = null;
        }
        int i4 = Build.VERSION.SDK_INT;
        Bitmap bitmap3 = avatarBitmap2;
        if (i4 >= 21) {
            boolean z5 = !MediaController.getInstance().isMessagePaused();
            PendingIntent broadcast = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent service = PendingIntent.getService(getApplicationContext(), 0, new Intent(this, getClass()).setAction(getPackageName() + ".STOP_PLAYER"), fixIntentFlags(301989888));
            PendingIntent broadcast2 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(z5 ? NOTIFY_PAUSE : NOTIFY_PLAY).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            Bitmap bitmap4 = bitmap;
            PendingIntent broadcast3 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SEEK).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            Notification.MediaStyle mediaSession = new Notification.MediaStyle().setMediaSession(this.mediaSession.getSessionToken());
            if (messageObject.isMusic()) {
                mediaSession.setShowActionsInCompactView(0, 1, 2);
            } else if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                mediaSession.setShowActionsInCompactView(0);
            }
            Notification.Builder builder = new Notification.Builder(this);
            builder.setSmallIcon(R.drawable.player).setOngoing(z5).setContentTitle(musicTitle).setContentText(musicAuthor).setSubText((audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum()).setContentIntent(activity).setDeleteIntent(service).setShowWhen(false).setCategory("transport").setPriority(2).setStyle(mediaSession);
            if (i4 >= 26) {
                NotificationsController.checkOtherNotificationsChannel();
                builder.setChannelId(NotificationsController.OTHER_NOTIFICATIONS_CHANNEL);
            }
            if (bitmap3 != null) {
                builder.setLargeIcon(bitmap3);
            } else {
                builder.setLargeIcon(this.albumArtPlaceholder);
            }
            String string = LocaleController.getString(R.string.Next);
            String string2 = LocaleController.getString(R.string.AccDescrPrevious);
            if (MediaController.getInstance().isDownloadingCurrentMessage()) {
                i2 = i4;
                this.playbackState.setState(6, 0L, 1.0f).setActions(0L);
                if (messageObject.isMusic()) {
                    builder.addAction(new Notification.Action.Builder(R.drawable.ic_action_previous, string2, broadcast).build());
                }
                builder.addAction(new Notification.Action.Builder(R.drawable.loading_animation2, LocaleController.getString(R.string.Loading), (PendingIntent) null).build());
                if (messageObject.isMusic()) {
                    builder.addAction(new Notification.Action.Builder(R.drawable.ic_action_next, string, broadcast3).build());
                }
                str4 = musicTitle;
                str5 = musicAuthor;
            } else {
                i2 = i4;
                str4 = musicTitle;
                str5 = musicAuthor;
                this.playbackState.setState(z5 ? 3 : 2, MediaController.getInstance().getPlayingMessageObject().audioProgressSec * 1000, getPlaybackSpeed(z5, messageObject)).setActions(messageObject.isMusic() ? 822L : 774L);
                String string3 = LocaleController.getString(z5 ? R.string.AccActionPause : R.string.AccActionPlay);
                if (messageObject.isMusic()) {
                    builder.addAction(new Notification.Action.Builder(R.drawable.ic_action_previous, string2, broadcast).build());
                }
                builder.addAction(new Notification.Action.Builder(z5 ? R.drawable.ic_action_pause : R.drawable.ic_action_play, string3, broadcast2).build());
                if (messageObject.isMusic()) {
                    builder.addAction(new Notification.Action.Builder(R.drawable.ic_action_next, string, broadcast3).build());
                }
            }
            this.mediaSession.setPlaybackState(this.playbackState.build());
            bitmap2 = bitmap4;
            str3 = str5;
            str2 = str4;
            this.mediaSession.setMetadata(new MediaMetadata.Builder().putBitmap("android.media.metadata.ALBUM_ART", bitmap2).putString("android.media.metadata.ALBUM_ARTIST", str3).putString("android.media.metadata.ARTIST", str3).putLong("android.media.metadata.DURATION", duration).putString("android.media.metadata.TITLE", str2).putString("android.media.metadata.ALBUM", (audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum()).build());
            builder.setVisibility(1);
            Notification notificationBuild = builder.build();
            if (i2 < 31) {
                i3 = 5;
                if (!z5) {
                    stopForeground(false);
                    ((NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION)).notify(i3, notificationBuild);
                }
                startForeground(i3, notificationBuild);
            } else if (this.foregroundServiceIsStarted) {
                i3 = 5;
                ((NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION)).notify(i3, notificationBuild);
            } else {
                this.foregroundServiceIsStarted = true;
                i3 = 5;
                startForeground(i3, notificationBuild);
            }
        } else {
            str2 = musicTitle;
            bitmap2 = bitmap;
            str3 = musicAuthor;
            RemoteViews remoteViews = new RemoteViews(getApplicationContext().getPackageName(), R.layout.player_small_notification);
            RemoteViews remoteViews2 = supportBigNotifications ? new RemoteViews(getApplicationContext().getPackageName(), R.layout.player_big_notification) : null;
            Notification notificationBuild2 = new NotificationCompat.Builder(getApplicationContext()).setSmallIcon(R.drawable.player).setContentIntent(activity).setChannelId(NotificationsController.OTHER_NOTIFICATIONS_CHANNEL).setContentTitle(str2).build();
            notificationBuild2.contentView = remoteViews;
            if (supportBigNotifications) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            setListeners(remoteViews);
            if (supportBigNotifications) {
                setListeners(remoteViews2);
            }
            RemoteViews remoteViews3 = notificationBuild2.contentView;
            int i5 = R.id.player_album_art;
            if (bitmap3 != null) {
                remoteViews3.setImageViewBitmap(i5, bitmap3);
                if (supportBigNotifications) {
                    notificationBuild2.bigContentView.setImageViewBitmap(i5, bitmap3);
                }
            } else {
                remoteViews3.setImageViewResource(i5, R.drawable.nocover_small);
                if (supportBigNotifications) {
                    notificationBuild2.bigContentView.setImageViewResource(i5, R.drawable.nocover_big);
                }
            }
            if (MediaController.getInstance().isDownloadingCurrentMessage()) {
                RemoteViews remoteViews4 = notificationBuild2.contentView;
                int i6 = R.id.player_pause;
                remoteViews4.setViewVisibility(i6, 8);
                RemoteViews remoteViews5 = notificationBuild2.contentView;
                int i7 = R.id.player_play;
                remoteViews5.setViewVisibility(i7, 8);
                RemoteViews remoteViews6 = notificationBuild2.contentView;
                int i8 = R.id.player_next;
                remoteViews6.setViewVisibility(i8, 8);
                RemoteViews remoteViews7 = notificationBuild2.contentView;
                int i9 = R.id.player_previous;
                remoteViews7.setViewVisibility(i9, 8);
                RemoteViews remoteViews8 = notificationBuild2.contentView;
                int i10 = R.id.player_progress_bar;
                remoteViews8.setViewVisibility(i10, 0);
                if (supportBigNotifications) {
                    notificationBuild2.bigContentView.setViewVisibility(i6, 8);
                    notificationBuild2.bigContentView.setViewVisibility(i7, 8);
                    notificationBuild2.bigContentView.setViewVisibility(i8, 8);
                    notificationBuild2.bigContentView.setViewVisibility(i9, 8);
                    notificationBuild2.bigContentView.setViewVisibility(i10, 0);
                }
            } else {
                RemoteViews remoteViews9 = notificationBuild2.contentView;
                int i11 = R.id.player_progress_bar;
                remoteViews9.setViewVisibility(i11, 8);
                if (messageObject.isMusic()) {
                    notificationBuild2.contentView.setViewVisibility(R.id.player_next, 0);
                    notificationBuild2.contentView.setViewVisibility(R.id.player_previous, 0);
                } else {
                    notificationBuild2.bigContentView.setViewVisibility(R.id.player_next, 8);
                    notificationBuild2.bigContentView.setViewVisibility(R.id.player_previous, 8);
                }
                if (supportBigNotifications) {
                    if (messageObject.isMusic()) {
                        notificationBuild2.bigContentView.setViewVisibility(R.id.player_next, 0);
                        notificationBuild2.bigContentView.setViewVisibility(R.id.player_previous, 0);
                        i = 8;
                    } else {
                        i = 8;
                        notificationBuild2.bigContentView.setViewVisibility(R.id.player_next, 8);
                        notificationBuild2.bigContentView.setViewVisibility(R.id.player_previous, 8);
                    }
                    notificationBuild2.bigContentView.setViewVisibility(i11, i);
                } else {
                    i = 8;
                }
                if (MediaController.getInstance().isMessagePaused()) {
                    RemoteViews remoteViews10 = notificationBuild2.contentView;
                    int i12 = R.id.player_pause;
                    remoteViews10.setViewVisibility(i12, i);
                    RemoteViews remoteViews11 = notificationBuild2.contentView;
                    int i13 = R.id.player_play;
                    remoteViews11.setViewVisibility(i13, 0);
                    if (supportBigNotifications) {
                        notificationBuild2.bigContentView.setViewVisibility(i12, i);
                        notificationBuild2.bigContentView.setViewVisibility(i13, 0);
                    }
                } else {
                    RemoteViews remoteViews12 = notificationBuild2.contentView;
                    int i14 = R.id.player_pause;
                    remoteViews12.setViewVisibility(i14, 0);
                    RemoteViews remoteViews13 = notificationBuild2.contentView;
                    int i15 = R.id.player_play;
                    remoteViews13.setViewVisibility(i15, i);
                    if (supportBigNotifications) {
                        notificationBuild2.bigContentView.setViewVisibility(i14, 0);
                        notificationBuild2.bigContentView.setViewVisibility(i15, i);
                    }
                }
            }
            RemoteViews remoteViews14 = notificationBuild2.contentView;
            int i16 = R.id.player_song_name;
            remoteViews14.setTextViewText(i16, str2);
            RemoteViews remoteViews15 = notificationBuild2.contentView;
            int i17 = R.id.player_author_name;
            remoteViews15.setTextViewText(i17, str3);
            if (supportBigNotifications) {
                notificationBuild2.bigContentView.setTextViewText(i16, str2);
                notificationBuild2.bigContentView.setTextViewText(i17, str3);
                notificationBuild2.bigContentView.setTextViewText(R.id.player_album_title, (audioInfo == null || TextUtils.isEmpty(audioInfo.getAlbum())) ? "" : audioInfo.getAlbum());
            }
            notificationBuild2.flags |= 2;
            startForeground(5, notificationBuild2);
        }
        if (this.remoteControlClient != null) {
            int id = MediaController.getInstance().getPlayingMessageObject().getId();
            if (this.notificationMessageID != id) {
                this.notificationMessageID = id;
                RemoteControlClient.MetadataEditor metadataEditorEditMetadata = this.remoteControlClient.editMetadata(true);
                metadataEditorEditMetadata.putString(2, str3);
                metadataEditorEditMetadata.putString(7, str2);
                if (audioInfo != null && !TextUtils.isEmpty(audioInfo.getAlbum())) {
                    metadataEditorEditMetadata.putString(1, audioInfo.getAlbum());
                }
                metadataEditorEditMetadata.putLong(9, MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration * 1000);
                if (bitmap2 != null) {
                    try {
                        metadataEditorEditMetadata.putBitmap(100, bitmap2);
                    } catch (Throwable th) {
                        FileLog.e(th);
                    }
                }
                metadataEditorEditMetadata.apply();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MusicPlayerService.3
                    @Override // java.lang.Runnable
                    public void run() throws IllegalArgumentException {
                        if (MusicPlayerService.this.remoteControlClient == null || MediaController.getInstance().getPlayingMessageObject() == null) {
                            return;
                        }
                        if (MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration == -9223372036854775807L) {
                            AndroidUtilities.runOnUIThread(this, 500L);
                            return;
                        }
                        RemoteControlClient.MetadataEditor metadataEditorEditMetadata2 = MusicPlayerService.this.remoteControlClient.editMetadata(false);
                        metadataEditorEditMetadata2.putLong(9, MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration * 1000);
                        metadataEditorEditMetadata2.apply();
                        MusicPlayerService.this.remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? 2 : 3, Math.max(MediaController.getInstance().getPlayingMessageObject().audioProgressSec * 1000, 100L), MediaController.getInstance().isMessagePaused() ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    }
                }, 1000L);
            }
            if (MediaController.getInstance().isDownloadingCurrentMessage()) {
                this.remoteControlClient.setPlaybackState(8);
                return;
            }
            RemoteControlClient.MetadataEditor metadataEditorEditMetadata2 = this.remoteControlClient.editMetadata(false);
            metadataEditorEditMetadata2.putLong(9, MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration * 1000);
            metadataEditorEditMetadata2.apply();
            this.remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? 2 : 3, Math.max(MediaController.getInstance().getPlayingMessageObject().audioProgressSec * 1000, 100L), MediaController.getInstance().isMessagePaused() ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        }
    }

    private int fixIntentFlags(int i) {
        return (Build.VERSION.SDK_INT >= 31 || !XiaomiUtilities.isMIUI()) ? i : i & (-100663297);
    }

    private Bitmap getAvatarBitmap(TLObject tLObject, boolean z, boolean z2) {
        ImageLocation forChat;
        int i = z ? 600 : 100;
        try {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                TLRPC.FileLocation fileLocation = z ? user.photo.photo_big : user.photo.photo_small;
                if (fileLocation != null) {
                    File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation, true);
                    if (pathToAttach.exists()) {
                        float f = i;
                        return ImageLoader.loadBitmap(pathToAttach.getAbsolutePath(), null, f, f, false);
                    }
                    if (z) {
                        if (z2) {
                            this.loadingFilePath = FileLoader.getAttachFileName(fileLocation);
                            forChat = ImageLocation.getForUser(user, 0);
                            this.imageReceiver.setImage(forChat, "", null, null, null, 0);
                        }
                        this.loadingFilePath = null;
                    }
                }
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                TLRPC.FileLocation fileLocation2 = z ? chat.photo.photo_big : chat.photo.photo_small;
                if (fileLocation2 != null) {
                    File pathToAttach2 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation2, true);
                    if (pathToAttach2.exists()) {
                        float f2 = i;
                        return ImageLoader.loadBitmap(pathToAttach2.getAbsolutePath(), null, f2, f2, false);
                    }
                    if (z) {
                        if (z2) {
                            this.loadingFilePath = FileLoader.getAttachFileName(fileLocation2);
                            forChat = ImageLocation.getForChat(chat, 0);
                            this.imageReceiver.setImage(forChat, "", null, null, null, 0);
                        }
                        this.loadingFilePath = null;
                    }
                }
            }
        } catch (Throwable th) {
            FileLog.e(th);
        }
        if (z) {
            return null;
        }
        Theme.createDialogsResources(this);
        AvatarDrawable avatarDrawable = tLObject instanceof TLRPC.User ? new AvatarDrawable((TLRPC.User) tLObject) : new AvatarDrawable((TLRPC.Chat) tLObject);
        avatarDrawable.setRoundRadius(1);
        float f3 = i;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(AndroidUtilities.dp(f3), AndroidUtilities.dp(f3), Bitmap.Config.ARGB_8888);
        avatarDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        avatarDrawable.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private float getPlaybackSpeed(boolean z, MessageObject messageObject) {
        if (!z) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (messageObject == null) {
            return 1.0f;
        }
        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            return MediaController.getInstance().getPlaybackSpeed(false);
        }
        return 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) throws IllegalArgumentException {
        if (!z || TextUtils.isEmpty(this.loadingFilePath)) {
            return;
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            createNotification(playingMessageObject, true);
        }
        this.loadingFilePath = null;
    }

    private Bitmap loadArtworkFromUrl(String str, boolean z, boolean z2) {
        ImageLoader.getHttpFileName(str);
        File httpFilePath = ImageLoader.getHttpFilePath(str, "jpg");
        if (httpFilePath.exists()) {
            return ImageLoader.loadBitmap(httpFilePath.getAbsolutePath(), null, z ? 600.0f : 100.0f, z ? 600.0f : 100.0f, false);
        }
        if (z2) {
            this.loadingFilePath = httpFilePath.getAbsolutePath();
            if (!z) {
                this.imageReceiver.setImage(str, "48_48", null, null, 0L);
            }
        } else {
            this.loadingFilePath = null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaybackState(long j) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        boolean z = !MediaController.getInstance().isMessagePaused();
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            this.playbackState.setState(6, 0L, 1.0f).setActions(0L);
        } else {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            this.playbackState.setState(z ? 3 : 2, j, getPlaybackSpeed(z, playingMessageObject)).setActions((playingMessageObject == null || !playingMessageObject.isMusic()) ? 774L : 822L);
        }
        this.mediaSession.setPlaybackState(this.playbackState.build());
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) throws IllegalArgumentException {
        MessageObject playingMessageObject;
        String str;
        String str2;
        if (i == NotificationCenter.messagePlayingPlayStateChanged) {
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 != null) {
                createNotification(playingMessageObject2, false);
                return;
            } else {
                stopSelf();
                return;
            }
        }
        if (i == NotificationCenter.messagePlayingDidSeek) {
            if (MediaController.getInstance().getPlayingMessageObject() == null) {
                return;
            }
            long jRound = Math.round(r3.audioPlayerDuration * ((Float) objArr[1]).floatValue()) * 1000;
            updatePlaybackState(jRound);
            RemoteControlClient remoteControlClient = this.remoteControlClient;
            if (remoteControlClient != null) {
                remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? 2 : 3, jRound, MediaController.getInstance().isMessagePaused() ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                return;
            }
            return;
        }
        if (i == NotificationCenter.httpFileDidLoad) {
            String str3 = (String) objArr[0];
            playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || (str2 = this.loadingFilePath) == null || !str2.equals(str3)) {
                return;
            }
        } else {
            if (i != NotificationCenter.fileLoaded) {
                return;
            }
            String str4 = (String) objArr[0];
            playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || (str = this.loadingFilePath) == null || !str.equals(str4)) {
                return;
            }
        }
        createNotification(playingMessageObject, false);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() throws Resources.NotFoundException {
        this.audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        for (int i = 0; i < 4; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidSeek);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
        }
        ImageReceiver imageReceiver = new ImageReceiver(null);
        this.imageReceiver = imageReceiver;
        imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.messenger.MusicPlayerService$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) throws IllegalArgumentException {
                this.f$0.lambda$onCreate$0(imageReceiver2, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i2, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i2, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver2) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver2);
            }
        });
        if (Build.VERSION.SDK_INT >= 21) {
            this.mediaSession = new MediaSession(this, "telegramAudioPlayer");
            this.playbackState = new PlaybackState.Builder();
            this.albumArtPlaceholder = Bitmap.createBitmap(AndroidUtilities.dp(102.0f), AndroidUtilities.dp(102.0f), Bitmap.Config.ARGB_8888);
            Drawable drawable = getResources().getDrawable(R.drawable.nocover_big);
            drawable.setBounds(0, 0, this.albumArtPlaceholder.getWidth(), this.albumArtPlaceholder.getHeight());
            drawable.draw(new Canvas(this.albumArtPlaceholder));
            this.mediaSession.setCallback(new MediaSession.Callback() { // from class: org.telegram.messenger.MusicPlayerService.2
                @Override // android.media.session.MediaSession.Callback
                public void onPause() {
                    MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
                }

                @Override // android.media.session.MediaSession.Callback
                public void onPlay() {
                    MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
                }

                @Override // android.media.session.MediaSession.Callback
                public void onSeekTo(long j) {
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject != null) {
                        MediaController.getInstance().seekToProgress(playingMessageObject, (j / 1000) / ((float) playingMessageObject.getDuration()));
                        MusicPlayerService.this.updatePlaybackState(j);
                    }
                }

                @Override // android.media.session.MediaSession.Callback
                public void onSkipToNext() {
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                        return;
                    }
                    MediaController.getInstance().playNextMessage();
                }

                @Override // android.media.session.MediaSession.Callback
                public void onSkipToPrevious() {
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                        return;
                    }
                    MediaController.getInstance().playPreviousMessage();
                }

                @Override // android.media.session.MediaSession.Callback
                public void onStop() {
                }
            });
            this.mediaSession.setActive(true);
        }
        registerReceiver(this.headsetPlugReceiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.headsetPlugReceiver);
        super.onDestroy();
        stopForeground(true);
        RemoteControlClient remoteControlClient = this.remoteControlClient;
        if (remoteControlClient != null) {
            RemoteControlClient.MetadataEditor metadataEditorEditMetadata = remoteControlClient.editMetadata(true);
            metadataEditorEditMetadata.clear();
            metadataEditorEditMetadata.apply();
            this.audioManager.unregisterRemoteControlClient(this.remoteControlClient);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.mediaSession.release();
        }
        for (int i = 0; i < 4; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingDidSeek);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoaded);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                if ((getPackageName() + ".STOP_PLAYER").equals(intent.getAction())) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                    return 2;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MusicPlayerService$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.stopSelf();
                }
            });
            return 1;
        }
        if (supportLockScreenControls) {
            ComponentName componentName = new ComponentName(getApplicationContext(), MusicPlayerReceiver.class.getName());
            try {
                if (this.remoteControlClient == null) {
                    this.audioManager.registerMediaButtonEventReceiver(componentName);
                    Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent2.setComponent(componentName);
                    RemoteControlClient remoteControlClient = new RemoteControlClient(PendingIntent.getBroadcast(this, 0, intent2, fixIntentFlags(ConnectionsManager.FileTypeVideo)));
                    this.remoteControlClient = remoteControlClient;
                    this.audioManager.registerRemoteControlClient(remoteControlClient);
                }
                this.remoteControlClient.setTransportControlFlags(189);
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
        createNotification(playingMessageObject, false);
        return 1;
    }

    public void setListeners(RemoteViews remoteViews) {
        remoteViews.setOnClickPendingIntent(R.id.player_previous, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(R.id.player_close, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_CLOSE), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(R.id.player_pause, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PAUSE), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(R.id.player_next, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(R.id.player_play, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PLAY), fixIntentFlags(167772160)));
    }
}
