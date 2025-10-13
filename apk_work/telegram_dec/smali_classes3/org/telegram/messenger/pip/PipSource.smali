.class public Lorg/telegram/messenger/pip/PipSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/pip/PipSource$Builder;
    }
.end annotation


# static fields
.field private static sourceIdCounter:I

.field private static final tmpRect:Landroid/graphics/Rect;


# instance fields
.field public contentView:Landroid/view/View;

.field public final controller:Lorg/telegram/messenger/pip/PipActivityController;

.field public final cornerRadius:I

.field public final delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

.field private isAvailable:Z

.field public final needMediaSession:Z

.field public final params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

.field private final pipPositionObserver:Lorg/telegram/messenger/pip/utils/PipPositionObserver;

.field public placeholderView:Landroid/view/View;

.field player:Lcom/google/android/exoplayer2/Player;

.field public final priority:I

.field private remoteActions:Ljava/util/ArrayList;

.field public final sourceId:I

.field public final state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/pip/PipSource;->tmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/pip/PipActivityController;Lorg/telegram/messenger/pip/PipSource$Builder;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/pip/PipSource;->sourceIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/pip/PipSource;->sourceIdCounter:I

    iput v0, p0, Lorg/telegram/messenger/pip/PipSource;->sourceId:I

    new-instance v1, Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-direct {v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    new-instance v2, Lorg/telegram/messenger/pip/utils/PipPositionObserver;

    new-instance v3, Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/pip/PipSource;)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/pip/utils/PipPositionObserver;-><init>(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v2, p0, Lorg/telegram/messenger/pip/PipSource;->pipPositionObserver:Lorg/telegram/messenger/pip/utils/PipPositionObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$000(Lorg/telegram/messenger/pip/PipSource$Builder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$000(Lorg/telegram/messenger/pip/PipSource$Builder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "pip-source"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$100(Lorg/telegram/messenger/pip/PipSource$Builder;)Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$200(Lorg/telegram/messenger/pip/PipSource$Builder;)Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$300(Lorg/telegram/messenger/pip/PipSource$Builder;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/pip/PipSource;->priority:I

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$400(Lorg/telegram/messenger/pip/PipSource$Builder;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/pip/PipSource;->cornerRadius:I

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$500(Lorg/telegram/messenger/pip/PipSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipSource;->needMediaSession:Z

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$600(Lorg/telegram/messenger/pip/PipSource$Builder;)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$700(Lorg/telegram/messenger/pip/PipSource$Builder;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->setRatio(II)Z

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$800(Lorg/telegram/messenger/pip/PipSource$Builder;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$900(Lorg/telegram/messenger/pip/PipSource$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->placeholderView:Landroid/view/View;

    new-instance v0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;-><init>(Lorg/telegram/messenger/pip/PipSource;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-static {p2}, Lorg/telegram/messenger/pip/PipSource$Builder;->access$1000(Lorg/telegram/messenger/pip/PipSource$Builder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/pip/PipSource;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/telegram/messenger/pip/PipSource;->checkAvailable(Z)V

    invoke-virtual {p0}, Lorg/telegram/messenger/pip/PipSource;->invalidateActions()V

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceRegister(Lorg/telegram/messenger/pip/PipSource;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/pip/PipActivityController;Lorg/telegram/messenger/pip/PipSource$Builder;Lorg/telegram/messenger/pip/PipSource$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/pip/PipSource;-><init>(Lorg/telegram/messenger/pip/PipActivityController;Lorg/telegram/messenger/pip/PipSource$Builder;)V

    return-void
.end method

.method private checkAvailable(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-interface {v0}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/messenger/pip/PipSource;->isAvailable:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipSource;->isAvailable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceAvailabilityChanged(Lorg/telegram/messenger/pip/PipSource;)V

    :cond_1
    return-void
.end method

.method private updateContentPosition(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInPictureInPictureMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    sget-object v1, Lorg/telegram/messenger/pip/PipSource;->tmpRect:Landroid/graphics/Rect;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/pip/utils/PipUtils;->getPipSourceRectHintPosition(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->setPosition(Landroid/graphics/Rect;)Z

    move-result v0

    instance-of v1, p1, Lorg/webrtc/TextureViewRenderer;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/webrtc/TextureViewRenderer;

    iget v1, p1, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iget p1, p1, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v2, v1, p1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->setRatio(II)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipSource;->checkAvailable(Z)V

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceParamsChanged(Lorg/telegram/messenger/pip/PipSource;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public buildPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->build()Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipSource;->remoteActions:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/pip/utils/PipUtils;->useAutoEnterInPictureInPictureMode()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline15;->m(Landroid/app/PictureInPictureParams$Builder;Z)Landroid/app/PictureInPictureParams$Builder;

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline16;->m(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->pipPositionObserver:Lorg/telegram/messenger/pip/utils/PipPositionObserver;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipPositionObserver;->stop()V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceUnregister(Lorg/telegram/messenger/pip/PipSource;)V

    return-void
.end method

.method public invalidateActions()V
    .locals 0

    return-void
.end method

.method public invalidateAvailability()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipSource;->checkAvailable(Z)V

    return-void
.end method

.method public invalidatePosition()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipSource;->updateContentPosition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipSource;->isAvailable:Z

    return v0
.end method

.method public setContentRatio(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->setRatio(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipSource;->checkAvailable(Z)V

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceParamsChanged(Lorg/telegram/messenger/pip/PipSource;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource;->pipPositionObserver:Lorg/telegram/messenger/pip/utils/PipPositionObserver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/utils/PipPositionObserver;->start(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->contentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipSource;->updateContentPosition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPlaceholderView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->placeholderView:Landroid/view/View;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->player:Lcom/google/android/exoplayer2/Player;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipSource;->checkAvailable(Z)V

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController;->dispatchSourceParamsChanged(Lorg/telegram/messenger/pip/PipSource;)V

    return-void
.end method
