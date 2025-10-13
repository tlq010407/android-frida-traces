.class Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryButton"
.end annotation


# instance fields
.field backAnimator:Landroid/animation/ValueAnimator;

.field private imageColor:I

.field private index:I

.field private lastPlayed:J

.field loadAnimator:Landroid/animation/ValueAnimator;

.field loadProgress:F

.field private loaded:Z

.field pressedProgress:F

.field private selectedAnimator:Landroid/animation/ValueAnimator;

.field private selectedT:F

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;


# direct methods
.method public static synthetic $r8$lambda$5E4_ogyFdNd56291g2oNdZyDnZ4(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;ZLorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lambda$set$0(ZLorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5F_BfWS_GPWXrSJCnEY6lD-DYw(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lambda$onLoaded$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W9Qj9Xa7YvSGwcVW4kyx2BHAnC8(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lambda$setPressed$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aA2TeOugb7S-PCGBt3SF2PnedcQ(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lambda$setSelected$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEMFKTsWBVlNDwS0LHZUSf6OYfs(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lambda$set$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/StickerCategoriesListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loaded:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->setImageColor(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView;->layerNum:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerNum(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->updateSelectedT(F)V

    return-void
.end method

.method private synthetic lambda$onLoaded$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$set$0(ZLorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setOnlyLastFrame(Z)V

    const/16 p1, 0x18

    invoke-virtual {p0, p2, p1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$set$1()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPressed$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->pressedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSelected$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->updateSelectedT(F)V

    return-void
.end method

.method private updateSelectedT(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedT:F

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedT:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->setImageColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->updatePressedProgress()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v0, v0, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getScale()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->pressedProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    mul-float v1, v1, v0

    const v0, 0x3f59999a    # 0.85f

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    mul-float v1, v1, v0

    return v1
.end method

.method protected onLoaded()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loaded:Z

    iget v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public play(Z)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lastPlayed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->lastPlayed:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public set(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;IZ)V
    .locals 4

    iput p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->index:I

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-boolean p2, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->remote:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isTabIconsAnimationEnabled(Z)Z

    move-result p2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loaded:Z

    iput v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v0

    iget-wide v2, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->documentId:J

    new-instance p1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Z)V

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    new-instance p1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    const-wide/16 v2, 0x3c

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    iget-boolean p2, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->animated:Z

    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->cached:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->iconResId:I

    const/16 p2, 0x18

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    iget p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->iconResId:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p3, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->setSelected(ZZ)V

    return-void
.end method

.method public setImageColor(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->imageColor:I

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->imageColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$3;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedT:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedT:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput p2, p1, v1

    const/4 p2, 0x1

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;-><init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->selectedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->updateSelectedT(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updatePressedProgress()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->pressedProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->pressedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->this$0:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
