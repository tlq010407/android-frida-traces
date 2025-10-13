.class public Lorg/telegram/ui/Components/IdenticonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private colors:[I

.field private data:[B

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    const v0, -0xd2a88b

    const v1, -0xd06637

    const/4 v2, -0x1

    const v3, -0x2a190d

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    return-void
.end method

.method private getBits(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    div-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    rem-int/lit8 p1, p1, 0x8

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v1, v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v1

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v7, v4

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x8

    if-ge v3, v7, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v9

    add-int/lit8 v4, v4, 0x2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    iget-object v10, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v9, v11, v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v8

    mul-float v9, v9, v1

    add-float v11, v6, v9

    int-to-float v9, v3

    mul-float v9, v9, v1

    add-float v12, v9, v2

    add-float v13, v11, v1

    add-float/2addr v9, v1

    add-float v14, v9, v2

    iget-object v15, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v1

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v7, v4

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const/16 v7, 0xc

    if-ge v3, v7, :cond_4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    iget-object v10, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v9, v11, v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v8

    mul-float v9, v9, v1

    add-float v11, v6, v9

    int-to-float v9, v3

    mul-float v9, v9, v1

    add-float v12, v9, v2

    add-float v13, v11, v1

    add-float/2addr v9, v1

    add-float v14, v9, v2

    iget-object v15, v0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
