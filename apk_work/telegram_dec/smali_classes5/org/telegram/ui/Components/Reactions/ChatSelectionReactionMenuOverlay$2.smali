.class Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;
.super Lorg/telegram/ui/Components/ReactionsContainerLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->checkCreateReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enabledAlpha:F

.field lastUpdate:J

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->lastUpdate:J

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/high16 v2, 0x43160000    # 150.0f

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    cmpl-float v3, p1, v5

    if-eqz v3, :cond_0

    long-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    if-eqz v4, :cond_1

    long-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;->enabledAlpha:F

    :cond_0
    return-void
.end method
