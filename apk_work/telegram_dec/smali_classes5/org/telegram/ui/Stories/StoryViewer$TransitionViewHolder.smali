.class public Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionViewHolder"
.end annotation


# instance fields
.field public alpha:F

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public bgPaint:Landroid/graphics/Paint;

.field public checkParentScale:Z

.field public clipBottom:F

.field public clipParent:Landroid/view/View;

.field public clipTop:F

.field public crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

.field public drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

.field public params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

.field public storyId:I

.field public storyImage:Lorg/telegram/messenger/ImageReceiver;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    return-void
.end method

.method public getAvatarImageRoundRadius()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->checkParentScale:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
