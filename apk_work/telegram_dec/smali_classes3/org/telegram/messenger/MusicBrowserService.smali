.class public Lorg/telegram/messenger/MusicBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;,
        Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CMD:Ljava/lang/String; = "com.example.android.mediabrowserservice.ACTION_CMD"

.field public static final CMD_NAME:Ljava/lang/String; = "CMD_NAME"

.field public static final CMD_PAUSE:Ljava/lang/String; = "CMD_PAUSE"

.field private static final MEDIA_ID_ROOT:Ljava/lang/String; = "__ROOT__"

.field private static final SLOT_RESERVATION_QUEUE:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

.field private static final SLOT_RESERVATION_SKIP_TO_NEXT:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

.field private static final SLOT_RESERVATION_SKIP_TO_PREV:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

.field private static final STOP_DELAY:I = 0x7530


# instance fields
.field private bitmapRect:Landroid/graphics/RectF;

.field private chats:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private chatsLoaded:Z

.field private currentAccount:I

.field private delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectedDialog:J

.field private loadingChats:Z

.field private mediaSession:Landroid/media/session/MediaSession;

.field private musicObjects:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private musicQueues:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private roundPaint:Landroid/graphics/Paint;

.field private serviceStarted:Z

.field private users:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9TTrGQ2CPeq52Mf6V68qVakO1ck(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MusicBrowserService;->lambda$onLoadChildren$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAEnMECDl5WPF9-wEO3dmeL2fkU(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService;->lambda$onLoadChildren$0(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Landroidx/collection/LongSparseArray;

    new-instance v0, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;-><init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePauseRequest()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MusicBrowserService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MusicBrowserService;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MusicBrowserService;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MusicBrowserService;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->createMediaSession()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method private createMediaSession()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "MusicService"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline7;->m(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;-><init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/session/MediaSession;Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/session/MediaSession;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x63

    const/high16 v3, 0xa000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/session/MediaSession;Landroid/os/Bundle;)V

    return-void
.end method

.method private createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAvailableActions()J
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const-wide/16 v1, 0xc04

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0xc06

    :cond_0
    const-wide/16 v3, 0x30

    or-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method private handlePauseRequest()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handlePlayRequest()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/telegram/messenger/MusicBrowserService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/session/MediaSession;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->createMediaSession()V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline19;->m(Landroid/media/session/MediaSession;Z)V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    const-string v4, "android.media.metadata.DURATION"

    invoke-static {v1, v4, v2, v3}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.metadata.ARTIST"

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaMetadata$Builder;)Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private handleStopRequest(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const-wide/16 v1, 0x7530

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iput-boolean v3, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    iget p1, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$onLoadChildren$0(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    iget-wide p1, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    :cond_0
    iget-wide p1, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Landroidx/collection/LongSparseArray;

    iget-wide v3, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->createMediaSession()V

    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {v3, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/MediaSession;Ljava/util/List;)V

    iget-wide v3, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {v1, p2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSession;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    const-string v1, "DELETED USER"

    :goto_1
    invoke-static {p2, v1}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSession;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Landroidx/collection/LongSparseArray;

    neg-long v1, v3

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    const-string v1, "DELETED CHAT"

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    new-instance p2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-string v2, "android.media.metadata.DURATION"

    invoke-static {p2, v2, v0, v1}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.metadata.TITLE"

    invoke-static {p2, v0, p1}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaMetadata$Builder;)Landroid/media/MediaMetadata;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession;Landroid/media/MediaMetadata;)V

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onLoadChildren$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ","

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SELECT DISTINCT uid FROM media_v4 WHERE uid != 0 AND mid > 0 AND type = %d"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v3

    invoke-static {v9, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    :goto_0
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    iget-object v12, v1, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v10, v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v10, v7

    :goto_1
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    iget-object v8, v1, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v1, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT uid, data, mid FROM media_v4 WHERE uid IN (%s) AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v8, v13, v3

    aput-object v11, v13, v4

    invoke-static {v10, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    invoke-static {v9, v10, v3}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    iget v11, v1, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    iget-wide v11, v11, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v10, v9, v11, v12}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    invoke-virtual {v8, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    iput v9, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget-object v9, v1, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iget-object v13, v1, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v1, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v14, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    new-instance v14, Lorg/telegram/messenger/MessageObject;

    iget v15, v1, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-direct {v14, v15, v10, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v9, v3, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v10, Landroid/media/MediaDescription$Builder;

    invoke-direct {v10}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v9

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    new-instance v10, Landroid/media/session/MediaSession$QueueItem;

    invoke-static {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object v9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v10, v9, v11, v12}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    invoke-virtual {v13, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v1, Lorg/telegram/messenger/MusicBrowserService;->users:Landroidx/collection/LongSparseArray;

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v10, v11, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/2addr v6, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v1, Lorg/telegram/messenger/MusicBrowserService;->chats:Landroidx/collection/LongSparseArray;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v5, v6, v7, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    goto :goto_4

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    new-instance v0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda8;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "__ROOT__"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "__CHAT_"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance p1, Landroid/media/MediaDescription$Builder;

    invoke-direct {p1}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_0
    const-string v1, "DELETED USER"

    :goto_1
    invoke-static {p1, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Landroidx/collection/LongSparseArray;

    neg-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_2
    const-string v1, "DELETED CHAT"

    goto :goto_1

    :cond_3
    :goto_2
    move-object v1, v6

    :goto_3
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget v5, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/messenger/MusicBrowserService;->createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {p1, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    :cond_4
    if-eqz v1, :cond_5

    if-nez v6, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/drawable/contact_blue"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    :cond_6
    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-static {p1}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object p1

    invoke-direct {v1, p1, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Landroidx/collection/LongSparseArray;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    new-instance v4, Landroid/media/MediaDescription$Builder;

    invoke-direct {v4}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-static {p2, v0}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService$Result;Ljava/lang/Object;)V

    return-void
.end method

.method private static passcode()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez v0, :cond_1

    sget v0, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz v0, :cond_0

    sget v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x5

    sget v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-ge v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePlaybackState(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    :goto_0
    move-wide v5, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->getAvailableActions()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    :goto_2
    if-eqz p1, :cond_4

    invoke-static {v1, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    const/4 p1, 0x7

    const/4 v4, 0x7

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/session/PlaybackState$Builder;IJFJ)Landroid/media/session/PlaybackState$Builder;

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result p1

    int-to-long v2, p1

    :goto_4
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_4

    :goto_5
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_6

    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_lastSelectedDialog"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline18;->m(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    if-eq v0, p2, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v0, p2, :cond_0

    const-string p2, "com.google.android.mediasimulator"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.google.android.projection.gearhead"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MusicBrowserService;->passcode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "__ROOT__"

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    :cond_2
    :goto_0
    return-object p3
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/MusicBrowserService;->passcode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->EnterYourTelegramPasscode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline5;->m(Landroid/service/media/MediaBrowserService$Result;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticApiModelOutline5;->m(Landroid/service/media/MediaBrowserService$Result;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
