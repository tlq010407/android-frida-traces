.class public Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CropInlineEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentView"
.end annotation


# instance fields
.field private final dimPaint:Landroid/graphics/Paint;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private final matrix:Landroid/graphics/Matrix;

.field private final previewClipPath:Landroid/graphics/Path;

.field private final previewClipRect:Landroid/graphics/RectF;

.field private final previewMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->identityMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private applyCrop(Landroid/graphics/Canvas;FFF)V
    .locals 8

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$000(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$100(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropTransform;->getOrientation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    :cond_0
    move v7, v0

    move v0, p3

    move p3, v7

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropTransform;->getTrueCropScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    sub-float v4, v3, p2

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->getContainerWidth()F

    move-result v4

    int-to-float p3, p3

    div-float/2addr v4, p3

    int-to-float v0, v0

    mul-float v5, v4, v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->getContainerHeight()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->getContainerHeight()F

    move-result v4

    div-float/2addr v4, v0

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropAreaX()F

    move-result v5

    mul-float v5, v5, p4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropAreaY()F

    move-result v6

    mul-float v6, v6, p4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropTransform;->getScale()F

    move-result v5

    div-float/2addr v5, v2

    mul-float v5, v5, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-static {v2, v5, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    goto :goto_0

    :cond_3
    invoke-static {v3, v5, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    :goto_0
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropPx()F

    move-result p2

    mul-float p2, p2, p3

    mul-float p2, p2, p4

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Crop/CropTransform;->getCropPy()F

    move-result p3

    mul-float p3, p3, v0

    mul-float p3, p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Crop/CropTransform;->getRotation()F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$1100(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$1000(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I

    move-result p4

    div-int/lit16 p4, p4, 0x168

    mul-int/lit16 p4, p4, 0x168

    add-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result p3

    const/4 p4, 0x0

    invoke-static {p4, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget p3, p3, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget p4, p4, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result p4

    invoke-static {p3, p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method private getContainerHeight()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/BubbleActivity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget v2, v1, Lorg/telegram/ui/Components/Crop/CropView;->topPadding:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v2, v0

    iget v0, v1, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    return v1
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
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->dimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v5

    aget v5, v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$500(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v6

    aget v6, v6, v1

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    invoke-static {v5, v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v5

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v0, v0, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->previewClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v0

    sub-float v0, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v6

    aget v6, v6, v2

    neg-int v6, v6

    int-to-float v6, v6

    mul-float v6, v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$600(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v7

    aget v7, v7, v1

    neg-int v7, v7

    int-to-float v7, v7

    mul-float v7, v7, v0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v7, v0, v3

    if-lez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->closing:Z

    if-eqz v8, :cond_2

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$700(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$700(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v7

    aget v7, v7, v2

    int-to-float v7, v7

    mul-float v7, v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$700(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I

    move-result-object v8

    aget v8, v8, v1

    int-to-float v8, v8

    mul-float v8, v8, v0

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    goto :goto_0

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$400(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v4, v9, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-virtual {p1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRotation()F

    move-result v9

    mul-float v9, v9, v0

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    div-float/2addr v9, v6

    mul-float v9, v9, v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    div-float/2addr v7, v6

    mul-float v7, v7, v0

    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/ui/BubbleActivity;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget v8, v8, Lorg/telegram/ui/Components/Crop/CropView;->topPadding:F

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_5

    if-nez v7, :cond_5

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    int-to-float v7, v7

    add-float/2addr v8, v7

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->getContainerWidth()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v7, v9

    mul-float v7, v7, v5

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->getContainerHeight()F

    move-result v9

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    mul-float v8, v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v3, v0, v3

    if-lez v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    goto :goto_2

    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v9, v9, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    goto :goto_3

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {v4, v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float v3, v3, v8

    div-float/2addr v3, v6

    invoke-static {v4, v9, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float v7, v7, v8

    div-float/2addr v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v4, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    neg-float v9, v3

    mul-float v9, v9, v8

    neg-float v10, v7

    mul-float v10, v10, v8

    mul-float v3, v3, v8

    mul-float v7, v7, v8

    invoke-virtual {p1, v9, v10, v3, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_8
    invoke-direct {p0, p1, v5, v0, v4}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->applyCrop(Landroid/graphics/Canvas;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$800(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->closing:Z

    if-eqz v5, :cond_a

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v3, v3, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    iget-object v1, v3, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropView;->isMirrored()Z

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v4, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->drawContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
