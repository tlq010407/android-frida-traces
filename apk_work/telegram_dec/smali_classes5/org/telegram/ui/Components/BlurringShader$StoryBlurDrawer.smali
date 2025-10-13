.class public Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BlurringShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryBlurDrawer"
.end annotation


# instance fields
.field private animateBitmapChange:Z

.field private bgColor:Ljava/lang/Integer;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field bounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private clipPathHeight:I

.field private clipPathWidth:I

.field public final colorMatrix:Landroid/graphics/ColorMatrix;

.field private crossfadeAnimator:Landroid/animation/ValueAnimator;

.field private customOffset:Z

.field private customOffsetX:F

.field private customOffsetY:F

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private final loc1:[I

.field private final loc2:[I

.field private final manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private final matrix:Landroid/graphics/Matrix;

.field public oldPaint:Landroid/graphics/Paint;

.field private oldPaintAlpha:F

.field private oldPaintSet:Z

.field public paint:Landroid/graphics/Paint;

.field public renderNode:Landroid/graphics/RenderNode;

.field private tempPaints:[Landroid/graphics/Paint;

.field private final type:I

.field private final view:Landroid/view/View;

.field private wasDark:Z

.field public xfer:Z


# direct methods
.method public static synthetic $r8$lambda$7azbTGo0Fg41h7AotXRnLHSNsqc(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lambda$animateOldPaint$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V
    .locals 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc1:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc2:[I

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iput-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->view:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->type:I

    iput-boolean p4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->animateBitmapChange:Z

    new-instance p4, Landroid/graphics/ColorMatrix;

    invoke-direct {p4}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->colorMatrix:Landroid/graphics/ColorMatrix;

    const v2, 0x3ee66666    # 0.45f

    if-nez p3, :cond_0

    invoke-static {p4, v2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x5

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    if-ne p3, v3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    invoke-static {p4, v4}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->xfer:Z

    goto/16 :goto_5

    :cond_1
    const v3, 0x3ecccccd    # 0.4f

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p4, v3}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto :goto_0

    :cond_2
    const v0, 0x3eb33333    # 0.35f

    if-ne p3, v5, :cond_3

    invoke-static {p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p3, 0x3f333333    # 0.7f

    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/high16 p3, 0x3fc00000    # 1.5f

    :goto_2
    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto/16 :goto_5

    :cond_3
    const/high16 v6, 0x3f000000    # 0.5f

    if-ne p3, v1, :cond_4

    invoke-static {p4, v6}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    const p3, -0x9d9d9e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bgColor:Ljava/lang/Integer;

    const p3, 0x3f19999a    # 0.6f

    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p4, v4}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p3, 0x3f99999a    # 1.2f

    goto :goto_2

    :cond_5
    const/4 v1, 0x6

    if-ne p3, v1, :cond_6

    invoke-static {p4, v3}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto :goto_5

    :cond_6
    const/4 v0, 0x7

    if-ne p3, v0, :cond_7

    invoke-static {p4, v6}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p3, 0x3f733333    # 0.95f

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    if-ne p3, v0, :cond_8

    const p3, -0x41e66666    # -0.15f

    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const p3, 0x3ef0a3d7    # 0.47f

    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x9

    if-ne p3, v0, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p4, v3}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p4, v2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0xa

    if-ne p3, v0, :cond_c

    const p3, 0x3fcccccd    # 1.6f

    invoke-virtual {p4, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-boolean p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    if-eqz p3, :cond_a

    const p3, 0x3f7851ec    # 0.97f

    goto :goto_3

    :cond_a
    const p3, 0x3f6b851f    # 0.92f

    :goto_3
    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-boolean p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    if-eqz p3, :cond_b

    const p3, 0x3df5c28f    # 0.12f

    goto :goto_4

    :cond_b
    const p3, -0x428a3d71    # -0.06f

    :goto_4
    invoke-static {p4, p3}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    :cond_c
    :goto_5
    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->attach(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V

    :cond_d
    new-instance p3, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;-><init>(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->customOffsetX:F

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->customOffsetY:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->recycle()V

    return-void
.end method

.method private animateOldPaint()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->crossfadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->crossfadeAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaintAlpha:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->crossfadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->crossfadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bgColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$500(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$animateOldPaint$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaintAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setupMatrix(IIZ)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$800(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$900(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->customOffset:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->customOffsetX:F

    neg-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->customOffsetY:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->view:Landroid/view/View;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$100(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    if-eq p3, v0, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$100(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v1

    if-nez v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$100(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc1:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc2:[I

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc2:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->loc1:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    aget v3, v3, v1

    aget v5, v6, v1

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_5
    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$100(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$100(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8
    return v1
.end method

.method private updateBounds()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v1, Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public adapt(Z)Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    iget p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->type:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const v0, 0x3fcccccd    # 1.6f

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    if-eqz v0, :cond_0

    const v0, 0x3f7851ec    # 0.97f

    goto :goto_0

    :cond_0
    const v0, 0x3f6b851f    # 0.92f

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->wasDark:Z

    if-eqz v0, :cond_1

    const v0, 0x3df5c28f    # 0.12f

    goto :goto_1

    :cond_1
    const v0, -0x428a3d71    # -0.06f

    :goto_1
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-object p0
.end method

.method public drawRect(Landroid/graphics/Canvas;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;FFF)V
    .locals 6

    .line 0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;FFFZ)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;FFFZ)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$600(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$700(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v4, v2, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {v2, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->setupMatrix(IIZ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p4, p4, p3

    float-to-int p3, p4

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-eqz p5, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPathWidth:I

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPathHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result p3

    if-eq p2, p3, :cond_4

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPathWidth:I

    int-to-float p3, p3

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPathHeight:I

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPath:Landroid/graphics/Path;

    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p2, p5, p4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_5
    invoke-static {p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p4, p2, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(FFF)Landroid/graphics/Paint;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public getPaint(F)Landroid/graphics/Paint;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(FFF)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(FFF)Landroid/graphics/Paint;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_4

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->animateBitmapChange:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaintSet:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->animateOldPaint()V

    :cond_3
    new-instance v2, Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->lastBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->setupMatrix(IIZ)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getPaints(FFF)[Landroid/graphics/Paint;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(FFF)Landroid/graphics/Paint;

    move-result-object p2

    iget-boolean p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaintSet:Z

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->oldPaintAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    mul-float v2, v2, v1

    mul-float v2, v2, p1

    float-to-int p3, v2

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    if-eqz v0, :cond_2

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->tempPaints:[Landroid/graphics/Paint;

    if-nez p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->tempPaints:[Landroid/graphics/Paint;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->tempPaints:[Landroid/graphics/Paint;

    const/4 p3, 0x0

    aput-object v0, p1, p3

    const/4 p3, 0x1

    aput-object p2, p1, p3

    return-object p1
.end method

.method public makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;-><init>(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;FFLandroid/graphics/drawable/Drawable;F)V

    return-object v6
.end method

.method public setBounds(FFFF)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->setBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->updateBounds()V

    return-void
.end method
