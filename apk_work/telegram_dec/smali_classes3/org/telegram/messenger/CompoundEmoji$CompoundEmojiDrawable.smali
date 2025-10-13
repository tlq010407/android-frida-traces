.class public Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;
.super Lorg/telegram/messenger/Emoji$EmojiDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CompoundEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundEmojiDrawable"
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static rect:Landroid/graphics/Rect;


# instance fields
.field private left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

.field private leftUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

.field private newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

.field private parent:Landroid/view/View;

.field private right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

.field private rightUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public static synthetic $r8$lambda$YpGIim66-K59L91eDQifmsPiyP4(Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->invalidate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iput-object p2, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    return-void
.end method

.method private drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V
    .locals 4

    invoke-virtual {p2}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean p2, p2, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->placeholder:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/CompoundEmoji;->access$000()Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->paint:Landroid/graphics/Paint;

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p4, v1

    if-gez v2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0xff

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    cmpg-float p1, p4, v1

    if-gez p1, :cond_2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->preload()V

    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->placeholderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v3

    sget-object v3, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->leftUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    if-nez v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;)V

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x140

    const/4 v6, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->leftUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->leftUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v5, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    mul-float v6, v1, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-direct {p0, p1, v5, v0, v6}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    iget-object v5, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    sub-float v6, v4, v1

    invoke-direct {p0, p1, v5, v0, v6}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iput-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iput-object v2, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-direct {p0, p1, v1, v0, v4}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rightUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    if-nez v1, :cond_5

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;)V

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x140

    const/4 v6, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rightUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rightUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v5, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    mul-float v3, v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {p0, p1, v5, v0, v3}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    iget-object v3, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    sub-float v5, v4, v1

    invoke-direct {p0, p1, v3, v0, v5}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    cmpl-float p1, v1, v4

    if-ltz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iput-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iput-object v2, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-direct {p0, p1, v1, v0, v4}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->drawDrawableInfo(Landroid/graphics/Canvas;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Landroid/graphics/Rect;F)V

    :cond_7
    :goto_2
    return-void
.end method

.method public getDrawRect()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_0

    sget v4, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_0
    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    sget-object v2, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    sget v4, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_1

    :cond_1
    sget v4, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_1
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    sget-object v1, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_2
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    :goto_3
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public preload()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->load()V

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->load()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public update(II)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iget v0, v0, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->skin:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->left:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->updateSkin(I)Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newLeft:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->leftUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iget p1, p1, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->skin:I

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->right:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;->updateSkin(I)Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->newRight:Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    iget-object p1, p0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->rightUpdateT:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->invalidate()V

    return-void
.end method
