.class public Lorg/telegram/ui/Components/BottomPagesView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private colorKey:I

.field private currentPage:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private pagesCount:I

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private scrollPosition:I

.field private selectedColorKey:I

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->colorKey:I

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->selectedColorKey:I

    iput-object p2, p0, Lorg/telegram/ui/Components/BottomPagesView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iput p3, p0, Lorg/telegram/ui/Components/BottomPagesView;->pagesCount:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    iget v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->colorKey:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/high16 v3, -0x4c000000

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, -0xaaaaab

    goto :goto_0

    :cond_1
    const v2, -0x444445

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->currentPage:I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->pagesCount:I

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x41300000    # 11.0f

    const/4 v5, 0x0

    if-ge v1, v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->currentPage:I

    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v2, v2, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v5, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->selectedColorKey:I

    if-ltz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    const v2, -0xd35a20

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget v1, p0, Lorg/telegram/ui/Components/BottomPagesView;->currentPage:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->progress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->scrollPosition:I

    iget v6, p0, Lorg/telegram/ui/Components/BottomPagesView;->currentPage:I

    if-lt v2, v6, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Components/BottomPagesView;->progress:F

    mul-float v4, v4, v7

    add-float/2addr v1, v4

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v6, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Components/BottomPagesView;->progress:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    mul-float v4, v4, v8

    sub-float/2addr v6, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagesView;->rect:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->colorKey:I

    iput p2, p0, Lorg/telegram/ui/Components/BottomPagesView;->selectedColorKey:I

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->currentPage:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageOffset(IF)V
    .locals 0

    iput p2, p0, Lorg/telegram/ui/Components/BottomPagesView;->progress:F

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagesView;->scrollPosition:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
