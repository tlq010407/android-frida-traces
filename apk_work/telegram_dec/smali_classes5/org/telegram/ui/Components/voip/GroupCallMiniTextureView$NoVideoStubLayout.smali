.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoVideoStubLayout"
.end annotation


# instance fields
.field amplitude:F

.field animateAmplitudeDiff:F

.field animateToAmplitude:F

.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field backgroundPaint:Landroid/graphics/Paint;

.field bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field cx:F

.field cy:F

.field muteButtonState:I

.field paint:Landroid/graphics/Paint;

.field private prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field speakingProgress:F

.field private states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

.field switchProgress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field wavesEnter:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->wavesEnter:F

    const/4 p1, 0x3

    new-array p1, p1, [Lorg/telegram/ui/GroupCallActivity$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 p2, 0x42980000    # 76.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 p2, 0x42b80000    # 92.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 p2, 0x42be0000    # 95.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->speakingProgress:F

    invoke-static {p2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const/16 v0, 0x7f

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->updateMuteButtonState(Z)V

    return-void
.end method

.method private updateMuteButtonState(Z)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByMe()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    if-ne v0, v3, :cond_3

    return-void

    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v4, v3, v0

    if-nez v4, :cond_6

    new-instance v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;

    invoke-direct {v4, v0}, Lorg/telegram/ui/GroupCallActivity$WeavingState;-><init>(I)V

    aput-object v4, v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    aget-object v0, v1, v0

    new-instance v9, Landroid/graphics/LinearGradient;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient3:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x43c80000    # 400.0f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-ne v0, v2, :cond_5

    aget-object v0, v1, v0

    new-instance v8, Landroid/graphics/RadialGradient;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_muteButton3:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43480000    # 200.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_2
    iput-object v8, v0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    goto :goto_3

    :cond_5
    aget-object v0, v1, v0

    new-instance v8, Landroid/graphics/RadialGradient;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_unmuteButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43480000    # 200.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->states:[Lorg/telegram/ui/GroupCallActivity$WeavingState;

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->muteButtonState:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eq v0, v1, :cond_9

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v1, :cond_8

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    goto :goto_5

    :cond_8
    :goto_4
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v3, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v4, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateAmplitudeDiff:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_2

    const v2, 0x3d94f209

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v4, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v5, v0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v6, v0

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v10, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    const-wide/16 v8, 0x10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->update(IIIJF)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->prevState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    sub-float v2, v1, v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->currentState:Lorg/telegram/ui/GroupCallActivity$WeavingState;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->switchProgress:F

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x42980000    # 76.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, p1, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, p1, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 p1, 0x431d0000    # 157.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    shr-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3df5c28f    # 0.12f

    mul-float v0, v0, v1

    :goto_0
    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cx:F

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->cy:F

    sub-float/2addr v2, v0

    invoke-virtual {p2, v1, v2, p1, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method

.method public setAmplitude(D)V
    .locals 1

    double-to-float p1, p1

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateToAmplitude:F

    iget p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->amplitude:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x43480000    # 200.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->animateAmplitudeDiff:F

    return-void
.end method
