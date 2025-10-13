.class public Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiImageView"
.end annotation


# instance fields
.field attached:Z

.field public backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final currentAccount:I

.field private documentId:J

.field public drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public emoji:Z

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

.field private final listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

.field public notDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->currentAccount:I

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmoji(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 7

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_0
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->getCacheType(Z)I

    move-result p2

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_4
    :goto_1
    return-void
.end method

.method public setEmojiId(JZ)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->getCacheType(Z)I

    move-result p3

    invoke-static {v0, p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_3
    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->emoji:Z

    if-nez v2, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v3, "video/webm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "80_80"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_g"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_firstframe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v5, "80_80"

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v11

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_6

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->documentId:J

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_6
    :goto_2
    return-void
.end method

.method public update(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    :cond_1
    return-void
.end method
