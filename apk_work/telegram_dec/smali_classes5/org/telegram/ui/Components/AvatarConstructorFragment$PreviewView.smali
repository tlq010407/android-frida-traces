.class public abstract Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewView"
.end annotation


# instance fields
.field backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

.field backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field changeBackgroundProgress:F

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private cx:F

.field private cy:F

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public documentId:J

.field expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field expanded:Z

.field public freeEmoji:Z

.field gradientTools:Lorg/telegram/ui/Components/GradientTools;

.field isCustomGradient:Z

.field outGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field overrideExpandProgress:F

.field private size:F

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView$1;-><init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;Landroid/content/Context;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x46

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    return p0
.end method

.method private drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-static {p4, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v1, p2, p5

    sub-float v2, p3, p5

    add-float/2addr p2, p5

    add-float/2addr p3, p5

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v0, p4, p4, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float v0, v0, v2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->overrideExpandProgress:F

    cmpl-float v3, v2, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v5, v5, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v3, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    iget v2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->collapsedHeight:I

    sub-int/2addr v3, v2

    neg-int v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    mul-float v3, v3, v7

    add-float/2addr v6, v3

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v4, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v5, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    sub-float v5, v3, v4

    iget v6, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v7, v6, v4

    add-float/2addr v3, v4

    add-float/2addr v6, v4

    invoke-virtual {v2, v5, v7, v3, v6}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    const/16 v3, 0xff

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    sub-float v6, v4, v5

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v8, v7, v5

    add-float/2addr v4, v5

    add-float/2addr v7, v5

    invoke-virtual {v2, v6, v8, v4, v7}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    const v3, 0x3d83126f    # 0.064f

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_3

    iput v9, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    iget v7, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->size:F

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v8, v2, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->drawBackround(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    const v3, 0x3f333333    # 0.7f

    if-eqz v2, :cond_6

    mul-float v0, v0, v1

    mul-float v0, v0, v3

    float-to-int v0, v0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expandProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v3, v3, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const v4, 0x3e051eb8    # 0.13f

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    mul-float v1, v1, v0

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float v5, v4, v0

    float-to-int v5, v5

    add-float/2addr v2, v0

    float-to-int v2, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {v1, v3, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    iget-object v2, v2, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cx:F

    sub-float/2addr v3, v0

    iget v5, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->cy:F

    sub-float/2addr v5, v0

    mul-float v0, v0, v1

    invoke-virtual {v2, v3, v5, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_4
    return-void
.end method

.method public getDuration()J
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    :cond_0
    const-wide/16 v1, 0x1388

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_0
    const/high16 p2, 0x430c0000    # 140.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->expanded:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method

.method public setGradient(Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->outGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v2, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v3, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v4, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->changeBackgroundProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->wasChanged:Z

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->isCustomGradient:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->invalidate()V

    return-void
.end method
