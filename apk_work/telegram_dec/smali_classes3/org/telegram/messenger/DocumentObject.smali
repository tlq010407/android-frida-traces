.class public Lorg/telegram/messenger/DocumentObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/DocumentObject$ThemeDocument;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsPhotoSizeType(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getCircleThumb(FIF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/messenger/DocumentObject;->getCircleThumb(FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getCircleThumb(FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 3

    .line 0
    :try_start_0
    new-instance p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {p2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    new-instance v0, Lorg/telegram/messenger/SvgHelper$Circle;

    const/high16 v1, 0x44000000    # 512.0f

    mul-float p0, p0, v1

    const/high16 v1, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v1, p0}, Lorg/telegram/messenger/SvgHelper$Circle;-><init>(FFF)V

    iget-object p0, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x200

    iput p0, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    iput p0, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p3, p0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(IFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSvgRectThumb(IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 7

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x44000000    # 512.0f

    const/high16 v4, 0x44000000    # 512.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    new-instance v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x200

    iput v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    iput v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(IFZ)V

    return-object v0
.end method

.method public static getSvgThumb(IIF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 1

    .line 0
    const/high16 v0, -0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/SvgHelper;->getDrawable(ILjava/lang/Integer;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(IFZ)V

    :cond_0
    return-object p0
.end method

.method public static getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IF)",
            "Lorg/telegram/messenger/SvgHelper$SvgDrawable;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IFZ)",
            "Lorg/telegram/messenger/SvgHelper$SvgDrawable;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    const/16 v4, 0x200

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v8, :cond_0

    move-object v6, v7

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    goto :goto_1

    :cond_0
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v8, :cond_1

    if-eqz p3, :cond_1

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-object p0, v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;->svgPath:Landroid/graphics/Path;

    invoke-static {p0, v1, v4}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(IFZ)V

    :cond_3
    return-object p0

    :cond_4
    return-object v2
.end method

.method public static getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 7

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v5, :cond_4

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v6, :cond_2

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget p0, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    goto :goto_3

    :cond_3
    const/16 p0, 0x200

    const/16 v1, 0x200

    :goto_3
    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;->svgPath:Landroid/graphics/Path;

    int-to-float p0, p0

    mul-float p0, p0, p3

    float-to-int p0, p0

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int p3, v1

    invoke-static {v0, p0, p3}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p4, p2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-object v0
.end method
