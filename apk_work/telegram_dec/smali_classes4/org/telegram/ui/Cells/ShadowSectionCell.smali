.class public Lorg/telegram/ui/Cells/ShadowSectionCell;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private backgroundColor:I

.field private bottom:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private size:I

.field private top:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    iput-object p4, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    iput-object p3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private getBackgroundResId()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eqz v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    return v0

    :cond_0
    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    return v0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    return v0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->transparent:I

    return v0
.end method

.method private updateBackground()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getBackgroundResId()I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getBackgroundResId()I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->backgroundColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->size:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setTopBottom(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->top:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;->bottom:Z

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ShadowSectionCell;->updateBackground()V

    :cond_1
    return-void
.end method
