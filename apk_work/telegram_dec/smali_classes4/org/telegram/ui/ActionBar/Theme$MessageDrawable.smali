.class public Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;
    }
.end annotation


# static fields
.field public static motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;


# instance fields
.field private alpha:I

.field private backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

.field private backgroundDrawableColor:[[I

.field private backupRect:Landroid/graphics/Rect;

.field private botButtonsBottom:Z

.field private crosfadeFromBitmap:Landroid/graphics/Bitmap;

.field private crosfadeFromBitmapShader:Landroid/graphics/Shader;

.field public crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public crossfadeProgress:F

.field private currentAnimateGradient:Z

.field private currentBackgroundDrawableRadius:[[I

.field private currentBackgroundHeight:I

.field private currentColor:I

.field private currentGradientColor1:I

.field private currentGradientColor2:I

.field private currentGradientColor3:I

.field private currentShadowDrawableRadius:[I

.field private currentType:I

.field private drawFullBubble:Z

.field private gradientShader:Landroid/graphics/Shader;

.field private isBottomNear:Z

.field public isCrossfadeBackground:Z

.field private final isOut:Z

.field public isSelected:Z

.field private isTopNear:Z

.field public lastDrawWithShadow:Z

.field private matrix:Landroid/graphics/Matrix;

.field private overrideRoundRadius:I

.field private overrideRounding:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedPaint:Landroid/graphics/Paint;

.field private shadowDrawable:[Landroid/graphics/drawable/Drawable;

.field private shadowDrawableBitmap:[Landroid/graphics/Bitmap;

.field private shadowDrawableColor:[I

.field public themePreview:Z

.field private topY:I

.field transitionDrawable:Landroid/graphics/drawable/Drawable;

.field transitionDrawableColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    sput-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/graphics/Bitmap;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    new-array v3, v2, [[I

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    aput-object v4, v3, v1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    new-array v3, v6, [I

    aput v2, v3, v1

    aput v2, v3, v5

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [[I

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v5

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v6

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    aput-object v0, v2, v7

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    return-void
.end method

.method private dp(F)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method private generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->rewind()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v3, p3

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    move/from16 v5, p4

    if-le v5, v3, :cond_0

    move v5, v3

    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const v11, 0x40266666    # 2.6f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x2

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_2

    if-nez p10, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v3, v11

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v11, p7, v11

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v9

    int-to-float v9, v11

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_2
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_3

    move/from16 v3, p6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v9, v4, :cond_4

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    sub-int/2addr v9, v3

    :goto_2
    int-to-float v9, v9

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    goto :goto_2

    :goto_3
    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v9, v9, p3

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int v11, v11, p3

    int-to-float v12, v11

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, p3

    mul-int/lit8 v3, v3, 0x2

    sub-int v13, v10, v3

    int-to-float v13, v13

    add-int/2addr v11, v3

    int-to-float v3, v11

    int-to-float v10, v10

    invoke-virtual {v9, v12, v13, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v15, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :goto_4
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_7

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_7

    if-nez p10, :cond_7

    if-eqz p9, :cond_5

    goto :goto_6

    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_6

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    :goto_5
    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, p7, v9

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    :cond_6
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    goto :goto_5

    :cond_7
    :goto_6
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int v9, v9, p3

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v9, v9, p3

    int-to-float v10, v9

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v12, v11

    mul-int/lit8 v13, v5, 0x2

    add-int/2addr v9, v13

    int-to-float v9, v9

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-virtual {v3, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v9, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_8

    move/from16 v3, p6

    goto :goto_7

    :cond_8
    move v3, v5

    :goto_7
    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v9, v4, :cond_9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v9, v9, p3

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p3

    mul-int/lit8 v3, v3, 0x2

    sub-int v11, v10, v3

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v12, v12, p3

    int-to-float v13, v12

    int-to-float v10, v10

    add-int/2addr v12, v3

    int-to-float v3, v12

    invoke-virtual {v9, v11, v13, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    :cond_9
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v13, v13, p3

    add-int/2addr v13, v3

    int-to-float v3, v13

    invoke-virtual {v9, v10, v11, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v9, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :goto_9
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_d

    if-nez p10, :cond_b

    if-eqz p8, :cond_a

    goto :goto_a

    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, p3

    goto/16 :goto_18

    :cond_b
    :goto_a
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_c

    move/from16 v5, p6

    :cond_c
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, v4, p3

    mul-int/lit8 v5, v5, 0x2

    sub-int v7, v4, v5

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    sub-int v5, v2, v5

    int-to-float v5, v5

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v7, v5, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_1a

    :cond_d
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v4, :cond_f

    if-eq v3, v8, :cond_f

    if-nez p10, :cond_f

    if-eqz p8, :cond_e

    goto :goto_b

    :cond_e
    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    goto/16 :goto_18

    :cond_f
    :goto_b
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int v4, v4, p5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, p3

    mul-int/lit8 v7, p5, 0x2

    sub-int/2addr v5, v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d5a0000    # -83.0f

    const/high16 v4, 0x43340000    # 180.0f

    :goto_c
    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_1a

    :cond_10
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    const/high16 v9, -0x3d4c0000    # -90.0f

    if-nez v3, :cond_12

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_12

    if-nez p10, :cond_12

    if-eqz p8, :cond_11

    goto :goto_d

    :cond_11
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    add-int/2addr v3, v10

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_11

    :cond_12
    :goto_d
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_13

    move/from16 v3, p6

    goto :goto_e

    :cond_13
    move v3, v5

    :goto_e
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v10, v4, :cond_14

    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    :goto_f
    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_10

    :cond_14
    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_f

    :goto_10
    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p3

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v11, p3

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v11, v3

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v13, p3

    sub-int v3, v13, v3

    int-to-float v3, v3

    int-to-float v11, v11

    int-to-float v13, v13

    invoke-virtual {v10, v12, v3, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v15, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :goto_11
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_17

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_17

    if-nez p10, :cond_17

    if-eqz p9, :cond_15

    goto :goto_13

    :cond_15
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_16

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    :goto_12
    int-to-float v3, v3

    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v10, p7, v10

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    :cond_16
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    add-int/2addr v3, v10

    goto :goto_12

    :cond_17
    :goto_13
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    add-int/2addr v10, v5

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p3

    mul-int/lit8 v11, v5, 0x2

    sub-int v12, v10, v11

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v13, v13, p3

    int-to-float v14, v13

    int-to-float v10, v10

    add-int/2addr v13, v11

    int-to-float v11, v13

    invoke-virtual {v3, v12, v14, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_18

    move/from16 v3, p6

    goto :goto_14

    :cond_18
    move v3, v5

    :goto_14
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v10, v4, :cond_19

    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int v10, v10, p3

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int v11, v11, p3

    int-to-float v12, v11

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int v13, v13, p3

    int-to-float v14, v13

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    int-to-float v11, v11

    add-int/2addr v13, v3

    int-to-float v3, v13

    invoke-virtual {v10, v12, v14, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_15

    :cond_19
    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int v11, v11, p3

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v12, v12, p3

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v13, v3

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v14, p3

    add-int/2addr v14, v3

    int-to-float v3, v14

    invoke-virtual {v10, v11, v12, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_15
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v10, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :goto_16
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v4, :cond_1e

    if-nez p10, :cond_1b

    if-eqz p8, :cond_1a

    goto :goto_17

    :cond_1a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p3

    goto :goto_18

    :cond_1b
    :goto_17
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-nez v3, :cond_1c

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_1d

    :cond_1c
    move/from16 v5, p6

    :cond_1d
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v3, p3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v4, p3

    int-to-float v7, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    mul-int/lit8 v5, v5, 0x2

    sub-int v8, v2, v5

    int-to-float v8, v8

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v7, v8, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3, v9, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_1a

    :cond_1e
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v4, :cond_20

    if-eq v3, v8, :cond_20

    if-nez p10, :cond_20

    if-eqz p8, :cond_1f

    goto :goto_19

    :cond_1f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    :goto_18
    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, p7, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1a

    :cond_20
    :goto_19
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, p3

    sub-int v4, v4, p5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v5, p5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, p3

    sub-int/2addr v8, v5

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v8, v5

    int-to-float v5, v8

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, p3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42a60000    # 83.0f

    const/4 v4, 0x0

    goto/16 :goto_c

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static getByteBuffer(IIII)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x54

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public applyMatrixScale()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v0, v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v5, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    div-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16

    .line 0
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    iget v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-nez v1, :cond_0

    iget v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    iget v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v1, :cond_1

    move v5, v1

    move v6, v5

    goto :goto_1

    :cond_1
    iget v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    const/4 v5, 0x6

    const/4 v6, 0x2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    iget v8, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    sget v7, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v11, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    iget v6, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    :goto_0
    move v6, v5

    move v5, v1

    goto :goto_1

    :cond_2
    iget v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v1, v6, :cond_3

    invoke-direct {v11, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    invoke-direct {v11, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    goto :goto_0

    :cond_3
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v11, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v11, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    goto :goto_0

    :goto_1
    invoke-direct {v11, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    if-nez p2, :cond_4

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    move-object v13, v1

    goto :goto_2

    :cond_4
    move-object/from16 v13, p2

    :goto_2
    if-nez p2, :cond_5

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_5

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    iget v4, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v9, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v0, v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    iget v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v4, :cond_7

    iget v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v0, v9

    iget v9, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v0, v9, :cond_8

    goto :goto_4

    :cond_7
    iget v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    sub-int/2addr v0, v5

    iget v9, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v0, v9, :cond_8

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget v9, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    if-ltz v9, :cond_9

    move v9, v0

    goto :goto_3

    :cond_9
    move v9, v0

    const/4 v10, 0x0

    :goto_6
    iget-object v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    if-eqz v0, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v9, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result v0

    goto :goto_7

    :cond_a
    iget-object v14, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_b

    iget v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz v0, :cond_d

    :cond_b
    if-eqz p2, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    move-object v1, v14

    move v4, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V

    :cond_d
    invoke-virtual {v12, v14, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_e

    iget-boolean v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v0

    iget-object v1, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget v3, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V
    .locals 1

    .line 0
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz p2, :cond_1

    iput-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v8, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v8, :cond_5

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v9, :cond_8

    if-nez v8, :cond_8

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v9, :cond_9

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_4

    :cond_9
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_4
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v9

    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    if-ne v10, v8, :cond_b

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aget v10, v10, v4

    if-ne v10, v1, :cond_b

    if-eqz v8, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v10, v10, v4

    if-eq v10, v9, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_b
    :goto_6
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aput v1, v10, v4

    const/high16 v1, 0x42480000    # 50.0f

    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v10, 0x42200000    # 40.0f

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v12, -0x1

    if-eqz v8, :cond_d

    :try_start_1
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v9, v13, v4

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v15, Landroid/graphics/LinearGradient;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const v14, 0x155f6569

    const v6, 0x295f6569

    filled-new-array {v14, v6}, [I

    move-result-object v19

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v14, v15

    move-object v3, v15

    move v15, v6

    move/from16 v18, v10

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v9, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v13, v3, v2, v6, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v10, -0x1

    const/4 v14, -0x1

    goto :goto_7

    :catchall_0
    nop

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v0, v10, v14, v3, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v13, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    :try_start_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v0, v9, v9, v3, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v10, 0x2

    div-int/2addr v6, v10

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v11, v10

    add-int/2addr v11, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/2addr v12, v10

    sub-int/2addr v12, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/2addr v13, v10

    add-int/2addr v13, v7

    invoke-static {v6, v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    invoke-direct {v3, v1, v6, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v3, v2, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_8
    const/4 v3, 0x1

    goto :goto_a

    :catchall_1
    nop

    goto :goto_8

    :catchall_2
    :goto_9
    nop

    goto/16 :goto_5

    :catchall_3
    const/4 v9, 0x0

    goto :goto_9

    :goto_a
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_b

    :cond_e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    goto :goto_b

    :cond_f
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_10

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_b

    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    if-eqz v2, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v6, v6, v5

    aget v6, v6, v4

    if-ne v6, v1, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v2, v2, v5

    aput v1, v2, v4

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    return-object v1
.end method

.method protected getColor(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method protected getCurrentColor(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getGradientShader()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMotionBackgroundDrawable()Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    aget v8, v7, v3

    if-eq v8, v1, :cond_8

    aput v1, v7, v3

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/high16 v1, 0x42480000    # 50.0f

    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v7, 0x42200000    # 40.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v15, Landroid/graphics/LinearGradient;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    int-to-float v14, v7

    const v7, 0x155f6569

    const v10, 0x295f6569

    filled-new-array {v7, v10}, [I

    move-result-object v7

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v10, v15

    move-object v2, v15

    move-object v15, v7

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v7, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v9, v2, v11, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    move v13, v12

    const/4 v12, -0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move v13, v12

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v0, v7, v12, v2, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_7

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9, v11, v11, v11, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v5, v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v3

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v8, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    add-int/2addr v9, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v10, v4

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v4

    add-int/2addr v11, v6

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v7, v1, v4, v8, v9}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v7, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    :cond_8
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_3

    :cond_9
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v1, v2, v3

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    return-object v1
.end method

.method public getShadowDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopY()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    return v0
.end method

.method public getTransitionDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    invoke-static {v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public hasGradient()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makePath()Landroid/graphics/Path;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->makePath(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public makePath(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)Landroid/graphics/Path;
    .locals 12

    .line 0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz v0, :cond_0

    move v4, v0

    move v6, v4

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v4, v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v0, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    sget v4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    :goto_0
    move v6, v4

    move v4, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    sget v4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    goto :goto_0

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_2
    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v8, v0, :cond_4

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_5

    goto :goto_3

    :cond_4
    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v8, v9, :cond_5

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    iget v9, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    if-ltz v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz p1, :cond_7

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result p1

    move-object v11, v0

    move v0, p1

    move-object p1, v11

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    :goto_6
    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->generatePath(Landroid/graphics/Path;Landroid/graphics/Rect;IIIIIZZZ)V

    :cond_9
    return-object p1
.end method

.method public setAlpha(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public setBotButtonsBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDrawFullBubble(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    return-void
.end method

.method public setRoundingRadius(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    return-void
.end method

.method public setTop(IIIIIIZZ)V
    .locals 33

    .line 0
    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p5

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v7

    move v12, v4

    move v13, v5

    move v14, v6

    if-eqz v7, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1

    :goto_3
    if-eqz v12, :cond_5

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    :cond_5
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    const/16 v16, 0x2

    goto :goto_4

    :cond_6
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v4, v5, :cond_7

    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_4
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    if-nez v4, :cond_8

    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v4

    aget v6, v4, v3

    iput v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    aget v6, v4, v2

    iput v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    aget v6, v4, v5

    iput v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    const/4 v6, 0x3

    aget v4, v4, v6

    iput v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    :cond_8
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v9, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_e

    if-eqz v13, :cond_e

    if-eqz v15, :cond_e

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v4, v1, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v4, v12, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v4, v13, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v4, v14, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v4, v15, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, -0x1

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v7, 0x3c

    const/16 v8, 0x50

    invoke-static {v7, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v7, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    :cond_b
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v7, v4, v16

    if-nez v7, :cond_d

    new-instance v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v7, v4, v16

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v4, v5, :cond_c

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    :cond_c
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    :cond_d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v2, v16

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    move v5, v1

    move v6, v12

    move v7, v13

    move v8, v14

    const/4 v3, -0x1

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIILandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    iput v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    iput v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    goto/16 :goto_9

    :cond_e
    const/4 v3, -0x1

    if-eqz v12, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v4, v1, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v4, v12, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v4, v13, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v4, v14, :cond_f

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v4, v15, :cond_15

    :cond_f
    if-eqz v13, :cond_12

    if-eqz v15, :cond_12

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v7, v4, v16

    if-nez v7, :cond_11

    new-instance v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v7, v4, v16

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v4, v5, :cond_10

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    :cond_10
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    :cond_11
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-virtual {v2, v1, v12, v13, v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmapShader()Landroid/graphics/BitmapShader;

    move-result-object v2

    :goto_7
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_8

    :cond_12
    if-eqz v13, :cond_14

    if-eqz v14, :cond_13

    filled-new-array {v14, v13, v12, v1}, [I

    move-result-object v22

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v4, v11

    int-to-float v5, v10

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v21, v5

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_7

    :cond_13
    filled-new-array {v13, v12, v1}, [I

    move-result-object v30

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v4, v11

    int-to-float v5, v10

    sget-object v32, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v2

    move/from16 v27, v4

    move/from16 v29, v5

    invoke-direct/range {v25 .. v32}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_7

    :cond_14
    filled-new-array {v12, v1}, [I

    move-result-object v22

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v4, v11

    int-to-float v5, v10

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v21, v5

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_7

    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    iput v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    iput v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_15
    if-nez v12, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_17
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_18

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v1, v1, v16

    sub-int v2, v10, p4

    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v3, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    :goto_a
    iput v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_19

    move/from16 v4, p4

    :cond_19
    sub-int v1, p1, v4

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    move/from16 v1, p7

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    move/from16 v1, p8

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    return-void
.end method

.method public setTop(IIIZZ)V
    .locals 9

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    return-void
.end method
