.class public Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiImageView"
.end annotation


# instance fields
.field private attached:Z

.field private direction:I

.field public drawable:Landroid/graphics/drawable/Drawable;

.field private emoji:Ljava/lang/String;

.field private final paddingDp:I

.field private pressed:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    const-wide/16 v0, 0x15e

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->pressed:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->paddingDp:I

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->setEmoji(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->emoji:Ljava/lang/String;

    return-object p0
.end method

.method private setEmoji(Ljava/lang/String;I)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->emoji:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "animated_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    :cond_0
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SuggestEmojiView;->emojiCacheType()I

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    if-eq p1, p2, :cond_3

    iput p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attached:Z

    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attached:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->pressed:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    sub-float/2addr v2, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v0

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setTime(J)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->detach()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    const v1, 0x40d51eb8    # 6.66f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x40d51eb8    # 6.66f

    :goto_0
    add-float/2addr v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-float/2addr v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, v0, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p1, 0x42300000    # 44.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->direction:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attached:Z

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
