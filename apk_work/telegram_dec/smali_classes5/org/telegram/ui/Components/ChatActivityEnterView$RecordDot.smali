.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDot"
.end annotation


# instance fields
.field private alpha:F

.field attachedToWindow:Z

.field drawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private enterAnimation:Z

.field private isIncr:Z

.field private lastUpdateTime:J

.field playing:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$raw;->chat_audio_record_delete_2:I

    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setInvalidateOnProgressSet(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->updateColors()V

    return-void
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->enterAnimation:Z

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->attachedToWindow:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->attachedToWindow:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->enterAnimation:Z

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iput v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    const/high16 v5, 0x44160000    # 600.0f

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    long-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    const/4 v0, 0x0

    cmpg-float v1, v2, v0

    if-gtz v1, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    long-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    cmpl-float v0, v2, v4

    if-ltz v0, :cond_3

    iput v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    shr-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public playDeleteAnimation()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->attachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_0
    return-void
.end method

.method public resetAlpha()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->alpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->lastUpdateTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->isIncr:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->playing:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDot:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Cup Red.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Box.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Line 1.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Line 2.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v2, "Line 3.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    return-void
.end method
