package com.google.android.gms.cast.framework.media.internal;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;
import androidx.media.R$id;
import androidx.media.R$integer;
import androidx.media.R$layout;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R$string;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationActionsProvider;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzdy;
import com.google.android.gms.internal.cast.zzml;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzo {
    private static final Logger zza = new Logger("MediaNotificationProxy");
    private final Context zzb;
    private final NotificationManager zzc;
    private final CastContext zzd;
    private final NotificationOptions zze;
    private final ComponentName zzg;
    private final ComponentName zzh;
    private List zzi = new ArrayList();
    private int[] zzj;
    private final long zzk;
    private final zzb zzl;
    private final ImageHints zzm;
    private final Resources zzn;
    private zzm zzo;
    private zzn zzp;
    private Notification zzq;
    private NotificationCompat.Action zzr;
    private NotificationCompat.Action zzs;
    private NotificationCompat.Action zzt;
    private NotificationCompat.Action zzu;
    private NotificationCompat.Action zzv;
    private NotificationCompat.Action zzw;
    private NotificationCompat.Action zzx;
    private NotificationCompat.Action zzy;

    zzo(Context context) throws Resources.NotFoundException {
        this.zzb = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
        this.zzc = notificationManager;
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance());
        this.zzd = castContext;
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(((CastOptions) Preconditions.checkNotNull(castContext.getCastOptions())).getCastMediaOptions());
        NotificationOptions notificationOptions = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.getNotificationOptions());
        this.zze = notificationOptions;
        castMediaOptions.getImagePicker();
        Resources resources = context.getResources();
        this.zzn = resources;
        this.zzg = new ComponentName(context.getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        this.zzh = !TextUtils.isEmpty(notificationOptions.getTargetActivityClassName()) ? new ComponentName(context.getApplicationContext(), notificationOptions.getTargetActivityClassName()) : null;
        this.zzk = notificationOptions.getSkipStepMs();
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.zze());
        ImageHints imageHints = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.zzm = imageHints;
        this.zzl = new zzb(context.getApplicationContext(), imageHints);
        if (PlatformVersion.isAtLeastO() && notificationManager != null) {
            NotificationChannel notificationChannel = new NotificationChannel("cast_media_notification", ((Context) Preconditions.checkNotNull(context)).getResources().getString(R$string.media_notification_channel_name), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    static boolean zze(CastOptions castOptions) {
        NotificationOptions notificationOptions;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        if (castMediaOptions == null || (notificationOptions = castMediaOptions.getNotificationOptions()) == null) {
            return false;
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzm = notificationOptions.zzm();
        if (zzgVarZzm == null) {
            return true;
        }
        List listZzf = zzw.zzf(zzgVarZzm);
        int[] iArrZzg = zzw.zzg(zzgVarZzm);
        int size = listZzf == null ? 0 : listZzf.size();
        if (listZzf == null || listZzf.isEmpty()) {
            zza.e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any action."), new Object[0]);
        } else if (listZzf.size() > 5) {
            zza.e(NotificationActionsProvider.class.getSimpleName().concat(" provides more than 5 actions."), new Object[0]);
        } else {
            if (iArrZzg != null && (iArrZzg.length) != 0) {
                for (int i : iArrZzg) {
                    if (i < 0 || i >= size) {
                        zza.e(NotificationActionsProvider.class.getSimpleName().concat("provides a compact view action whose index is out of bounds."), new Object[0]);
                    }
                }
                return true;
            }
            zza.e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any actions for compact view."), new Object[0]);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final NotificationCompat.Action zzf(String str) {
        char c;
        int pauseDrawableResId;
        int iZzf;
        switch (str.hashCode()) {
            case -1699820260:
                if (!str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    c = 65535;
                    break;
                } else {
                    c = 4;
                    break;
                }
            case -945151566:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                    c = 1;
                    break;
                }
                break;
            case -945080078:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                    c = 2;
                    break;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    c = 5;
                    break;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    c = 6;
                    break;
                }
                break;
            case 235550565:
                if (str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    c = 0;
                    break;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    c = 3;
                    break;
                }
                break;
        }
        PendingIntent broadcast = null;
        switch (c) {
            case 0:
                zzm zzmVar = this.zzo;
                int i = zzmVar.zzc;
                if (!zzmVar.zzb) {
                    if (this.zzr == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent.setComponent(this.zzg);
                        PendingIntent broadcast2 = PendingIntent.getBroadcast(this.zzb, 0, intent, zzdy.zza);
                        NotificationOptions notificationOptions = this.zze;
                        this.zzr = new NotificationCompat.Action.Builder(notificationOptions.getPlayDrawableResId(), this.zzn.getString(notificationOptions.zzg()), broadcast2).build();
                    }
                    return this.zzr;
                }
                if (this.zzs == null) {
                    NotificationOptions notificationOptions2 = this.zze;
                    if (i == 2) {
                        pauseDrawableResId = notificationOptions2.getStopLiveStreamDrawableResId();
                        iZzf = notificationOptions2.getStopLiveStreamTitleResId();
                    } else {
                        pauseDrawableResId = notificationOptions2.getPauseDrawableResId();
                        iZzf = notificationOptions2.zzf();
                    }
                    Intent intent2 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                    intent2.setComponent(this.zzg);
                    this.zzs = new NotificationCompat.Action.Builder(pauseDrawableResId, this.zzn.getString(iZzf), PendingIntent.getBroadcast(this.zzb, 0, intent2, zzdy.zza)).build();
                }
                return this.zzs;
            case 1:
                boolean z = this.zzo.zzf;
                if (this.zzt == null) {
                    if (z) {
                        Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                        intent3.setComponent(this.zzg);
                        broadcast = PendingIntent.getBroadcast(this.zzb, 0, intent3, zzdy.zza);
                    }
                    NotificationOptions notificationOptions3 = this.zze;
                    this.zzt = new NotificationCompat.Action.Builder(notificationOptions3.getSkipNextDrawableResId(), this.zzn.getString(notificationOptions3.zzk()), broadcast).build();
                }
                return this.zzt;
            case 2:
                boolean z2 = this.zzo.zzg;
                if (this.zzu == null) {
                    if (z2) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                        intent4.setComponent(this.zzg);
                        broadcast = PendingIntent.getBroadcast(this.zzb, 0, intent4, zzdy.zza);
                    }
                    NotificationOptions notificationOptions4 = this.zze;
                    this.zzu = new NotificationCompat.Action.Builder(notificationOptions4.getSkipPrevDrawableResId(), this.zzn.getString(notificationOptions4.zzl()), broadcast).build();
                }
                return this.zzu;
            case 3:
                long j = this.zzk;
                if (this.zzv == null) {
                    Intent intent5 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                    intent5.setComponent(this.zzg);
                    intent5.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j);
                    this.zzv = new NotificationCompat.Action.Builder(zzw.zza(this.zze, j), this.zzn.getString(zzw.zzb(this.zze, j)), PendingIntent.getBroadcast(this.zzb, 0, intent5, zzdy.zza | 134217728)).build();
                }
                return this.zzv;
            case 4:
                long j2 = this.zzk;
                if (this.zzw == null) {
                    Intent intent6 = new Intent(MediaIntentReceiver.ACTION_REWIND);
                    intent6.setComponent(this.zzg);
                    intent6.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j2);
                    this.zzw = new NotificationCompat.Action.Builder(zzw.zzc(this.zze, j2), this.zzn.getString(zzw.zzd(this.zze, j2)), PendingIntent.getBroadcast(this.zzb, 0, intent6, zzdy.zza | 134217728)).build();
                }
                return this.zzw;
            case 5:
                if (this.zzy == null) {
                    Intent intent7 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                    intent7.setComponent(this.zzg);
                    PendingIntent broadcast3 = PendingIntent.getBroadcast(this.zzb, 0, intent7, zzdy.zza);
                    NotificationOptions notificationOptions5 = this.zze;
                    this.zzy = new NotificationCompat.Action.Builder(notificationOptions5.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions5.zza()), broadcast3).build();
                }
                return this.zzy;
            case 6:
                if (this.zzx == null) {
                    Intent intent8 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                    intent8.setComponent(this.zzg);
                    PendingIntent broadcast4 = PendingIntent.getBroadcast(this.zzb, 0, intent8, zzdy.zza);
                    NotificationOptions notificationOptions6 = this.zze;
                    this.zzx = new NotificationCompat.Action.Builder(notificationOptions6.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions6.zza(), ""), broadcast4).build();
                }
                return this.zzx;
            default:
                zza.e("Action: %s is not a pre-defined action.", str);
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.core.app.NotificationCompat$Style, androidx.media.app.NotificationCompat$MediaStyle] */
    public final void zzg() {
        PendingIntent pendingIntent;
        NotificationCompat.Action actionZzf;
        if (this.zzc == null || this.zzo == null) {
            return;
        }
        zzn zznVar = this.zzp;
        NotificationCompat.Builder visibility = new NotificationCompat.Builder(this.zzb, "cast_media_notification").setLargeIcon(zznVar == null ? null : zznVar.zzb).setSmallIcon(this.zze.getSmallIconDrawableResId()).setContentTitle(this.zzo.zzd).setContentText(this.zzn.getString(this.zze.getCastingToDeviceStringResId(), this.zzo.zze)).setOngoing(true).setShowWhen(false).setVisibility(1);
        ComponentName componentName = this.zzh;
        if (componentName == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            TaskStackBuilder taskStackBuilderCreate = TaskStackBuilder.create(this.zzb);
            taskStackBuilderCreate.addNextIntentWithParentStack(intent);
            pendingIntent = taskStackBuilderCreate.getPendingIntent(1, zzdy.zza | 134217728);
        }
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzm = this.zze.zzm();
        if (zzgVarZzm != null) {
            zza.d("actionsProvider != null", new Object[0]);
            int[] iArrZzg = zzw.zzg(zzgVarZzm);
            this.zzj = iArrZzg != null ? (int[]) iArrZzg.clone() : null;
            List<NotificationAction> listZzf = zzw.zzf(zzgVarZzm);
            this.zzi = new ArrayList();
            if (listZzf != null) {
                for (NotificationAction notificationAction : listZzf) {
                    String action = notificationAction.getAction();
                    if (action.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || action.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || action.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || action.equals(MediaIntentReceiver.ACTION_FORWARD) || action.equals(MediaIntentReceiver.ACTION_REWIND) || action.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || action.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        actionZzf = zzf(notificationAction.getAction());
                    } else {
                        Intent intent2 = new Intent(notificationAction.getAction());
                        intent2.setComponent(this.zzg);
                        actionZzf = new NotificationCompat.Action.Builder(notificationAction.getIconResId(), notificationAction.getContentDescription(), PendingIntent.getBroadcast(this.zzb, 0, intent2, zzdy.zza)).build();
                    }
                    if (actionZzf != null) {
                        this.zzi.add(actionZzf);
                    }
                }
            }
        } else {
            zza.d("actionsProvider == null", new Object[0]);
            this.zzi = new ArrayList();
            Iterator it = this.zze.getActions().iterator();
            while (it.hasNext()) {
                NotificationCompat.Action actionZzf2 = zzf((String) it.next());
                if (actionZzf2 != null) {
                    this.zzi.add(actionZzf2);
                }
            }
            this.zzj = (int[]) this.zze.getCompatActionIndices().clone();
        }
        Iterator it2 = this.zzi.iterator();
        while (it2.hasNext()) {
            visibility.addAction((NotificationCompat.Action) it2.next());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            ?? r0 = new NotificationCompat.Style() { // from class: androidx.media.app.NotificationCompat$MediaStyle
                int[] mActionsToShowInCompact = null;
                PendingIntent mCancelButtonIntent;
                boolean mShowCancelButton;
                MediaSessionCompat.Token mToken;

                private RemoteViews generateMediaActionButton(NotificationCompat.Action action2) {
                    boolean z = action2.getActionIntent() == null;
                    RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), R$layout.notification_media_action);
                    int i = R$id.action0;
                    remoteViews.setImageViewResource(i, action2.getIcon());
                    if (!z) {
                        remoteViews.setOnClickPendingIntent(i, action2.getActionIntent());
                    }
                    NotificationCompat$Api15Impl.setContentDescription(remoteViews, i, action2.getTitle());
                    return remoteViews;
                }

                @Override // androidx.core.app.NotificationCompat.Style
                public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
                    } else if (this.mShowCancelButton) {
                        notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
                    }
                }

                RemoteViews generateBigContentView() throws Resources.NotFoundException {
                    int iMin = Math.min(this.mBuilder.mActions.size(), 5);
                    RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(iMin), false);
                    remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
                    if (iMin > 0) {
                        for (int i = 0; i < iMin; i++) {
                            remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton((NotificationCompat.Action) this.mBuilder.mActions.get(i)));
                        }
                    }
                    if (this.mShowCancelButton) {
                        int i2 = R$id.cancel_action;
                        remoteViewsApplyStandardTemplate.setViewVisibility(i2, 0);
                        remoteViewsApplyStandardTemplate.setInt(i2, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
                        remoteViewsApplyStandardTemplate.setOnClickPendingIntent(i2, this.mCancelButtonIntent);
                    } else {
                        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
                    }
                    return remoteViewsApplyStandardTemplate;
                }

                RemoteViews generateContentView() throws Resources.NotFoundException {
                    RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
                    int size = this.mBuilder.mActions.size();
                    int[] iArr = this.mActionsToShowInCompact;
                    int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
                    remoteViewsApplyStandardTemplate.removeAllViews(R$id.media_actions);
                    if (iMin > 0) {
                        for (int i = 0; i < iMin; i++) {
                            if (i >= size) {
                                throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                            }
                            remoteViewsApplyStandardTemplate.addView(R$id.media_actions, generateMediaActionButton((NotificationCompat.Action) this.mBuilder.mActions.get(this.mActionsToShowInCompact[i])));
                        }
                    }
                    if (this.mShowCancelButton) {
                        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 8);
                        int i2 = R$id.cancel_action;
                        remoteViewsApplyStandardTemplate.setViewVisibility(i2, 0);
                        remoteViewsApplyStandardTemplate.setOnClickPendingIntent(i2, this.mCancelButtonIntent);
                        remoteViewsApplyStandardTemplate.setInt(i2, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R$integer.cancel_button_image_alpha));
                    } else {
                        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.end_padder, 0);
                        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.cancel_action, 8);
                    }
                    return remoteViewsApplyStandardTemplate;
                }

                int getBigContentViewLayoutResource(int i) {
                    return i <= 3 ? R$layout.notification_template_big_media_narrow : R$layout.notification_template_big_media;
                }

                int getContentViewLayoutResource() {
                    return R$layout.notification_template_media;
                }

                @Override // androidx.core.app.NotificationCompat.Style
                public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        return null;
                    }
                    return generateBigContentView();
                }

                @Override // androidx.core.app.NotificationCompat.Style
                public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        return null;
                    }
                    return generateContentView();
                }

                public NotificationCompat$MediaStyle setMediaSession(MediaSessionCompat.Token token) {
                    this.mToken = token;
                    return this;
                }

                public NotificationCompat$MediaStyle setShowActionsInCompactView(int... iArr) {
                    this.mActionsToShowInCompact = iArr;
                    return this;
                }
            };
            int[] iArr = this.zzj;
            if (iArr != null) {
                r0.setShowActionsInCompactView(iArr);
            }
            MediaSessionCompat.Token token = this.zzo.zza;
            if (token != null) {
                r0.setMediaSession(token);
            }
            visibility.setStyle(r0);
        }
        Notification notificationBuild = visibility.build();
        this.zzq = notificationBuild;
        this.zzc.notify("castMediaNotification", 1, notificationBuild);
    }

    final void zzc() {
        this.zzl.zza();
        NotificationManager notificationManager = this.zzc;
        if (notificationManager != null) {
            notificationManager.cancel("castMediaNotification", 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzd(CastDevice castDevice, RemoteMediaClient remoteMediaClient, MediaSessionCompat mediaSessionCompat, boolean z) {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        boolean z2;
        boolean z3;
        zzm zzmVar;
        if (castDevice == null || remoteMediaClient == null || mediaSessionCompat == null || (mediaInfo = remoteMediaClient.getMediaInfo()) == null || (metadata = mediaInfo.getMetadata()) == null) {
            return;
        }
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        if (mediaStatus == null) {
            z2 = false;
            z3 = false;
        } else {
            int queueRepeatMode = mediaStatus.getQueueRepeatMode();
            if (queueRepeatMode == 1 || queueRepeatMode == 2 || queueRepeatMode == 3) {
                z2 = true;
                z3 = true;
            } else {
                Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                if (indexById != null) {
                    z3 = indexById.intValue() > 0;
                    z2 = indexById.intValue() < mediaStatus.getQueueItemCount() + (-1);
                }
            }
        }
        zzm zzmVar2 = new zzm(remoteMediaClient.getPlayerState() == 2, mediaInfo.getStreamType(), metadata.getString("com.google.android.gms.cast.metadata.TITLE"), castDevice.getFriendlyName(), mediaSessionCompat.getSessionToken(), z2, z3);
        if (z || (zzmVar = this.zzo) == null || zzmVar2.zzb != zzmVar.zzb || zzmVar2.zzc != zzmVar.zzc || !CastUtils.zze(zzmVar2.zzd, zzmVar.zzd) || !CastUtils.zze(zzmVar2.zze, zzmVar.zze) || zzmVar2.zzf != zzmVar.zzf || zzmVar2.zzg != zzmVar.zzg) {
            this.zzo = zzmVar2;
            zzg();
        }
        zzn zznVar = new zzn(metadata.hasImages() ? (WebImage) metadata.getImages().get(0) : null);
        zzn zznVar2 = this.zzp;
        if (zznVar2 == null || !CastUtils.zze(zznVar.zza, zznVar2.zza)) {
            this.zzl.zzc(new zzl(this, zznVar));
            this.zzl.zzd(zznVar.zza);
        }
    }
}
