.class public Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Forum/ForumUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralTopicDrawable"
.end annotation


# instance fields
.field color:I

.field icon:Landroid/graphics/drawable/Drawable;

.field scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FIZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-eqz p4, :cond_2

    sget-object p4, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogGeneralIcon:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p5, :cond_0

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_filled_general_large:I

    goto :goto_0

    :cond_0
    sget p4, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    :goto_0
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogGeneralIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object p1, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogGeneralIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p5, :cond_3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_filled_general_large:I

    goto :goto_2

    :cond_3
    sget p4, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    :goto_2
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :goto_3
    iput p2, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->scale:F

    mul-float v0, v0, v4

    add-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->color:I

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->color:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
