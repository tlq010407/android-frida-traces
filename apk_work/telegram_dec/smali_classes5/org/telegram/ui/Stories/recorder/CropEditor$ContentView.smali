.class public Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CropEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentView"
.end annotation


# instance fields
.field private final clipMatrix:Landroid/graphics/Matrix;

.field private final cropMatrix:Landroid/graphics/Matrix;

.field private final dimPaint:Landroid/graphics/Paint;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private final invertedClipMatrix:Landroid/graphics/Matrix;

.field private final matrix:Landroid/graphics/Matrix;

.field private final previewClipPath:Landroid/graphics/Path;

.field private final previewClipRect:Landroid/graphics/RectF;

.field private final previewMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/CropEditor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->identityMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->clipMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->invertedClipMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private applyCrop(Landroid/graphics/Matrix;Z)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$000(Lorg/telegram/ui/Stories/recorder/CropEditor;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$100(Lorg/telegram/ui/Stories/recorder/CropEditor;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropTransform;->getOrientation()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_1

    :cond_0
    move v10, v1

    move v1, v0

    move v0, v10

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropTransform;->getTrueCropScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    mul-float v4, v4, v7

    add-float/2addr v4, v5

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->getContainerWidth()F

    move-result v7

    int-to-float v0, v0

    div-float/2addr v7, v0

    int-to-float v1, v1

    mul-float v8, v7, v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->getContainerHeight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->getContainerHeight()F

    move-result v7

    div-float/2addr v7, v1

    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    div-int/2addr v8, v3

    rem-int/lit8 v8, v8, 0x2

    const/4 v3, 0x1

    if-ne v8, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropAreaX()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropAreaY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Crop/CropTransform;->getScale()F

    move-result v8

    div-float/2addr v8, v4

    mul-float v8, v8, v7

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v4, :cond_5

    if-eqz p2, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v5, v8

    :goto_2
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropPx()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropPy()F

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/recorder/CropEditor;->closing:Z

    if-eqz v8, :cond_b

    if-eqz p2, :cond_b

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v3, :cond_8

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    goto :goto_3

    :cond_8
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v5, :cond_9

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    :cond_b
    :goto_4
    mul-float v4, v4, v0

    mul-float v5, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropTransform;->getRotation()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v1, :cond_c

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget p2, p2, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v0, v0

    add-float v6, p2, v0

    goto :goto_5

    :cond_d
    move v6, v0

    :goto_5
    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private getContainerHeight()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/BubbleActivity;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget v1, v1, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v2, v1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    return v2
.end method

.method private getContainerWidth()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->drawImage(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Z)V
    .locals 13

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v5

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v9, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v10, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v5

    sub-float v5, v3, v5

    mul-float v5, v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v5, v5, v0

    float-to-int v11, v5

    const/4 v8, 0x0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v5

    aget v5, v5, v2

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v6

    aget v6, v6, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v6

    aget v6, v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v7

    aget v7, v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v0

    const/4 v5, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v6

    aget v6, v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v7

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    invoke-static {v6, v0, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v6

    invoke-static {v0, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v0, v0, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v7

    aget v7, v7, v2

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v8

    aget v8, v8, v1

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v7

    aget v7, v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropEditor;)[I

    move-result-object v8

    aget v8, v8, v1

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v9

    iget v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/BubbleActivity;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    if-nez v6, :cond_3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->getContainerWidth()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->getContainerHeight()F

    move-result v9

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v9, v4

    add-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v6, 0x40800000    # 4.0f

    if-eqz p2, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->identityMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->clipMatrix:Landroid/graphics/Matrix;

    invoke-static {v7, v8, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Matrix;Landroid/graphics/Matrix;FLandroid/graphics/Matrix;)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->clipMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->clipMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->invertedClipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x5a

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v1, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v10, v10, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    goto :goto_3

    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v11}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v11}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v11, v11, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    goto :goto_4

    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_4
    if-eqz v7, :cond_8

    move v12, v9

    goto :goto_5

    :cond_8
    move v12, v8

    :goto_5
    mul-float v12, v12, v10

    div-float/2addr v12, v4

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    move v8, v9

    :goto_6
    mul-float v8, v8, v11

    div-float/2addr v8, v4

    invoke-static {v3, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->clipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    neg-float v7, v12

    mul-float v7, v7, v0

    neg-float v9, v8

    mul-float v9, v9, v0

    mul-float v12, v12, v0

    mul-float v8, v8, v0

    invoke-virtual {p1, v7, v9, v12, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->invertedClipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->applyCrop(Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->applyCrop(Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$700(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/recorder/CropEditor;->closing:Z

    if-eqz v8, :cond_c

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v7, v7, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/CropEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropView;->isMirrored()Z

    move-result v1

    :goto_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    mul-float v2, v0, v4

    sub-float v2, v3, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    mul-float v6, v6, v0

    sub-float/2addr v3, v0

    mul-float v6, v6, v3

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v6, v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preSkew(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preSkew(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->cropMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropEditor;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->matrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Matrix;Landroid/graphics/Matrix;FLandroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    return-void
.end method
