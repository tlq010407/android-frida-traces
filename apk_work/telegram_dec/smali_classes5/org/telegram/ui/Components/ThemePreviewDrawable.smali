.class public Lorg/telegram/ui/Components/ThemePreviewDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private themeDocument:Lorg/telegram/messenger/DocumentObject$ThemeDocument;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ThemePreviewDrawable;->createPreview(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemePreviewDrawable;->themeDocument:Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    return-void
.end method

.method private static createPreview(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)Landroid/graphics/Bitmap;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x230

    const/16 v5, 0x2a6

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->baseTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {v8, v3, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v3

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v8

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v7, v11}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-static {v7, v13}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->getPreviewColor(Landroid/util/SparseIntArray;I)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v7, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v20

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sget-object v16, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v16, v13

    sget v13, Lorg/telegram/messenger/R$drawable;->preview_back:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v13, v8}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v17, v14

    sget v14, Lorg/telegram/messenger/R$drawable;->preview_dots:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14, v8}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$drawable;->preview_smile:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v23, v8

    sget v8, Lorg/telegram/messenger/R$drawable;->preview_mic:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x2

    new-array v5, v12, [Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move/from16 v24, v11

    const/4 v12, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v12, v11, :cond_2

    new-instance v11, Lorg/telegram/ui/Components/ThemePreviewDrawable$1;

    move-object/from16 v25, v8

    const/4 v8, 0x1

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    if-ne v12, v8, :cond_0

    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x2

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    invoke-direct {v11, v14, v8, v13, v7}, Lorg/telegram/ui/Components/ThemePreviewDrawable$1;-><init>(IZZLandroid/util/SparseIntArray;)V

    aput-object v11, v5, v12

    const/4 v8, 0x1

    if-ne v12, v8, :cond_1

    move/from16 v8, v17

    goto :goto_3

    :cond_1
    move/from16 v8, v16

    :goto_3
    invoke-static {v11, v8}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v25

    move-object/from16 v14, v26

    move-object/from16 v13, v27

    goto :goto_0

    :cond_2
    move-object/from16 v25, v8

    move-object/from16 v27, v13

    move-object/from16 v26, v14

    const/16 v11, 0x78

    if-eqz v19, :cond_3

    new-instance v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v21, 0x1

    move-object/from16 v16, v4

    move/from16 v17, v15

    move/from16 v18, v6

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    move-object v7, v4

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    filled-new-array {v15, v6}, [I

    move-result-object v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-static {v4, v7, v8, v12}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->createDitheredGradientBitmapDrawable(I[III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    const/4 v7, 0x0

    :goto_4
    invoke-static {v15, v6}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v6

    if-eqz v4, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v11, v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v0, :cond_d

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v8, "application/x-tgwallpattern"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x230

    const/16 v8, 0x2a6

    invoke-static {v0, v4, v8, v13}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8

    :cond_5
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v12, v12

    const/16 v13, 0x230

    int-to-float v14, v13

    div-float v13, v8, v14

    const/16 v15, 0x2a6

    int-to-float v11, v15

    div-float v15, v12, v11

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v15, 0x3f99999a    # 1.2f

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v15, v13, v15

    if-gez v15, :cond_6

    const/high16 v13, 0x3f800000    # 1.0f

    :cond_6
    const/4 v15, 0x0

    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    cmpl-float v15, v13, v17

    if-lez v15, :cond_9

    cmpl-float v8, v8, v14

    if-gtz v8, :cond_7

    cmpl-float v8, v12, v11

    if-lez v8, :cond_9

    :cond_7
    const/4 v8, 0x1

    :goto_6
    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpg-float v8, v8, v13

    if-ltz v8, :cond_8

    iput v11, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_7

    :cond_8
    move v8, v11

    goto :goto_6

    :cond_9
    float-to-int v8, v13

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_c

    if-eqz v7, :cond_a

    iget-object v1, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v7, v1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v6, 0x78

    sub-int/2addr v4, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6, v1, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_a
    new-instance v4, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v1, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_b

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_b
    const/16 v1, 0xff

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v1, 0x230

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    const/16 v1, 0x2a6

    int-to-float v11, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v11, v1

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v1

    float-to-int v11, v11

    const/16 v12, 0x230

    rsub-int v6, v6, 0x230

    const/4 v12, 0x2

    div-int/2addr v6, v12

    const/16 v13, 0x2a6

    rsub-int v11, v11, 0x2a6

    div-int/2addr v11, v12

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v6

    int-to-float v11, v11

    invoke-virtual {v10, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v10, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    :goto_9
    move-object v6, v0

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v4, 0x78

    sub-int/2addr v1, v4

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v4, v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v6, v0

    const/4 v0, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    move-object v3, v10

    move-object v1, v5

    move v5, v0

    move-object/from16 v0, v23

    move-object/from16 v11, v25

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/16 v4, 0x78

    rsub-int/lit8 v3, v3, 0x78

    const/4 v4, 0x2

    div-int/2addr v3, v4

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/16 v5, 0xd

    add-int/2addr v4, v5

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    move-object/from16 v7, v27

    invoke-virtual {v7, v5, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    if-eqz v26, :cond_10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/16 v5, 0x78

    rsub-int/lit8 v4, v4, 0x78

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v4

    move-object/from16 v7, v26

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    const/16 v7, 0xd8

    const/16 v8, 0x134

    const/16 v12, 0xa1

    invoke-virtual {v4, v12, v7, v5, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    aget-object v17, v1, v3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x230

    const/16 v20, 0x20a

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    aget-object v4, v1, v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v6

    const/16 v7, 0x1ae

    const/16 v8, 0x20a

    invoke-virtual {v4, v12, v7, v5, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    aget-object v17, v1, v3

    const/16 v18, 0x1ae

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/16 v5, 0x18f

    const/16 v7, 0x19f

    const/16 v8, 0x143

    invoke-virtual {v4, v6, v8, v5, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    aget-object v17, v1, v3

    const/16 v18, 0x143

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v1, v24

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v3, 0x78

    sub-int/2addr v1, v3

    int-to-float v5, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v4, 0x0

    move-object v3, v10

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x16

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x78

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x78

    const/4 v3, 0x2

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x78

    sub-int/2addr v1, v2

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    return-object v9
.end method
