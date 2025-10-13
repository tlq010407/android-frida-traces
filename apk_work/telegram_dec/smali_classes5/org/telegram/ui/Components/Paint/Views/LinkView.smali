.class public Lorg/telegram/ui/Components/Paint/Views/LinkView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/LinkView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private currentColor:I

.field private currentType:I

.field private hasColor:Z

.field public link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

.field public final marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

.field public mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;FII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-direct {p2, p1, p6}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {p2, p7}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setMaxWidth(I)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->setLink(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    iput p8, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentType:I

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentColor:I

    invoke-virtual {p2, p8, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setType(II)V

    const/4 p1, -0x2

    const/16 p3, 0x33

    invoke-static {p1, p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LinkView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/LinkView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/LinkView$TextViewSelectionView;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LinkView$TextViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LinkView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/LinkView;Landroid/content/Context;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentColor:I

    return v0
.end method

.method protected getMaxScale()F
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getNextType()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentType:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->hasColor:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v2, v5

    mul-float v2, v2, v0

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v4, v3, v4

    sub-float/2addr v6, v4

    mul-float v6, v6, v0

    sub-float/2addr v1, v2

    mul-float v3, v3, v0

    invoke-direct {v5, v2, v6, v1, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method protected getStickyPaddingBottom()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingRight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentType:I

    return v0
.end method

.method public hasColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->hasColor:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->hasColor:Z

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentColor:I

    return-void
.end method

.method public setLink(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 0

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->link:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->set(ILorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setMaxWidth(I)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->marker:Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentType:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LinkView;->currentColor:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->setType(II)V

    return-void
.end method
