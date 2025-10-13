.class Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->val$this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->update:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v7, "webp"

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "140_140"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "tgs"

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->drawEffect:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$402(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoPlayEnabled:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    const v4, 0x3dda740e

    if-eqz v1, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$500(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$516(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    if-nez v1, :cond_8

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$500(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$524(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$500(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$502(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->drawEffect:Z

    if-eqz v1, :cond_9

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$416(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->drawEffect:Z

    if-nez v1, :cond_a

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$424(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    goto :goto_4

    :cond_a
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$402(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->access$600(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    const v1, 0x3fbfe7fb

    mul-float v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v7, v1, v0

    const v8, 0x3ca3d70a    # 0.02f

    mul-float v8, v8, v1

    sub-float v8, v7, v8

    add-float/2addr v8, v2

    div-float/2addr v7, v5

    add-float/2addr v7, v4

    invoke-virtual {v6, v8, v7, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$500(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    const v6, 0x3f333333    # 0.7f

    mul-float v0, v0, v6

    const v6, 0x3e99999a    # 0.3f

    add-float/2addr v0, v6

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2, v4, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_b
    return-void
.end method
