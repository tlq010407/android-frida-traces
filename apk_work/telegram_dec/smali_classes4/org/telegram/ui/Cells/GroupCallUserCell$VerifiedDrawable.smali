.class Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/GroupCallUserCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerifiedDrawable"
.end annotation


# instance fields
.field private drawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x8a4c12

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$VerifiedDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
