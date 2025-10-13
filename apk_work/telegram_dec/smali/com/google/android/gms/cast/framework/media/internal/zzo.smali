.class final Lcom/google/android/gms/cast/framework/media/internal/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/app/NotificationManager;

.field private final zzd:Lcom/google/android/gms/cast/framework/CastContext;

.field private final zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private final zzg:Landroid/content/ComponentName;

.field private final zzh:Landroid/content/ComponentName;

.field private zzi:Ljava/util/List;

.field private zzj:[I

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field private final zzm:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzn:Landroid/content/res/Resources;

.field private zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

.field private zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

.field private zzq:Landroid/app/Notification;

.field private zzr:Landroidx/core/app/NotificationCompat$Action;

.field private zzs:Landroidx/core/app/NotificationCompat$Action;

.field private zzt:Landroidx/core/app/NotificationCompat$Action;

.field private zzu:Landroidx/core/app/NotificationCompat$Action;

.field private zzv:Landroidx/core/app/NotificationCompat$Action;

.field private zzw:Landroidx/core/app/NotificationCompat$Action;

.field private zzx:Landroidx/core/app/NotificationCompat$Action;

.field private zzy:Landroidx/core/app/NotificationCompat$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaNotificationProxy"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/CastContext;

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzh:Landroid/content/ComponentName;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zze()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzm:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/gms/cast/framework/R$string;->media_notification_channel_name:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "cast_media_notification"

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzad:Lcom/google/android/gms/internal/cast/zzml;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/cast/framework/media/internal/zzo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg()V

    return-void
.end method

.method static zze(Lcom/google/android/gms/cast/framework/CastOptions;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    move-result-object p0

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    const-class v4, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_5

    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " provides more than 5 actions."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-eqz p0, :cond_a

    array-length v2, p0

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_9

    aget v6, p0, v5

    if-ltz v6, :cond_8

    if-lt v6, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    return v1

    :cond_a
    :goto_3
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " doesn\'t provide any actions for compact view."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    :goto_4
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " doesn\'t provide any action."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return v0
.end method

.method private final zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 14

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    const-string v3, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    const/4 v4, 0x2

    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const-string v7, "com.google.android.gms.cast.framework.action.DISCONNECT"

    const-string v8, "com.google.android.gms.cast.framework.action.FORWARD"

    const-string v9, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const/4 v10, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/high16 v11, 0x8000000

    const-string v12, "googlecast-extra_skip_step_ms"

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v10

    const-string p1, "Action: %s is not a pre-defined action."

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v13

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v2, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v1, v10, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v0, v10

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v0, v10, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    or-int/2addr v3, v11

    invoke-static {v2, v10, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    or-int/2addr v3, v11

    invoke-static {v2, v10, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v0, v10, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzl()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v13}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v0, v10, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v13}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget v0, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result p1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzf()I

    move-result p1

    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v2, v10, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_c

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v0, v10, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzg()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzg()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zzb:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    const-string v6, "cast_media_notification"

    invoke-direct {v5, v4, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzh:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "targetActivity"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    sget v5, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    move-result-object v4

    if-eqz v4, :cond_9

    sget-object v5, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "actionsProvider != null"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    invoke-static {v4}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    if-nez v3, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.FORWARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.REWIND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v7, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    invoke-static {v6, v0, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    sget-object v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "actionsProvider == null"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_8

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_10

    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    if-eqz v3, :cond_e

    invoke-virtual {v0, v3}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zza:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    :cond_f
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_10
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzq:Landroid/app/Notification;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    const-string v3, "castMediaNotification"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_11
    :goto_9
    return-void
.end method


# virtual methods
.method final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string v1, "castMediaNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method final zzd(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Landroid/support/v4/media/session/MediaSessionCompat;Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v7

    if-eq v7, v5, :cond_4

    if-eq v7, v4, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v16, v8

    if-ge v7, v3, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    new-instance v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v11

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v14

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/cast/framework/media/internal/zzm;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    if-nez p4, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    if-eqz v1, :cond_6

    iget-boolean v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    iget-boolean v5, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    iget v5, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    if-ne v4, v5, :cond_6

    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    iget-boolean v5, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    if-ne v4, v5, :cond_6

    iget-boolean v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    if-eq v4, v1, :cond_7

    :cond_6
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg()V

    :cond_7
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzn;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    invoke-static {v3, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    new-instance v3, Lcom/google/android/gms/cast/framework/media/internal/zzl;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    :cond_a
    :goto_4
    return-void
.end method
