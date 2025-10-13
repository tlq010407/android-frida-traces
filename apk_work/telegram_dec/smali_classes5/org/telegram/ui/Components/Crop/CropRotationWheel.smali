.class public Lorg/telegram/ui/Components/Crop/CropRotationWheel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;
    }
.end annotation


# instance fields
.field private aspectRatioButton:Landroid/widget/ImageView;

.field private bluePaint:Landroid/graphics/Paint;

.field private degreesText:Ljava/lang/String;

.field private degreesTextPaint:Landroid/text/TextPaint;

.field private mirrorButton:Landroid/widget/ImageView;

.field private prevX:F

.field protected rotation:F

.field private rotation90Button:Landroid/widget/ImageView;

.field private rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

.field private tempRect:Landroid/graphics/RectF;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$4p-WpcLGhBIA87ldncOPMZyJpZQ(Lorg/telegram/ui/Components/Crop/CropRotationWheel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_kKv5ZU5duqWNkbW-St-PVNLUqE(Lorg/telegram/ui/Components/Crop/CropRotationWheel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ii_mKFpdpuRx_6Yi9woLN9t_7Hc(Lorg/telegram/ui/Components/Crop/CropRotationWheel;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rGAw4KW_FOPaf2ISMFirYQDucMg(Lorg/telegram/ui/Components/Crop/CropRotationWheel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const v2, -0xae420d

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_photo_flip:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrMirror:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    const/16 v6, 0x46

    const/16 v7, 0x40

    const/16 v8, 0x13

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {p0, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_photo_cropfix:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->AccDescrAspectRatio:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_photo_rotate:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrRotate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const/16 v0, 0x15

    invoke-static {v6, v7, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesTextPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->mirror()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->aspectRatioPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->rotate90Pressed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V
    .locals 6

    int-to-float v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    add-float/2addr p2, p3

    const/high16 p3, 0x42b40000    # 90.0f

    sub-float/2addr p3, p2

    int-to-double v1, v0

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p2

    double-to-int p2, v1

    const/4 p3, 0x2

    div-int/2addr p4, p3

    add-int/2addr p4, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float p2, p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0xff

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eqz p6, :cond_0

    iget-object p7, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    :cond_0
    move-object v5, p7

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p6, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    if-eqz p6, :cond_2

    const/high16 p6, 0x41800000    # 16.0f

    :goto_1
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    goto :goto_2

    :cond_2
    const/high16 p6, 0x41400000    # 12.0f

    goto :goto_1

    :goto_2
    div-int/2addr p2, p3

    sub-int p7, p4, p2

    int-to-float v1, p7

    sub-int p7, p5, p6

    div-int/2addr p7, p3

    int-to-float v2, p7

    add-int/2addr p4, p2

    int-to-float v3, p4

    add-int/2addr p5, p6

    div-int/2addr p5, p3

    int-to-float v4, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    iget v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    neg-float v0, v0

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v0, v0, v12

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float v13, v0, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v14, v0

    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v7, v0, :cond_7

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    if-lt v7, v14, :cond_1

    if-nez v7, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move-object/from16 v16, v0

    goto :goto_3

    :cond_1
    :goto_2
    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    goto :goto_1

    :goto_3
    const/16 v17, 0x1

    if-eq v7, v14, :cond_3

    if-nez v7, :cond_2

    const/4 v0, -0x1

    if-ne v14, v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move v3, v13

    move v4, v10

    move v5, v11

    move v15, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    if-eqz v15, :cond_6

    neg-int v2, v15

    if-le v2, v14, :cond_4

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    :goto_6
    move-object v7, v0

    goto :goto_7

    :cond_4
    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    goto :goto_6

    :goto_7
    add-int/lit8 v0, v14, 0x1

    if-ne v2, v0, :cond_5

    const/4 v6, 0x1

    goto :goto_8

    :cond_5
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v7, v15, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v10, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v11, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v11, v1

    div-int/lit8 v11, v11, 0x2

    int-to-float v1, v11

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float v0, v10

    iget-object v1, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesTextPaint:Landroid/text/TextPaint;

    iget-object v2, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v12

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesText:Ljava/lang/String;

    iget-object v3, v8, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onStart()V

    goto/16 :goto_3

    :cond_0
    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    sub-float/2addr v1, p1

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v5

    float-to-double v5, v1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    const-wide v7, 0x3ffa666660000000L    # 1.649999976158142

    div-double/2addr v5, v7

    double-to-float v1, v5

    add-float/2addr v4, v1

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, -0x3dcc0000    # -45.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-lt v6, v7, :cond_5

    sub-float v6, v4, v1

    :try_start_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget v6, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gez v1, :cond_3

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_2
    :goto_0
    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_4

    :cond_3
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_1

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    div-float v1, v4, v3

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_5

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v1, v5, v7

    if-lez v1, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v5, v7

    if-gez v1, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v0, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onChange(F)V

    :cond_7
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz p1, :cond_9

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onEnd(F)V

    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%.1f\u00b0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return v2
.end method

.method public reset(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    return-void
.end method

.method public setAspectLock(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0xae420d

    invoke-direct {p1, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setFreeform(Z)V
    .locals 0

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    return-void
.end method

.method public setMirrored(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->mirrorButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRotated(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRotation(FZ)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3fb95810624dd2f2L    # 0.099

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "%.1f\u00ba"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
