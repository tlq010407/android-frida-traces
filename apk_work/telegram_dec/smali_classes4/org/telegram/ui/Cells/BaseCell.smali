.class public abstract Lorg/telegram/ui/Cells/BaseCell;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;,
        Lorg/telegram/ui/Cells/BaseCell$CheckForTap;,
        Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;
    }
.end annotation


# instance fields
.field private cachingBottom:Z

.field private cachingTop:Z

.field private checkingForLongPress:Z

.field private forceNotCacheNextFrame:Z

.field protected invalidateCallback:Ljava/lang/Runnable;

.field private pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

.field private pressCount:I

.field private renderNode:Landroid/graphics/RenderNode;

.field protected updatedContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    iput p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/BaseCell;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return p0
.end method

.method static synthetic access$104(Lorg/telegram/ui/Cells/BaseCell;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/BaseCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/BaseCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return p1
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)F
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int v1, v0

    float-to-int p3, p3

    invoke-static {p0, p1, p2, v1, p3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return v0
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    .line 0
    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFII)V
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    float-to-int p1, p1

    float-to-int p2, p2

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected allowCaching()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cancelCheckLongPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingTop:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingBottom:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->allowCaching()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eq v0, v5, :cond_4

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v5, "basecell"

    invoke-direct {v0, v5}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v0, v2}, Lorg/telegram/ui/Cells/BaseCell$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;Z)Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/BaseCell;->updatedContent:Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    :cond_4
    :goto_2
    if-lt v3, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v2, v1, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/BaseCell;->updatedContent:Z

    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->updatedContent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public forceNotCacheNextFrame()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame:Z

    return-void
.end method

.method public getBoundsLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->invalidateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidateLite()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public listenInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell;->invalidateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method protected onLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCaching(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingTop:Z

    goto :goto_0

    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->cachingBottom:Z

    :goto_0
    return-void
.end method

.method protected startCheckLongPress()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
