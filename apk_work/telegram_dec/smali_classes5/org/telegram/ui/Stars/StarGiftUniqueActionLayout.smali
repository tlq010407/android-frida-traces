.class public Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;
    }
.end annotation


# instance fields
.field action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

.field private attached:Z

.field private backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final backgroundRect:Landroid/graphics/RectF;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final buttonBackgroundPaint:Landroid/graphics/Paint;

.field private final buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonHeight:F

.field private final buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final buttonPath:Landroid/graphics/Path;

.field private final buttonRect:Landroid/graphics/RectF;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private buttonY:F

.field private final currentAccount:I

.field currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private final emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private gradient:Landroid/graphics/RadialGradient;

.field private gradientRadius:I

.field height:I

.field public final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final matrix:Landroid/graphics/Matrix;

.field private model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

.field private nameWidth:F

.field private pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

.field public repost:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private subtitleY:F

.field private final table:Ljava/util/ArrayList;

.field private title:Lorg/telegram/ui/Components/Text;

.field private titleY:F

.field private valueWidth:F

.field private final view:Lorg/telegram/ui/Cells/ChatActionCell;

.field width:I


# direct methods
.method public constructor <init>(ILorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/high16 v11, -0x1000000

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradientRadius:I

    if-eq v3, v1, :cond_1

    :cond_0
    new-instance v3, Landroid/graphics/RadialGradient;

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradientRadius:I

    int-to-float v15, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v4, v11

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v1, v11

    filled-new-array {v4, v1}, [I

    move-result-object v16

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v3

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3c4ccccd    # 0.0125f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    sub-float v3, v10, v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    const/4 v1, -0x1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v2, :cond_4

    iget v1, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v1, v11

    :cond_4
    move v7, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v2

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    div-float/2addr v2, v9

    sub-float v3, v10, v2

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->titleY:F

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    div-float/2addr v2, v9

    sub-float v3, v10, v2

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitleY:F

    move-object/from16 v2, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    const/high16 v12, 0x41100000    # 9.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    add-float v13, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    iget-object v1, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    div-float v2, v13, v9

    sub-float v16, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    add-float v2, v16, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float v3, v2, v3

    iget v4, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    add-float v16, v16, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v16, v2

    iget v4, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->y:F

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    goto :goto_0

    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    div-float/2addr v2, v9

    sub-float v2, v10, v2

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    div-float/2addr v5, v9

    add-float/2addr v10, v5

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    iget v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    div-float/2addr v3, v9

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3e051eb8    # 0.13f

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3d99999a    # 0.075f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    const v3, 0x423aae14    # 46.67f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    const v5, 0x3faa3d71    # 1.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v6, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawOutbounds(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3c4ccccd    # 0.0125f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d99999a    # 0.075f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v1, -0x1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    return-void
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->height:I

    int-to-float v0, v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v0, v0

    return v0
.end method

.method public has()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(FFLandroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method public set(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v7, :cond_0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    if-nez v7, :cond_1

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v7, v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v7, :cond_2

    :cond_1
    move-object v6, v5

    :cond_2
    iget-boolean v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_3
    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_4

    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v6, :cond_5

    return-void

    :cond_5
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object v8, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v8, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v9, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v9, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v9, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_2

    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9, v5, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v2, :cond_9

    if-eqz v8, :cond_7

    iget-object v5, v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_9

    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v8, 0x6e

    invoke-static {v2, v5, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2UniqueRibbon:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xb

    invoke-virtual {v2, v8, v5, v3}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setText(ILjava/lang/CharSequence;Z)V

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v2, :cond_a

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_4
    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    goto :goto_6

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f19999a    # 0.6f

    mul-float v2, v2, v5

    goto :goto_5

    :cond_b
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v5, 0x3f1eb852    # 0.62f

    mul-float v2, v2, v5

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    :goto_5
    float-to-int v2, v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sub-int/2addr v5, v8

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v8

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_c

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v2, v2

    const v5, 0x3f99999a    # 1.2f

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    :cond_c
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_4

    :goto_6
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->upgrade:Z

    xor-int/2addr v8, v3

    if-ne v8, v5, :cond_d

    iget v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    goto :goto_7

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    :goto_7
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_e

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    :cond_e
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v5

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    add-float/2addr v9, v10

    const/high16 v11, 0x42dc0000    # 110.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    const v11, 0x411547ae    # 9.33f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    iget-boolean v11, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v12, 0x41600000    # 14.0f

    if-eqz v11, :cond_f

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    :goto_8
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto :goto_a

    :cond_f
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v6, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15

    cmp-long v1, v13, v15

    if-nez v1, :cond_11

    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionSelfTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    goto :goto_8

    :cond_11
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2UniqueTitle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    goto :goto_8

    :cond_12
    :goto_9
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2UniqueTitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    goto :goto_8

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->titleY:F

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v1, :cond_13

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget v5, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    const-string v6, "Gift2CollectionNumber"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    :goto_b
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    goto :goto_c

    :cond_13
    new-instance v1, Lorg/telegram/ui/Components/Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, v6

    const/16 v11, 0x2c

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    goto :goto_b

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitleY:F

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v3, 0x41300000    # 11.0f

    if-eqz v1, :cond_14

    const/high16 v1, 0x41600000    # 14.0f

    goto :goto_d

    :cond_14
    const/high16 v1, 0x41300000    # 11.0f

    :goto_d
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v10, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iput v10, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x40c00000    # 6.0f

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    :cond_15
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v6, v7}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float v7, v2, v4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v10, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v7, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    :cond_17
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v6, v7}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float v7, v2, v4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v10, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v7, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    :cond_19
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v5, v6}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float v2, v2, v4

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v4, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v4, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    :cond_1a
    const v1, 0x413a8f5c    # 11.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v1, :cond_1b

    iput v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v2, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    add-float/2addr v9, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_e
    int-to-float v1, v1

    add-float/2addr v9, v1

    goto :goto_f

    :cond_1b
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_e

    :goto_f
    float-to-int v1, v9

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->height:I

    return-void
.end method
