.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;
.super Lorg/telegram/ui/Components/voip/VoIPTextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field overlayIconAlphaFrom:F

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field final synthetic val$activity:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$call:Lorg/telegram/messenger/ChatObject$Call;

.field final synthetic val$noVideoLayout:Landroid/text/StaticLayout;

.field final synthetic val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

.field final synthetic val$sharingScreenString:Ljava/lang/String;

.field final synthetic val$staticLayout:Landroid/text/StaticLayout;

.field final synthetic val$textPaint:Landroid/text/TextPaint;

.field final synthetic val$textPaint2:Landroid/text/TextPaint;

.field final synthetic val$textW:F

.field final synthetic val$textW3:F

.field final synthetic val$videoOnPauseString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;ZZZZLorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/text/TextPaint;Landroid/text/StaticLayout;Landroid/text/TextPaint;Ljava/lang/String;FLandroid/text/StaticLayout;Lorg/telegram/ui/GroupCallActivity;Ljava/lang/String;F)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-object v1, p7

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-object v1, p9

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint:Landroid/text/TextPaint;

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$noVideoLayout:Landroid/text/StaticLayout;

    move-object v1, p11

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint2:Landroid/text/TextPaint;

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$sharingScreenString:Ljava/lang/String;

    move v1, p13

    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textW3:F

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$staticLayout:Landroid/text/StaticLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$activity:Lorg/telegram/ui/GroupCallActivity;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$videoOnPauseString:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textW:F

    move-object p7, p0

    move-object p8, p2

    move p9, p3

    move p10, p4

    move p11, p5

    move p12, p6

    invoke-direct/range {p7 .. p12}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    return-void
.end method


# virtual methods
.method public animateToLayout()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateToLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->overlayIconAlphaFrom:F

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v2

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const v8, 0x3dda740e

    invoke-static {v2, v8}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$116(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$102(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->invalidate()V

    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v8, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentThumbScale:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-virtual {v1, v2, v2, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v8, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumbPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_4

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumbPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_5
    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v8, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    iget v9, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    mul-float v11, v11, v7

    sub-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    mul-float v12, v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {v2, v8, v9, v10, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v8, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v8, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v9, v9, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    const/high16 v10, 0x43c80000    # 400.0f

    const/4 v11, 0x4

    const/high16 v12, 0x41200000    # 10.0f

    if-ne v8, v9, :cond_8

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v2, :cond_7

    :cond_6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v9, v2

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint:Landroid/text/TextPaint;

    const/16 v14, 0xff

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v7

    sub-float/2addr v8, v10

    div-float v10, v2, v7

    add-float/2addr v8, v10

    add-float/2addr v9, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$noVideoLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    :cond_8
    iget-boolean v9, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v9, :cond_1b

    iget-object v8, v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v8, :cond_1b

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    :goto_2
    const/high16 v8, 0x42040000    # 33.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-nez v11, :cond_e

    iget-boolean v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    int-to-float v8, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v11, v11, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v11, v6, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-eqz v13, :cond_c

    goto :goto_3

    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    :goto_4
    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float v9, v9, v11

    :goto_5
    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_7

    :cond_e
    :goto_6
    int-to-float v8, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x421c0000    # 39.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v11, v11, v13

    add-float/2addr v9, v11

    goto :goto_5

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v11}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v11, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-eqz v11, :cond_f

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v11, v11, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    :goto_9
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v14, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v14, :cond_11

    move v13, v2

    goto :goto_c

    :cond_11
    iget-boolean v2, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    goto :goto_a

    :cond_12
    move v2, v11

    :goto_a
    invoke-static {v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v13

    if-nez v13, :cond_14

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v13, v13, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-eqz v13, :cond_13

    goto :goto_b

    :cond_13
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    goto :goto_c

    :cond_14
    :goto_b
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v8

    div-int/lit8 v14, v14, 0x2

    const/high16 v15, 0x41e00000    # 28.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x41880000    # 17.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v16, 0x42940000    # 74.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v7, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v7, :cond_16

    iget-boolean v7, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v7, :cond_15

    goto :goto_d

    :cond_15
    const/4 v7, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v7, v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    :goto_e
    mul-float v12, v12, v7

    add-float/2addr v3, v12

    mul-float v3, v3, v2

    sub-float/2addr v14, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    add-float/2addr v14, v3

    float-to-int v3, v14

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    add-int v10, v9, v8

    add-int v12, v3, v8

    invoke-virtual {v7, v9, v3, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    cmpl-float v7, v3, v5

    if-gtz v7, :cond_18

    cmpl-float v7, v11, v5

    if-lez v7, :cond_17

    goto :goto_f

    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    :cond_18
    :goto_f
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v3, v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint2:Landroid/text/TextPaint;

    mul-float v7, v3, v4

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v7, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-nez v7, :cond_1a

    iget-boolean v7, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v7, :cond_19

    goto :goto_10

    :cond_19
    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    :cond_1a
    :goto_10
    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    sub-float v7, v6, v11

    mul-float v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$sharingScreenString:Ljava/lang/String;

    int-to-float v3, v9

    iget v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textW3:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float/2addr v3, v7

    int-to-float v7, v8

    div-float/2addr v7, v10

    add-float/2addr v3, v7

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v12

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v7

    add-float/2addr v3, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    cmpg-float v3, v2, v6

    if-gez v3, :cond_1d

    cmpg-float v3, v11, v6

    if-gez v3, :cond_1d

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint:Landroid/text/TextPaint;

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v10, v2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v10

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double v13, v13, v10

    double-to-int v2, v13

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v9

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    int-to-float v3, v8

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v12, v3

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_1b
    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_1c

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_1d
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->invalidate()V

    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v7

    add-float/2addr v3, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v3, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v3, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_1f
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v7, v7, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v3, v7, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v7, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v7, :cond_20

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v3, :cond_21

    :cond_20
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v3, :cond_21

    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v3, :cond_21

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v8, v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v3, v3, v8

    iget v7, v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v7, v6, v7

    mul-float v3, v3, v7

    sub-float/2addr v2, v3

    :cond_21
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2a

    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v2

    const v3, 0x3d83126f    # 0.064f

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$716(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$702(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    goto :goto_14

    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$724(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$702(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F

    goto :goto_14

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->invalidate()V

    :cond_26
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->isInAnimation()Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->overlayIconAlphaFrom:F

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animationProgress:F

    sub-float v8, v6, v7

    mul-float v3, v3, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v8, v8, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    mul-float v8, v8, v7

    add-float/2addr v3, v8

    goto :goto_15

    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    :goto_15
    mul-float v2, v2, v3

    cmpl-float v3, v2, v5

    if-lez v3, :cond_2a

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v3

    div-float/2addr v9, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-ne v8, v10, :cond_28

    const/high16 v8, 0x40200000    # 2.5f

    div-float v8, v3, v8

    sub-float/2addr v9, v8

    :cond_28
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    float-to-int v10, v7

    int-to-float v10, v10

    float-to-int v11, v9

    int-to-float v11, v11

    add-float v12, v7, v3

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v9, v3

    float-to-int v13, v9

    int-to-float v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_29

    mul-float v6, v2, v4

    float-to-int v6, v6

    const/16 v10, 0x1f

    invoke-virtual {v1, v8, v6, v10}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_16

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_16
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$800(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/CrossOutDrawable;

    move-result-object v6

    iget v10, v8, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v6, v10, v11, v12, v8}, Lorg/telegram/ui/Components/CrossOutDrawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v6}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$800(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/CrossOutDrawable;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/CrossOutDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v2, v2, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2a

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v5, v6, :cond_2a

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint:Landroid/text/TextPaint;

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$videoOnPauseString:Ljava/lang/String;

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textW:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v7, v4

    div-float/2addr v3, v5

    add-float/2addr v7, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->inPinchToZoom:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchScale:F

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterX:F

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterY:F

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationX:F

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationY:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$902(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$902(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z

    return-void
.end method

.method protected onFirstFrameRendered()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1102(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v0

    const-wide/16 v3, 0x12c

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1$1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget v1, v0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eqz v1, :cond_5

    iget v0, v0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->setAspectRatio(IILorg/telegram/messenger/ChatObject$Call;)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget v1, v0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eqz v1, :cond_4

    iget v0, v0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    :goto_0
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FILL:I

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v1, :cond_3

    :goto_2
    goto :goto_0

    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_ADAPTIVE:I

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1002(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z

    :cond_4
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget p2, p1, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eqz p2, :cond_5

    iget p1, p1, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz p1, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p3, p3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz p3, :cond_5

    iget-object p4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->val$call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p3, p1, p2, p4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->setAspectRatio(IILorg/telegram/messenger/ChatObject$Call;)V

    :cond_5
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->requestLayout()V

    return-void
.end method

.method protected updateRendererSize()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->updateRendererSize()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method
