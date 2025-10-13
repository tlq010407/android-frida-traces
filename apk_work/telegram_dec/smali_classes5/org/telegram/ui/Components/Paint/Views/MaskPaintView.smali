.class public abstract Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private baseScale:F

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field public final buttonsLayout:Landroid/widget/FrameLayout;

.field public final cancelButton:Landroid/widget/TextView;

.field private currentAccount:I

.field private currentCropState:Lorg/telegram/messenger/MediaController$CropState;

.field public final doneButton:Landroid/widget/TextView;

.field private eraser:Z

.field private exclusionRect:Landroid/graphics/Rect;

.field private exclusionRects:Ljava/util/ArrayList;

.field private ignoreLayout:Z

.field private imageHeight:F

.field private imageWidth:F

.field private inBubbleMode:Z

.field private inputTransformX:F

.field private inputTransformY:F

.field private orientation:I

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private panTranslationY:F

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private final renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private scale:F

.field private transformX:F

.field private transformY:F

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field public weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

.field private weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;


# direct methods
.method public static synthetic $r8$lambda$cXRL7e_YItIUpm3UBcEWZiwtjVc()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->lambda$shutdown$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$CropState;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p5

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRects:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRect:Landroid/graphics/Rect;

    move/from16 v2, p2

    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentAccount:I

    instance-of v2, v7, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->inBubbleMode:Z

    new-instance v2, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    new-instance v2, Lorg/telegram/messenger/DispatchQueue;

    const-string v3, "MaskPaint"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v2, p6

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v4, p3

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->orientation:I

    new-instance v8, Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v6, p4

    invoke-direct {v2, v3, v6, v1, v5}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->asMask()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    const/high16 v2, -0x10000

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setBrushWeight(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x2c

    const/16 v4, 0x50

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->cancelButton:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v12, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v10, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, 0x42300000    # 44.0f

    const/4 v15, 0x3

    const/high16 v16, -0x3f000000    # -8.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v5, v12, v6, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v5, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, -0x3f000000    # -8.0f

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Lorg/telegram/ui/Components/Size;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    const/16 v3, 0x500

    int-to-float v3, v3

    iput v3, v2, Lorg/telegram/ui/Components/Size;->width:F

    mul-float v4, v3, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v2, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    iput v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    mul-float v3, v3, v0

    div-float/2addr v3, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lorg/telegram/ui/Components/Size;->width:F

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    return-object v2
.end method

.method private static synthetic lambda$shutdown$0()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canUndo()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->inBubbleMode:Z

    if-nez v0, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v8, v3

    move v3, v2

    move v2, v8

    :cond_2
    :goto_0
    int-to-float v3, v3

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v3, v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v2, v2

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float v2, v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->transformX:F

    add-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->getAdditionalBottom()I

    move-result v0

    add-int/2addr v6, v0

    sub-int/2addr v6, v2

    int-to-float v0, v6

    div-float/2addr v0, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->transformY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v5, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x1

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return p2
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->orientation:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->orientation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->orientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->rotate(F)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    :cond_1
    return-object v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public init()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x140

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected abstract onDrawn()V
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->inBubbleMode:Z

    if-nez p1, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->LIGHT_STATUS_BAR_OVERLAY:I

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    div-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->ignoreLayout:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    int-to-float v3, v0

    int-to-float v1, v1

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_0
    int-to-float v0, v0

    mul-float v4, v0, v3

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v2, v2

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    mul-float v1, v1, v2

    div-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v4, v2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    float-to-int v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->baseScale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->ignoreLayout:Z

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3e99999a    # 0.3f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->exclusionRects:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected onRenderViewAlphaUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v0

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    float-to-double v0, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v0

    sub-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    add-float/2addr v3, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    add-double/2addr v4, v0

    double-to-float v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setEraser(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->eraser:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->eraser:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Paint/Brush$Eraser;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 9

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->scale:F

    iput p5, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->imageWidth:F

    iput p6, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->imageHeight:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->inputTransformX:F

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->inputTransformY:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->transformX:F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->panTranslationY:F

    add-float/2addr p3, v0

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->transformY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float v1, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v3, :cond_3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v6, v5, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_2

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v8, v4

    move v4, v3

    move v3, v8

    :cond_2
    :goto_0
    int-to-float v4, v4

    iget v7, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    int-to-float v3, v3

    iget v5, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v5, v5, v3

    float-to-int v5, v5

    int-to-float v7, v7

    div-float/2addr p5, v7

    int-to-float v5, v5

    div-float/2addr p6, v5

    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    mul-float v1, v1, p5

    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, p6, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float v5, v5, v4

    mul-float v5, v5, p1

    mul-float v5, v5, p5

    iget v4, p6, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float v5, v5, v4

    add-float/2addr p2, v5

    iget v5, p6, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float v5, v5, v3

    mul-float v5, v5, p1

    mul-float v5, v5, p5

    mul-float v5, v5, v4

    add-float/2addr p3, v5

    iget p5, p6, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    int-to-float p6, v6

    add-float/2addr p5, p6

    add-float/2addr p4, p5

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget p5, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->baseScale:F

    mul-float v1, p5, v2

    :goto_2
    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_3

    :cond_5
    move v2, p1

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public undo()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    const/4 v0, 0x1

    return v0
.end method
