.class Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderDrawable"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->rect:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p3

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v3, p4

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;->rect:Landroid/graphics/Rect;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    add-int/2addr v0, p1

    add-int/2addr v1, p2

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
