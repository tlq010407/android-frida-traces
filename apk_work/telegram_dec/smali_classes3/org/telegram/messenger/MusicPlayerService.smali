.class public Lorg/telegram/messenger/MusicPlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final ID_NOTIFICATION:I = 0x5

.field public static final NOTIFY_CLOSE:Ljava/lang/String; = "org.telegram.android.musicplayer.close"

.field public static final NOTIFY_NEXT:Ljava/lang/String; = "org.telegram.android.musicplayer.next"

.field public static final NOTIFY_PAUSE:Ljava/lang/String; = "org.telegram.android.musicplayer.pause"

.field public static final NOTIFY_PLAY:Ljava/lang/String; = "org.telegram.android.musicplayer.play"

.field public static final NOTIFY_PREVIOUS:Ljava/lang/String; = "org.telegram.android.musicplayer.previous"

.field public static final NOTIFY_SEEK:Ljava/lang/String; = "org.telegram.android.musicplayer.seek"

.field private static supportBigNotifications:Z

.field private static supportLockScreenControls:Z


# instance fields
.field private albumArtPlaceholder:Landroid/graphics/Bitmap;

.field private audioManager:Landroid/media/AudioManager;

.field private foregroundServiceIsStarted:Z

.field private headsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private loadingFilePath:Ljava/lang/String;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private notificationMessageID:I

.field private playbackState:Landroid/media/session/PlaybackState$Builder;

.field private remoteControlClient:Landroid/media/RemoteControlClient;


# direct methods
.method public static synthetic $r8$lambda$GDJT63TAs4tT5AlwSbVtzEA0FPQ(Lorg/telegram/messenger/MusicPlayerService;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MusicPlayerService;->lambda$onCreate$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/telegram/messenger/MusicPlayerService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MusicPlayerService$1;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MusicPlayerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->updatePlaybackState(J)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MusicPlayerService;)Landroid/media/RemoteControlClient;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    return-object p0
.end method

.method private createNotification(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    const-string v6, "com.tmessages.openplayer"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_1
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v9, :cond_2

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    :cond_2
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v10, :cond_3

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_0

    :cond_3
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v10, :cond_4

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_0

    :cond_4
    move-wide v10, v7

    :goto_0
    cmp-long v6, v10, v7

    if-eqz v6, :cond_6

    const-string v6, "&message_id="

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tg://openmessage?user_id="

    :goto_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tg://openmessage?chat_id="

    goto :goto_1

    :cond_6
    :goto_2
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v9, 0x2000000

    invoke-direct {v1, v9}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v6, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v13

    double-to-long v11, v11

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    const/4 v9, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_b

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v14

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_3

    :cond_7
    move-object v15, v9

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_4

    :cond_8
    move-object/from16 v16, v9

    :goto_4
    iput-object v9, v1, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    if-nez v15, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    xor-int/lit8 v7, p2, 0x1

    invoke-direct {v1, v14, v13, v7}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_9

    invoke-direct {v1, v6, v10, v7}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v6, v15

    goto/16 :goto_b

    :cond_9
    invoke-direct {v1, v14, v10, v7}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    :goto_5
    move-object/from16 v6, v16

    goto/16 :goto_b

    :cond_a
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    goto :goto_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    move-object v6, v9

    move-object v15, v6

    goto :goto_b

    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v3

    if-eqz v3, :cond_e

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_7
    xor-int/lit8 v6, p2, 0x1

    invoke-direct {v1, v3, v13, v6}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v3, v10, v6}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v15, v3

    goto :goto_8

    :cond_f
    move-object v7, v9

    move-object v15, v7

    :goto_8
    if-nez v7, :cond_10

    if-eqz v15, :cond_10

    move-object/from16 v16, v15

    goto :goto_9

    :cond_10
    move-object/from16 v16, v7

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lorg/telegram/messenger/R$string;->AttachAudio:I

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_11
    sget v3, Lorg/telegram/messenger/R$string;->AttachRound:I

    goto :goto_a

    :goto_b
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    move-object/from16 v18, v15

    if-lt v7, v8, :cond_26

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v8

    xor-int/2addr v8, v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    new-instance v14, Landroid/content/Intent;

    const-string v9, "org.telegram.android.musicplayer.previous"

    invoke-direct {v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/content/ComponentName;

    const-class v13, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-direct {v9, v1, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v14, 0x12000000

    move-wide/from16 v21, v11

    invoke-direct {v1, v14}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v11

    invoke-static {v15, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-direct {v12, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".STOP_PLAYER"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v1, v14}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v12

    const/4 v15, 0x0

    invoke-static {v11, v15, v10, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    if-eqz v8, :cond_12

    const-string v15, "org.telegram.android.musicplayer.pause"

    goto :goto_c

    :cond_12
    const-string v15, "org.telegram.android.musicplayer.play"

    :goto_c
    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v1, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    invoke-direct {v1, v14}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v15

    const/4 v14, 0x0

    invoke-static {v11, v14, v12, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v15, Landroid/content/Intent;

    const-string v14, "org.telegram.android.musicplayer.next"

    invoke-direct {v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v1, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v23, v6

    const/high16 v15, 0x12000000

    invoke-direct {v1, v15}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v6

    const/4 v15, 0x0

    invoke-static {v12, v15, v14, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v14, Landroid/content/Intent;

    const-string v15, "org.telegram.android.musicplayer.seek"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v1, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    const/high16 v14, 0x12000000

    invoke-direct {v1, v14}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    new-instance v12, Landroid/app/Notification$MediaStyle;

    invoke-direct {v12}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v13, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v13}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession$Token;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Notification$MediaStyle;Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v13

    move-object/from16 v24, v11

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    const/4 v14, 0x2

    filled-new-array {v15, v13, v14}, [I

    move-result-object v11

    invoke-static {v12, v11}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/Notification$MediaStyle;[I)Landroid/app/Notification$MediaStyle;

    goto :goto_d

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_14
    filled-new-array {v15}, [I

    move-result-object v11

    invoke-static {v12, v11}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/Notification$MediaStyle;[I)Landroid/app/Notification$MediaStyle;

    :cond_15
    :goto_d
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v13, Lorg/telegram/messenger/R$drawable;->player:I

    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_16
    const/4 v14, 0x0

    :goto_e
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v10, "transport"

    invoke-static {v5, v10}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/16 v5, 0x1a

    if-lt v7, v5, :cond_17

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    sget-object v5, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-static {v11, v5}, Lcom/huawei/hms/push/o$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_17
    if-eqz v18, :cond_18

    move-object/from16 v15, v18

    invoke-virtual {v11, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_f

    :cond_18
    iget-object v5, v1, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :goto_f
    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/4 v13, 0x6

    move/from16 v17, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15, v7}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v12

    invoke-static {v12, v14, v15}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v12

    if-eqz v12, :cond_19

    new-instance v12, Landroid/app/Notification$Action$Builder;

    sget v13, Lorg/telegram/messenger/R$drawable;->ic_action_previous:I

    invoke-direct {v12, v13, v10, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v12}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_19
    new-instance v9, Landroid/app/Notification$Action$Builder;

    sget v10, Lorg/telegram/messenger/R$drawable;->loading_animation2:I

    sget v12, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v9, v10, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v9}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v9

    if-eqz v9, :cond_1a

    new-instance v9, Landroid/app/Notification$Action$Builder;

    sget v10, Lorg/telegram/messenger/R$drawable;->ic_action_next:I

    invoke-direct {v9, v10, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v9}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v5

    invoke-static {v11, v5}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_1a
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    goto/16 :goto_16

    :cond_1b
    move/from16 v17, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v12

    if-eqz v12, :cond_1c

    const-wide/16 v14, 0x336

    goto :goto_10

    :cond_1c
    const-wide/16 v14, 0x306

    :goto_10
    iget-object v12, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    if-eqz v8, :cond_1d

    const/4 v7, 0x3

    goto :goto_11

    :cond_1d
    const/4 v7, 0x2

    :goto_11
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    int-to-long v2, v13

    const-wide/16 v19, 0x3e8

    mul-long v2, v2, v19

    invoke-direct {v1, v8, v0}, Lorg/telegram/messenger/MusicPlayerService;->getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F

    move-result v13

    invoke-static {v12, v7, v2, v3, v13}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v2

    invoke-static {v2, v14, v15}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    if-eqz v8, :cond_1e

    sget v2, Lorg/telegram/messenger/R$string;->AccActionPause:I

    :goto_12
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_1e
    sget v2, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    goto :goto_12

    :goto_13
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v3, Landroid/app/Notification$Action$Builder;

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_action_previous:I

    invoke-direct {v3, v7, v10, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v3}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v3

    invoke-static {v11, v3}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_1f
    new-instance v3, Landroid/app/Notification$Action$Builder;

    if-eqz v8, :cond_20

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_action_pause:I

    :goto_14
    move-object/from16 v9, v24

    goto :goto_15

    :cond_20
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_action_play:I

    goto :goto_14

    :goto_15
    invoke-direct {v3, v7, v2, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v3}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v2

    invoke-static {v11, v2}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_action_next:I

    invoke-direct {v2, v3, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v2}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v2

    invoke-static {v11, v2}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_21
    :goto_16
    iget-object v2, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object v3, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)V

    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.ALBUM_ART"

    move-object/from16 v9, v23

    invoke-static {v2, v3, v9}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    move-object/from16 v6, v18

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.ARTIST"

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    move-wide/from16 v12, v21

    invoke-static {v2, v3, v12, v13}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    move-object/from16 v7, v16

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    if-eqz v4, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    :goto_17
    const-string v3, "android.media.metadata.ALBUM"

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaMetadata$Builder;)Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/MediaMetadata;)V

    const/4 v0, 0x1

    invoke-static {v11, v0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x1f

    const-string v5, "notification"

    move/from16 v10, v17

    if-lt v10, v3, :cond_24

    iget-boolean v3, v1, Lorg/telegram/messenger/MusicPlayerService;->foregroundServiceIsStarted:Z

    if-nez v3, :cond_23

    iput-boolean v0, v1, Lorg/telegram/messenger/MusicPlayerService;->foregroundServiceIsStarted:Z

    const/4 v0, 0x5

    :goto_18
    invoke-virtual {v1, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_21

    :cond_23
    const/4 v0, 0x5

    :goto_19
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_21

    :cond_24
    const/4 v0, 0x5

    if-eqz v8, :cond_25

    goto :goto_18

    :cond_25
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_19

    :cond_26
    move-object v7, v2

    move-object v9, v6

    move-object/from16 v15, v18

    move-object v6, v3

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v8, Lorg/telegram/messenger/R$layout;->player_small_notification:I

    invoke-direct {v2, v3, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-boolean v3, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v3, :cond_27

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$layout;->player_big_notification:I

    invoke-direct {v3, v8, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_27
    const/4 v3, 0x0

    :goto_1a
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Lorg/telegram/messenger/R$drawable;->player:I

    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    sget-object v8, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-boolean v8, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v8, :cond_28

    iput-object v3, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_28
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    sget-boolean v2, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v2, :cond_29

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    :cond_29
    iget-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lorg/telegram/messenger/R$id;->player_album_art:I

    if-eqz v15, :cond_2a

    invoke-virtual {v2, v3, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget-boolean v2, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v2, :cond_2b

    iget-object v2, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1b

    :cond_2a
    sget v8, Lorg/telegram/messenger/R$drawable;->nocover_small:I

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget-boolean v2, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v2, :cond_2b

    iget-object v2, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$drawable;->nocover_big:I

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2b
    :goto_1b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_pause:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$id;->player_play:I

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v10, Lorg/telegram/messenger/R$id;->player_next:I

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v11, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {v0, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v12, Lorg/telegram/messenger/R$id;->player_progress_bar:I

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v0, :cond_31

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1f

    :cond_2c
    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object v8, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v10, Lorg/telegram/messenger/R$id;->player_progress_bar:I

    invoke-virtual {v8, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$id;->player_next:I

    invoke-virtual {v3, v8, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {v3, v8, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1c

    :cond_2d
    iget-object v2, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v3, Lorg/telegram/messenger/R$id;->player_next:I

    const/16 v8, 0x8

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v2, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v3, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1c
    sget-boolean v2, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v2, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_next:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v3, 0x8

    goto :goto_1d

    :cond_2e
    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_next:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1d
    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1e

    :cond_2f
    const/16 v3, 0x8

    :goto_1e
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_pause:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$id;->player_play:I

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v0, :cond_31

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1f

    :cond_30
    const/4 v10, 0x0

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_pause:I

    invoke-virtual {v0, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lorg/telegram/messenger/R$id;->player_play:I

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v0, :cond_31

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_31
    :goto_1f
    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_song_name:I

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lorg/telegram/messenger/R$id;->player_author_name:I

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v0, :cond_33

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget v2, Lorg/telegram/messenger/R$id;->player_album_title:I

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_32
    const-string v3, ""

    :goto_20
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_33
    iget v0, v5, Landroid/app/Notification;->flags:I

    const/4 v2, 0x2

    or-int/2addr v0, v2

    iput v0, v5, Landroid/app/Notification;->flags:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_21
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_3a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget v2, v1, Lorg/telegram/messenger/MusicPlayerService;->notificationMessageID:I

    const/16 v3, 0x9

    if-eq v2, v0, :cond_36

    iput v0, v1, Lorg/telegram/messenger/MusicPlayerService;->notificationMessageID:I

    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v0, 0x7

    invoke-virtual {v5, v0, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_34
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-long v6, v0

    const-wide/16 v10, 0x3e8

    mul-long v6, v6, v10

    invoke-virtual {v5, v3, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    if-eqz v9, :cond_35

    const/16 v0, 0x64

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_22

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_35
    :goto_22
    invoke-virtual {v5}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    new-instance v0, Lorg/telegram/messenger/MusicPlayerService$3;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MusicPlayerService$3;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_23

    :cond_36
    const/4 v8, 0x2

    :goto_23
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_26

    :cond_37
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v14, 0x2

    goto :goto_24

    :cond_38
    const/4 v14, 0x3

    :goto_24
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const-wide/16 v4, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x0

    goto :goto_25

    :cond_39
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_25
    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    :cond_3a
    :goto_26
    return-void
.end method

.method private fixIntentFlags(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x6000001

    and-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;
    .locals 11

    const-string v2, ""

    if-eqz p2, :cond_0

    const/16 v0, 0x258

    const/16 v7, 0x258

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    const/16 v7, 0x64

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :catchall_0
    move-exception p3

    goto/16 :goto_5

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    if-eqz v1, :cond_7

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    int-to-float v0, v7

    invoke-static {p3, v9, v0, v0, v10}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p3

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, p3

    goto :goto_4

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    if-eqz v1, :cond_7

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    int-to-float v0, v7

    invoke-static {p3, v9, v0, v0, v10}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p3

    goto :goto_2

    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_6
    iput-object v9, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    if-nez p2, :cond_9

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_8

    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_7

    :cond_8
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_7
    invoke-virtual {p2, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    int-to-float p1, v7

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p2, v10, v10, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-object v9
.end method

.method private getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    return p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreate$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->getHttpFileName(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "jpg"

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/high16 p3, 0x42c80000    # 100.0f

    const/high16 v0, 0x44160000    # 600.0f

    if-eqz p2, :cond_0

    const/high16 v1, 0x44160000    # 600.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    :goto_0
    if-eqz p2, :cond_1

    const/high16 p3, 0x44160000    # 600.0f

    :cond_1
    const/4 p2, 0x0

    invoke-static {p1, v2, v1, p3, p2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v5, "48_48"

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object v2
.end method

.method private updatePlaybackState(J)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/4 p2, 0x6

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x336

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x306

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/MusicPlayerService;->getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F

    move-result v0

    invoke-static {v4, v5, p1, p2, v0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object p2, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    invoke-static {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_3

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    if-ne p1, p2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-float p1, p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->updatePlaybackState(J)V

    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p3, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    goto :goto_3

    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-ne p1, p2, :cond_6

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_7

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_2
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/media/session/MediaSession;

    const-string v2, "telegramAudioPlayer"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->nocover_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lorg/telegram/messenger/MusicPlayerService$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MusicPlayerService$2;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/session/MediaSession;Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline19;->m(Landroid/media/session/MediaSession;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->clear()V

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline18;->m(Landroid/media/session/MediaSession;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".STOP_PLAYER"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 p1, 0x2

    return p1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return p2

    :cond_1
    sget-boolean p3, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p3, 0x2000000

    invoke-direct {p0, p3}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result p3

    invoke-static {p0, v0, v1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, p3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_0

    :catch_1
    move-exception p3

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v1, 0xbd

    invoke-virtual {p3, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return p2
.end method

.method public setListeners(Landroid/widget/RemoteViews;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.telegram.android.musicplayer.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xa000000

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.close"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->player_close:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.pause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->player_pause:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.next"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->player_next:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.play"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->player_play:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method
