.class public final Lcom/google/android/gms/cast/framework/media/internal/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zze:Lcom/google/android/gms/internal/cast/zzbf;

.field private final zzf:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private final zzh:Landroid/content/ComponentName;

.field private final zzi:Landroid/content/ComponentName;

.field private final zzj:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field private final zzk:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field private final zzl:Lcom/google/android/gms/cast/framework/media/internal/zzo;

.field private final zzm:Landroid/os/Handler;

.field private final zzn:Ljava/lang/Runnable;

.field private final zzo:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

.field private zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private zzq:Lcom/google/android/gms/cast/CastDevice;

.field private zzr:Landroid/support/v4/media/session/MediaSessionCompat;

.field private zzs:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private zzt:Z

.field private zzu:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field private zzv:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field private zzw:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field private zzx:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbf;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zze:Lcom/google/android/gms/internal/cast/zzbf;

    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    if-nez p3, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzu;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;Lcom/google/android/gms/cast/framework/media/internal/zzt;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzo:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    if-nez p3, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzh:Landroid/content/ComponentName;

    if-nez p3, :cond_4

    move-object p3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object p3

    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzi:Landroid/content/ComponentName;

    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzj:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzq;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    invoke-virtual {p3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzk:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzr;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    invoke-virtual {p3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    new-instance p3, Lcom/google/android/gms/internal/cast/zzed;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm:Landroid/os/Handler;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze(Lcom/google/android/gms/cast/framework/CastOptions;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzo;-><init>(Landroid/content/Context;)V

    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzp;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzv;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzi:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/cast/framework/media/internal/zzv;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cast/framework/media/internal/zzv;)Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzf:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/cast/framework/media/internal/zzv;)Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/cast/framework/media/internal/zzv;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/cast/framework/media/internal/zzv;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zzm(Ljava/lang/String;ILandroid/os/Bundle;)J
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3855de4e

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x3854c70e

    if-eq v0, v1, :cond_1

    const v1, 0xe0a3765

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    const-wide/16 v0, 0x0

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzt()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x20

    goto :goto_4

    :cond_5
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    :goto_2
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-wide v0

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzu()Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x10

    goto :goto_4

    :cond_7
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    goto :goto_2

    :cond_8
    const/4 p1, 0x3

    if-ne p2, p1, :cond_9

    const-wide/16 p2, 0x202

    move-wide v0, p2

    const/4 p2, 0x3

    goto :goto_3

    :cond_9
    const-wide/16 v0, 0x200

    :goto_3
    if-eq p2, v2, :cond_a

    :goto_4
    return-wide v0

    :cond_a
    const-wide/16 p1, 0x204

    return-wide p1
.end method

.method private final zzn(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private final zzo()Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private final zzp(Landroid/graphics/Bitmap;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzo()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    goto :goto_0

    :cond_2
    const-string p2, "android.media.metadata.ALBUM_ART"

    :goto_0
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private final zzq(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    const/4 v3, 0x2

    const-string v4, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const/4 v5, 0x3

    const-string v6, "com.google.android.gms.cast.framework.action.DISCONNECT"

    const-string v7, "com.google.android.gms.cast.framework.action.FORWARD"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result p3

    invoke-direct {v0, p2, v1, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p2

    goto/16 :goto_2

    :cond_1
    const/4 p2, 0x0

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzx:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result p3

    invoke-direct {v0, v6, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzx:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzx:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzw:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result p3

    invoke-direct {v0, v4, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzw:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzw:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzv:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzv:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzv:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v7, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    :goto_2
    if-eqz p2, :cond_a

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzr(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final zzs()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Stopping media notification."

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc()V

    :cond_0
    return-void
.end method

.method private final zzt()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final zzu(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-wide v7, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v7

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1, v7, v8, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    if-nez p1, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    goto/16 :goto_6

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move-wide v7, v5

    goto :goto_3

    :cond_8
    const-wide/16 v7, 0x100

    :goto_3
    if-eqz v3, :cond_a

    invoke-static {v3}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzv(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-direct {p0, v10, p1, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm(Ljava/lang/String;ILandroid/os/Bundle;)J

    move-result-wide v9

    or-long/2addr v7, v9

    goto :goto_4

    :cond_9
    invoke-direct {p0, v2, v10, v9}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzv(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-direct {p0, v9, p1, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzm(Ljava/lang/String;ILandroid/os/Bundle;)J

    move-result-wide v9

    or-long/2addr v7, v9

    goto :goto_5

    :cond_b
    invoke-direct {p0, v2, v9, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v2, v7, v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v2

    goto :goto_1

    :goto_6
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    const/4 v3, 0x1

    const-string v7, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzp()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    const-string v8, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzo()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    :cond_10
    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzh:Landroid/content/ComponentName;

    if-nez p1, :cond_11

    move-object p1, v4

    goto :goto_7

    :cond_11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzh:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    const/high16 v7, 0x8000000

    or-int/2addr v3, v7

    invoke-static {v2, v1, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_7
    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v5

    :goto_8
    const-string p2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzo()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v7, "android.media.metadata.DURATION"

    invoke-virtual {v3, v7, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    if-eqz p2, :cond_14

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {v3, v5, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v5, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v3, v5, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_14
    if-eqz v2, :cond_15

    const-string p2, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v3, p2, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_15
    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzj:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    goto :goto_9

    :cond_16
    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp(Landroid/graphics/Bitmap;I)V

    :goto_9
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzn(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_17

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzk:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    return-void

    :cond_17
    invoke-direct {p0, v4, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp(Landroid/graphics/Bitmap;I)V

    :cond_18
    :goto_a
    return-void

    :cond_19
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private static final zzv(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v2

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzd:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzi:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzo:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    invoke-virtual {p1, v3, p2, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzi:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    sget v4, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {p2, v1, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaSessionEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzi:Landroid/content/ComponentName;

    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v5, "CastMediaSession"

    invoke-direct {v4, p2, v5, v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu(ILcom/google/android/gms/cast/MediaInfo;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_3
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzs:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-virtual {v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zze:Lcom/google/android/gms/internal/cast/zzbf;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/cast/zzbf;->zzr(Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt:Z

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl(Z)V

    return-void

    :cond_5
    :goto_1
    sget-object p1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "skip attaching media session"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt:Z

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzo:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzc:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zze:Lcom/google/android/gms/internal/cast/zzbf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzbf;->zzr(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzj:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzk:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu(ILcom/google/android/gms/cast/MediaInfo;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_6
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzs:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzs()V

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt()V

    :cond_7
    :goto_0
    return-void
.end method

.method final synthetic zzj()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr(Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update Cast device to %s"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl(Z)V

    return-void
.end method

.method public final zzl(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzu(ILcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzs()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzt()V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Update media notification."

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzq:Lcom/google/android/gms/cast/CastDevice;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzd(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Landroid/support/v4/media/session/MediaSessionCompat;Z)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzr(Z)V

    :cond_4
    :goto_0
    return-void
.end method
