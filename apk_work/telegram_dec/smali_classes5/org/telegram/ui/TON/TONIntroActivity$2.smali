.class Lorg/telegram/ui/TON/TONIntroActivity$2;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TON/TONIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paints:[Landroid/graphics/Paint;

.field final synthetic val$particlesCount:I

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$w1-ypjp76NMMNBsYTNt4HtWZU-E(Lorg/telegram/ui/TON/TONIntroActivity$2;Ljava/lang/Integer;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$2;->lambda$configure$0(Ljava/lang/Integer;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    iput p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->val$particlesCount:I

    iput p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->val$type:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setClipWithGradient()V

    return-void
.end method

.method private synthetic lambda$configure$0(Ljava/lang/Integer;)Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method protected configure()V
    .locals 7

    new-instance v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v1, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->val$particlesCount:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0x6a

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useScale:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    iget v3, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->val$type:I

    if-ne v3, v2, :cond_0

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetY:F

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    array-length v3, v0

    if-ge v1, v3, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/TON/TONIntroActivity$2;->paints:[Landroid/graphics/Paint;

    array-length v5, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, -0xd17e27

    const v6, -0xd94406

    invoke-static {v5, v6, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TON/TONIntroActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$2;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->getPaint:Lorg/telegram/messenger/Utilities$CallbackReturn;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0x11

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v1, 0x12

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    const/16 v1, 0x13

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method protected getStarsRectWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method
