.class abstract Landroidx/mediarouter/media/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;,
        Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;,
        Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mRcc:Landroid/media/RemoteControlClient;

.field protected mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/media/RemoteControlClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mRcc:Landroid/media/RemoteControlClient;

    return-void
.end method

.method public static obtain(Landroid/content/Context;Landroid/media/RemoteControlClient;)Landroidx/mediarouter/media/RemoteControlClientCompat;
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;-><init>(Landroid/content/Context;Landroid/media/RemoteControlClient;)V

    return-object v0
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public abstract setPlaybackInfo(Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;)V
.end method

.method public setVolumeCallback(Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    return-void
.end method
