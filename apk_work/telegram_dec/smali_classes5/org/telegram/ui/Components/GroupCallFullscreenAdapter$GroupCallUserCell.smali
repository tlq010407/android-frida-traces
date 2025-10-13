.class public Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCallUserCell"
.end annotation


# instance fields
.field attached:Z

.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

.field backgroundPaint:Landroid/graphics/Paint;

.field colorAnimator:Landroid/animation/ValueAnimator;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field drawingName:Ljava/lang/String;

.field hasAvatar:Z

.field lastColor:I

.field lastWavesColor:I

.field muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field name:Ljava/lang/String;

.field nameWidth:I

.field participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field peerId:J

.field progress:F

.field renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field selected:Z

.field selectionPaint:Landroid/graphics/Paint;

.field selectionProgress:F

.field skipInvalidate:Z

.field statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

.field videoParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;


# direct methods
.method public static synthetic $r8$lambda$t3iQGSiWgoIn6oeEeKA0SWuKcHI(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lambda$updateState$0(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f933333    # 1.15f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    const/high16 v7, 0x41100000    # 9.0f

    const/16 v1, 0x28

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;-><init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Landroid/content/Context;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 p2, 0x18

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawSelection(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selected:Z

    const v1, 0x3dda740e

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionProgress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_0

    add-float/2addr v4, v1

    cmpl-float v0, v4, v3

    if-lez v0, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionProgress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_2

    sub-float v4, v0, v1

    cmpg-float v0, v4, v2

    if-gez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    :goto_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setSelectedProgress(F)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    sub-float/2addr v3, v2

    mul-float v0, v0, v3

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$updateState$0(IIIILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p3, p4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastWavesColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastWavesColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastWavesColor:I

    const/16 p3, 0x26

    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    return-void
.end method

.method private setSelectedProgress(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachRenderer(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$400(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$100(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->videoParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$500(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->getOrCreate(Ljava/util/ArrayList;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/messenger/ChatObject$VideoParticipant;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSecondaryView(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;)V

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    :cond_3
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/GroupCallActivity;->drawingForBlur:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawSelection(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    sub-float v1, v2, v1

    mul-float v0, v0, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawSelection(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v3, p1, v0, v1, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    sub-float v3, v2, v1

    mul-float v0, v0, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->nameWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawingName:Ljava/lang/String;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v4, 0x428a0000    # 69.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/high16 v1, 0x42540000    # 53.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    mul-float v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getParticipant()Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    return-object v0
.end method

.method public getPeerId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->peerId:J

    return-wide v0
.end method

.method public getProgressToFullscreen()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    return v0
.end method

.method public getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-object v0
.end method

.method public getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->videoParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->skipInvalidate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->skipInvalidate:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$100(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->skipInvalidate:Z

    return-void
.end method

.method public isRemoving(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$300(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->videoParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->attachRenderer(Z)V

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setParticipant(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->updateState(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v1

    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->attachRenderer(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$200(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/GroupCallActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/high16 p1, 0x42380000    # 46.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->nameWidth:I

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawingName:Ljava/lang/String;

    :cond_0
    const/high16 p1, 0x42a00000    # 80.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onStatusChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v1

    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->updateState(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setAmplitude(D)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setAmplitude(D)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    return-void
.end method

.method public setParticipant(Lorg/telegram/messenger/ChatObject$VideoParticipant;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 11

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->videoParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->peerId:J

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->peerId:J

    const-wide/16 v4, 0x0

    const-string v6, "50_50"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$000(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->peerId:J

    if-lez v10, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v7, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$000(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$000(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2, v9}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->hasAvatar:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :goto_1
    invoke-virtual {v3, v2, v6, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v7, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$000(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$000(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2, v9}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->hasAvatar:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    :cond_3
    :goto_3
    iget-wide v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->peerId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$100(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iget-wide v1, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenPeerId:J

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_5

    const/4 v8, 0x1

    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selected:Z

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$100(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->access$100(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selected:Z

    :goto_5
    if-nez v0, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selected:Z

    if-eqz p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setSelectedProgress(F)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setParticipant(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->updateState(Z)V

    :cond_9
    return-void
.end method

.method public setProgressToFullscreen(F)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->progress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v3, v0, p1

    mul-float v2, v2, v3

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    neg-float v1, v1

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->renderer:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-void
.end method

.method public updateState(Z)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->updateIcon(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByMe()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    :goto_1
    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    iput v1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastWavesColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->textPaint:Landroid/text/TextPaint;

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->avatarWavesDrawable:Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const/16 v0, 0x26

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    goto :goto_2

    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastColor:I

    iget v6, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->lastWavesColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p0

    move v5, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;IIII)V

    invoke-virtual {p1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$2;-><init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;II)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
