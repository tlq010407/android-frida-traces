.class public Lorg/telegram/ui/Components/Paint/Views/LinkPreview;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;
    }
.end annotation


# instance fields
.field private animated:Z

.field public backgroundColor:I

.field private final bounds:Landroid/graphics/RectF;

.field private final captionAbove:Lorg/telegram/ui/Components/AnimatedFloat;

.field private currentAccount:I

.field public final density:F

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionLayoutLeft:F

.field private descriptionLayoutWidth:F

.field private final descriptionPaint:Landroid/text/TextPaint;

.field private final flagIconPadding:F

.field public h:F

.field private hasDescription:Z

.field public hasPhoto:Z

.field private hasSiteName:Z

.field private hasTitle:Z

.field private final height:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final iconPadding:F

.field private final iconSize:F

.field private layout:Landroid/text/StaticLayout;

.field private layoutLeft:F

.field private final layoutPaint:Landroid/text/TextPaint;

.field private layoutWidth:F

.field public maxWidth:I

.field private messageAbove:Z

.field private messageText:Lorg/telegram/ui/Components/Text;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private final padding:Landroid/graphics/RectF;

.field public final padx:I

.field public final pady:I

.field private final path:Landroid/graphics/Path;

.field private final path2:Landroid/graphics/Path;

.field private final photoAlphaProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private photoHeight:F

.field private final photoImage:Lorg/telegram/messenger/ImageReceiver;

.field private final photoSmallProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private previewHeight:F

.field private final previewHeightProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private previewPaint:Landroid/graphics/Paint;

.field private final previewProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final previewTheme:Lorg/telegram/ui/Components/AnimatedFloat;

.field public previewType:I

.field private final rect:Landroid/graphics/RectF;

.field private final rect1:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private relayout:Z

.field private siteNameText:Lorg/telegram/ui/Components/Text;

.field private smallPhoto:Z

.field private textScale:F

.field private titleText:Lorg/telegram/ui/Components/Text;

.field public type:I

.field private video:Z

.field public w:F

.field private webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

.field private final width:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    iput-boolean v9, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->relayout:Z

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const v2, 0x408a8f5c    # 4.33f

    const v3, 0x40f51eb8    # 7.66f

    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padding:Landroid/graphics/RectF;

    const/high16 v0, 0x40500000    # 3.25f

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->iconPadding:F

    const/high16 v0, 0x40100000    # 2.25f

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->flagIconPadding:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->iconSize:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->outlinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionPaint:Landroid/text/TextPaint;

    new-instance v13, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v13, v7}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v13, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path2:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect2:Landroid/graphics/RectF;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v15, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->captionAbove:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoAlphaProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoSmallProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewTheme:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeightProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->width:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->height:Lorg/telegram/ui/Components/AnimatedFloat;

    iput v8, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    mul-float v0, v8, v12

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    mul-float v0, v8, v10

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->story_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float v0, v0, v8

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "fonts/rcondensedbold.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public static fromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static fromUrlWithoutSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->drawInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setupLayout()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->width:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->height:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewTheme:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewType:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v9

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v3, 0x418547ae    # 16.66f

    mul-float v2, v2, v3

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->bounds:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    int-to-float v4, v4

    add-float v5, v3, v8

    add-float v6, v4, v9

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->outlinePaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->backgroundColor:I

    const v4, -0xdfdbd7

    const/4 v12, -0x1

    invoke-static {v12, v4, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-static {v3, v4, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path2:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path2:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->bounds:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path2:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v14, 0x437f0000    # 255.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    cmpl-float v1, v11, v16

    if-lez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path2:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->captionAbove:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageAbove:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v18

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v2, 0x40ea8f5c    # 7.33f

    mul-float v2, v2, v1

    add-float v19, v2, v16

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    const/high16 v20, 0x40e00000    # 7.0f

    const/high16 v21, 0x41700000    # 15.0f

    const/high16 v22, 0x41200000    # 10.0f

    if-eqz v2, :cond_1

    cmpl-float v3, v18, v16

    if-lez v3, :cond_1

    mul-float v3, v1, v22

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    div-float v1, v1, v17

    add-float v1, v19, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v21

    add-float/2addr v4, v5

    sub-float v5, v15, v18

    mul-float v4, v4, v5

    sub-float v4, v1, v4

    const v5, -0xe56301

    move-object v1, v2

    move-object/from16 v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v2, v20

    add-float/2addr v1, v2

    mul-float v1, v1, v18

    add-float v19, v19, v1

    :cond_1
    move/from16 v6, v19

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeightProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v3, v22

    sub-float v4, v8, v3

    add-float v5, v6, v1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v19, 0x40a00000    # 5.0f

    mul-float v3, v3, v19

    invoke-virtual {v1, v2, v3, v3, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v1, v22

    const/high16 v3, 0x41500000    # 13.0f

    mul-float v4, v1, v3

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v6

    move/from16 v23, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v2, 0x40b51eb8    # 5.66f

    mul-float v2, v2, v1

    add-float v13, v23, v2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasSiteName:Z

    const/high16 v24, 0x41a00000    # 20.0f

    const v25, 0x402a3d71    # 2.66f

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->siteNameText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_2

    mul-float v3, v1, v24

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    div-float v1, v1, v17

    add-float v4, v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    move-object v1, v2

    move-object/from16 v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->siteNameText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v2, v25

    add-float/2addr v1, v2

    add-float/2addr v13, v1

    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasTitle:Z

    const v6, -0xcccccd

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->titleText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v2, v24

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float v2, v2, v17

    add-float v4, v13, v2

    invoke-static {v6, v12, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    move-object/from16 v2, p1

    const v15, -0xcccccd

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->titleText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v2, v25

    add-float/2addr v1, v2

    add-float/2addr v13, v1

    goto :goto_1

    :cond_3
    const v15, -0xcccccd

    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasDescription:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v1, v1, v24

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutLeft:F

    sub-float/2addr v1, v2

    invoke-virtual {v7, v1, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionPaint:Landroid/text/TextPaint;

    invoke-static {v15, v12, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionPaint:Landroid/text/TextPaint;

    mul-float v2, v11, v14

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v2, v25

    add-float/2addr v1, v2

    add-float/2addr v13, v1

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoAlphaProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v2, v1, v16

    if-lez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoSmallProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect1:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v4, v24

    mul-float v4, v4, v25

    add-float/2addr v4, v13

    sub-float v6, v8, v5

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoHeight:F

    add-float/2addr v10, v4

    invoke-virtual {v3, v5, v4, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect2:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v4, v22

    sub-float/2addr v8, v5

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v5, v5, v4

    sub-float/2addr v8, v5

    const/high16 v6, 0x42400000    # 48.0f

    mul-float v4, v4, v6

    sub-float v6, v8, v4

    add-float v5, v23, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v6, v5, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    invoke-static {v3, v4, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->rect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v3, v5, v6, v4, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    mul-float v1, v1, v11

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v15, v1, v2

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v1, v1, v25

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoHeight:F

    add-float/2addr v1, v2

    mul-float v15, v15, v1

    add-float/2addr v13, v15

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v20, v20, v1

    add-float v13, v13, v20

    mul-float v19, v19, v1

    add-float v13, v13, v19

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v15, v3, v18

    cmpl-float v3, v15, v16

    if-lez v3, :cond_6

    mul-float v3, v1, v22

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    div-float v1, v1, v17

    add-float/2addr v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v4, v4, v21

    add-float/2addr v1, v4

    mul-float v1, v1, v18

    add-float v4, v13, v1

    const v5, -0xe56301

    move-object v1, v2

    move-object/from16 v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v11, v1

    if-gez v2, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v3, v4

    float-to-int v5, v5

    add-int/2addr v5, v2

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float v10, v4, v8

    sub-float v12, v9, v10

    div-float v12, v12, v17

    float-to-int v12, v12

    add-int/2addr v12, v6

    add-float/2addr v3, v8

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-float/2addr v10, v9

    div-float v10, v10, v17

    float-to-int v3, v10

    add-int/2addr v6, v3

    invoke-virtual {v1, v5, v12, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v11

    mul-float v15, v15, v14

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v8

    const/high16 v4, 0x40500000    # 3.25f

    add-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    int-to-float v3, v3

    div-float v9, v9, v17

    add-float/2addr v3, v9

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutLeft:F

    neg-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v17

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public getPhotoSide()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42400000    # 48.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->maxWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPreviewType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewType:I

    return v0
.end method

.method public getRadius()F
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v1, 0x418547ae    # 16.66f

    :goto_0
    mul-float v0, v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setupLayout()V

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public pushPhotoToCache()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public set(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->set(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Z)V

    return-void
.end method

.method public set(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Z)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->currentAccount:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->relayout:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->animated:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->maxWidth:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->relayout:Z

    return-void
.end method

.method public setPreviewType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewType:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(II)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    const/4 v2, -0x1

    if-nez p1, :cond_2

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->backgroundColor:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const p2, 0x3f389375    # 0.721f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->backgroundColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const/high16 p1, 0x4c000000    # 3.3554432E7f

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->backgroundColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->backgroundColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    const p2, -0xcc6e2c

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoTexture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    return-void
.end method

.method public setupLayout()V
    .locals 28

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->relayout:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    if-nez v1, :cond_0

    goto/16 :goto_22

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->withPreview()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->fromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v8, v8, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v9, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->maxWidth:I

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v10

    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    const/4 v13, 0x7

    if-ge v10, v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11, v10}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v11

    goto :goto_2

    :cond_3
    :goto_1
    move-object v11, v12

    :goto_2
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewPaint:Landroid/graphics/Paint;

    if-nez v11, :cond_4

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v14, v11

    rem-int/2addr v10, v14

    aget v10, v11, v10

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v10

    :goto_3
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v13, 0x40ea8f5c    # 7.33f

    mul-float v11, v11, v13

    add-float/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->captionAbove:Z

    iput-boolean v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageAbove:Z

    new-instance v10, Lorg/telegram/ui/Components/Text;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-direct {v10, v1, v11}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v1, v1, v11

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/Text;->setTextSizePx(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v11, 0x41a00000    # 20.0f

    mul-float v10, v10, v11

    sub-float v10, v9, v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    iget v13, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v13, v13, v11

    add-float/2addr v1, v13

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v10

    add-float/2addr v1, v10

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v11, 0x40e00000    # 7.0f

    mul-float v10, v10, v11

    add-float/2addr v1, v10

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v1, :cond_6

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-boolean v10, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->largePhoto:Z

    xor-int/2addr v10, v6

    iput-boolean v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    iget-boolean v13, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    const/high16 v15, 0x42200000    # 40.0f

    if-eqz v13, :cond_7

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_7

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->photoSize:I

    goto :goto_7

    :cond_7
    if-eqz v10, :cond_8

    const/high16 v1, 0x42400000    # 48.0f

    goto :goto_6

    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    div-float v1, v9, v1

    sub-float/2addr v1, v15

    :goto_6
    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v13, 0x40800000    # 4.0f

    mul-float v10, v10, v13

    float-to-int v10, v10

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const-string v10, "_"

    if-eqz v3, :cond_c

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v6, v7, v12, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    int-to-float v11, v1

    iget v14, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v11, v11, v14

    float-to-int v11, v11

    invoke-static {v13, v11, v7, v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    if-eqz v11, :cond_9

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_8

    :cond_9
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    if-eqz v4, :cond_a

    move-object v3, v12

    goto :goto_9

    :cond_a
    iget-object v4, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    :goto_9
    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_a
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    :goto_b
    move-object/from16 v19, v5

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    goto/16 :goto_e

    :cond_c
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v6, v7, v12, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    int-to-float v4, v1

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4, v7, v2, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-eqz v3, :cond_d

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    move v13, v4

    move v14, v5

    goto :goto_c

    :cond_d
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    if-eqz v3, :cond_e

    move-object v3, v12

    goto :goto_d

    :cond_e
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    move-object v3, v2

    :goto_d
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->video:Z

    if-eqz v2, :cond_f

    move-object v2, v4

    goto :goto_a

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v3

    move-object/from16 v18, v4

    goto :goto_b

    :goto_e
    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_f

    :cond_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_f
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const v3, 0x40b51eb8    # 5.66f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasSiteName:Z

    const v2, 0x402a3d71    # 2.66f

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v1, :cond_13

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v1, v5, v4, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/Text;->setTextSizePx(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v10, v5, v15

    sub-float v10, v9, v10

    iget-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v11, :cond_11

    iget-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v11, :cond_11

    mul-float v5, v5, v3

    goto :goto_10

    :cond_11
    const/4 v5, 0x0

    :goto_10
    sub-float/2addr v10, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->siteNameText:Lorg/telegram/ui/Components/Text;

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v11, v10, v15

    add-float/2addr v1, v11

    iget-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v11, :cond_12

    iget-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v11, :cond_12

    mul-float v10, v10, v3

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    :goto_11
    add-float/2addr v1, v10

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->siteNameText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    add-float/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v2

    add-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->siteNameText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getLineCount()I

    move-result v1

    goto :goto_12

    :cond_13
    const/4 v1, 0x0

    :goto_12
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasTitle:Z

    if-eqz v5, :cond_16

    new-instance v5, Lorg/telegram/ui/Components/Text;

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-direct {v5, v10, v4, v11}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v10, v10, v4

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Text;->setTextSizePx(F)Lorg/telegram/ui/Components/Text;

    move-result-object v5

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v11, v10, v15

    sub-float v11, v9, v11

    iget-boolean v12, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v12, :cond_14

    iget-boolean v12, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v12, :cond_14

    mul-float v10, v10, v3

    goto :goto_13

    :cond_14
    const/4 v10, 0x0

    :goto_13
    sub-float/2addr v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->titleText:Lorg/telegram/ui/Components/Text;

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v12, v11, v15

    add-float/2addr v5, v12

    iget-boolean v12, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v12, :cond_15

    iget-boolean v12, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v12, :cond_15

    mul-float v3, v3, v11

    goto :goto_14

    :cond_15
    const/4 v3, 0x0

    :goto_14
    add-float/2addr v5, v3

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->titleText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    add-float/2addr v3, v5

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->titleText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getLineCount()I

    move-result v3

    add-int/2addr v1, v3

    :cond_16
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v6

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasDescription:Z

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v15

    sub-float v5, v9, v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    iget-boolean v8, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v8, :cond_17

    iget-boolean v8, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v8, :cond_17

    const/16 v8, 0x3c

    goto :goto_15

    :cond_17
    const/4 v8, 0x0

    :goto_15
    const/16 v10, 0x28

    add-int/2addr v10, v8

    int-to-float v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v8, v8, v10

    sub-float v8, v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    rsub-int/lit8 v1, v1, 0x3

    const/16 v23, 0x4

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v1

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutWidth:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutLeft:F

    const/4 v3, 0x0

    :goto_16
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_1a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v4, :cond_18

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-eqz v4, :cond_18

    if-ge v3, v1, :cond_18

    const/4 v4, 0x1

    goto :goto_17

    :cond_18
    const/4 v4, 0x0

    :goto_17
    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutWidth:F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    if-eqz v4, :cond_19

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v10, 0x42400000    # 48.0f

    mul-float v4, v4, v10

    goto :goto_18

    :cond_19
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v4, 0x0

    :goto_18
    add-float/2addr v8, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutWidth:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutLeft:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutLeft:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1a
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayoutWidth:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    :cond_1b
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    if-nez v1, :cond_1e

    if-lez v13, :cond_1d

    if-gtz v14, :cond_1c

    goto :goto_1a

    :cond_1c
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v3, v15

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v3, v13

    div-float/2addr v1, v3

    int-to-float v3, v14

    mul-float v1, v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v4, 0x43480000    # 200.0f

    mul-float v3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_19
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoHeight:F

    goto :goto_1b

    :cond_1d
    :goto_1a
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float v1, v1, v3

    goto :goto_19

    :goto_1b
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoHeight:F

    add-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    :cond_1e
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v11, v2, v3

    add-float/2addr v1, v11

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    add-float/2addr v3, v1

    const/high16 v1, 0x41300000    # 11.0f

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    goto/16 :goto_20

    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->fromUrlWithoutSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    :goto_1c
    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->maxWidth:I

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padding:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x41f00000    # 30.0f

    add-float/2addr v5, v8

    const/high16 v9, 0x40500000    # 3.25f

    add-float/2addr v5, v9

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v4

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v5, v5, v4

    sub-float/2addr v2, v5

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    new-instance v4, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-float v12, v12

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v5, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutPaint:Landroid/text/TextPaint;

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v13, v10

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v4

    move-object v11, v1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutWidth:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutLeft:F

    const/4 v1, 0x0

    :goto_1d
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_21

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutWidth:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutWidth:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutLeft:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutLeft:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, v3, :cond_22

    const v1, 0x3e99999a    # 0.3f

    :goto_1e
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    goto :goto_1f

    :cond_22
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutWidth:F

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1e

    :goto_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padding:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    add-float/2addr v2, v9

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->density:F

    mul-float v2, v2, v3

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layoutWidth:F

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->w:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    mul-float v2, v2, v3

    mul-float v3, v3, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->textScale:F

    mul-float v1, v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->h:F

    :goto_20
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->animated:Z

    if-nez v1, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->captionAbove:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->messageAbove:Z

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoSmallProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->smallPhoto:Z

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->photoAlphaProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->hasPhoto:Z

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeightProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->previewHeight:F

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_21

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_21
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->relayout:Z

    :cond_24
    :goto_22
    return-void
.end method

.method public withPreview()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->webpage:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
