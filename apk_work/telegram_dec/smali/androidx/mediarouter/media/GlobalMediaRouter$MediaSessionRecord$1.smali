.class Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;
.super Landroidx/media/VolumeProviderCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->configureVolume(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;


# direct methods
.method public static synthetic $r8$lambda$RwT-hTJ1_-jY_0YuYRdD-WofhYI(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->lambda$onSetVolumeTo$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrZvJ8MvyiExqf3cdiLr1GYD96A(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->lambda$onAdjustVolume$1(I)V

    return-void
.end method

.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onAdjustVolume$1(I)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSetVolumeTo$0(I)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance v1, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda1;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    new-instance v1, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
