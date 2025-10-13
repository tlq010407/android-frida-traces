.class public abstract Lorg/telegram/ui/Stories/recorder/CropInlineEditor;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;
    }
.end annotation


# instance fields
.field private final animatedMirror:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedOrientation:Lorg/telegram/ui/Components/AnimatedFloat;

.field private appearProgress:F

.field public applied:Z

.field public final buttonsLayout:Landroid/widget/FrameLayout;

.field public final cancelButton:Landroid/widget/TextView;

.field public closing:Z

.field public final contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

.field public final controlsLayout:Landroid/widget/FrameLayout;

.field public final cropButton:Landroid/widget/TextView;

.field private final cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

.field public final cropView:Lorg/telegram/ui/Components/Crop/CropView;

.field private lastOrientation:I

.field private photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

.field private final photoViewLocation:[I

.field private final previewContainer:Lorg/telegram/ui/Stories/recorder/PreviewView;

.field private final previewLocation:[I

.field public final resetButton:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final shapesLayout:Landroid/widget/LinearLayout;

.field private final thisLocation:[I

.field public final wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;


# direct methods
.method public static synthetic $r8$lambda$Zmi0VjOXwK3iY_duU7tmLskfkgM(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lambda$apply$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$mLhTaRudlM7y-tsoxAbv8R86FZQ(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qJX8RxU0Lrm6P1q7BY-N6tO1wCE(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaBPp8fFD4Tn1q6TGjS7FT1123U(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lastOrientation:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->appearProgress:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->thisLocation:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewLocation:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoViewLocation:[I

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropTransform;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Crop/CropTransform;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewContainer:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    new-instance p3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x140

    move-object v2, p3

    move-object v3, p2

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedMirror:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p3, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedOrientation:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    new-instance p3, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$2;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->controlsLayout:Landroid/widget/FrameLayout;

    const/16 p3, 0x77

    const/4 v1, -0x1

    invoke-static {v1, v1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$3;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V

    const/4 v8, 0x0

    const/high16 v9, 0x42500000    # 52.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/high16 v3, 0x42500000    # 52.0f

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cancelButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, -0xc2c2c3

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v5, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {p2, v6, v0, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x73

    const/4 v7, -0x2

    invoke-static {v7, v1, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p3, p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->resetButton:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v6, Lorg/telegram/messenger/R$string;->CropReset:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {p2, v6, v0, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x71

    invoke-static {v7, v1, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p3, p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropButton:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, -0xe66301

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lorg/telegram/messenger/R$string;->StoryCrop:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x75

    invoke-static {v7, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->shapesLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->getCurrentWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->getCurrentHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->lastOrientation:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedOrientation:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->appearProgress:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Stories/recorder/PreviewView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewContainer:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewLocation:[I

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->thisLocation:[I

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoViewLocation:[I

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedMirror:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)Lorg/telegram/ui/Components/Crop/CropTransform;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    return-object p0
.end method

.method private getCurrentHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v0

    :goto_1
    return v0
.end method

.method private getCurrentWidth()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v0

    :goto_1
    return v0
.end method

.method private synthetic lambda$apply$3()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->close()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->reset(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->apply()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->close()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->applied:Z

    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->applyToCropState(Lorg/telegram/messenger/MediaController$CropState;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MediaController$CropState;->orientation:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract close()V
.end method

.method public disappearStarts()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->closing:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAppearProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->appearProgress:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setTopPadding(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->controlsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setBottomPadding(F)V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->applied:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->closing:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropView;->onShow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->thisLocation:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewContainer:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->previewLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoViewLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Crop/CropView;->start(IZZLorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/messenger/MediaController$CropState;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    if-eqz v1, :cond_3

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedMirror:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setMirrored(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->animatedMirror:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAppearProgress(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->appearProgress:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->appearProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->photoView:Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->stop()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onHide()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
