.class public Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;,
        Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;
    }
.end annotation


# instance fields
.field private alphaPickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;

.field private colorListener:Landroidx/core/util/Consumer;

.field private doneView:Landroid/widget/ImageView;

.field private initialized:Z

.field private mColor:I

.field private path:Landroid/graphics/Path;

.field private pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

.field private pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

.field private pipetteView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$BlbsyD-81A_qGPu8dMIvlPSbodw(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNcFg792RS7zQrEQTwD7We6S6Es(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->lambda$new$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->path:Landroid/graphics/Path;

    const p2, -0xdadadb

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->picker:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->doneView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->doneView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->doneView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->doneView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->alphaPickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->mColor:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->mColor:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->alphaPickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->doneView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->onSetColor(II)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->isPipetteVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->getSnapshotDrawingView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->onDrawImageOverCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->setColorListener(Landroidx/core/util/Consumer;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/PipettePickerView;->animateShow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->dismiss()V

    return-void
.end method

.method private onSetColor(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->initialized:Z

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;->access$100(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->setCurrentColor(I)V

    :cond_3
    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;->access$200(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;

    move-result-object v0

    if-eq p2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->setColor(IZ)V

    :cond_5
    if-eq p2, v1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->alphaPickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->setColor(I)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pickerView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;->access$300(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->invalidateColor()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->colorListener:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->onSetColor(II)V

    return-object p0
.end method

.method public setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->colorListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    return-object p0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteDelegate:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;->isPipetteAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->pipetteView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
