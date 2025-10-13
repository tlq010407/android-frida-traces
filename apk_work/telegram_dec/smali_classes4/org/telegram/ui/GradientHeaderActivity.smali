.class public abstract Lorg/telegram/ui/GradientHeaderActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;,
        Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    }
.end annotation


# instance fields
.field public backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

.field protected contentView:Landroid/widget/FrameLayout;

.field private currentYOffset:I

.field private final darkGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private firstViewHeight:I

.field private final gradientCanvas:Landroid/graphics/Canvas;

.field private final gradientTextureBitmap:Landroid/graphics/Bitmap;

.field private final gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private final headerBgPaint:Landroid/graphics/Paint;

.field private inc:Z

.field private isDialogVisible:Z

.field public isLandscapeMode:Z

.field protected layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private minusHeaderHeight:I

.field protected particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field public particlesViewHeight:I

.field private progress:F

.field private progressToFull:F

.field public savedScrollOffset:I

.field public savedScrollPosition:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field public statusBarHeight:I

.field private totalProgress:F

.field protected useFillLastLayoutManager:Z

.field public whiteBackground:Z

.field protected yOffset:I


# direct methods
.method public static synthetic $r8$lambda$DkRQQmoh-quEuVbvTwCKWltno1g(Lorg/telegram/ui/GradientHeaderActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;->updateColors()V

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v6, Lorg/telegram/ui/GradientHeaderActivity$1;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    move-object v0, v6

    move-object v1, p0

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/GradientHeaderActivity$1;-><init>(Lorg/telegram/ui/GradientHeaderActivity;IIII)V

    iput-object v6, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    new-instance v6, Lorg/telegram/ui/GradientHeaderActivity$2;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/GradientHeaderActivity$2;-><init>(Lorg/telegram/ui/GradientHeaderActivity;IIII)V

    iput-object v6, p0, Lorg/telegram/ui/GradientHeaderActivity;->darkGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x64

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientTextureBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientCanvas:Landroid/graphics/Canvas;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->headerBgPaint:Landroid/graphics/Paint;

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->darkColors:Z

    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GradientHeaderActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->firstViewHeight:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/GradientHeaderActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->firstViewHeight:I

    return p1
.end method

.method static synthetic access$024(Lorg/telegram/ui/GradientHeaderActivity;F)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->firstViewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->firstViewHeight:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GradientHeaderActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->isDialogVisible:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GradientHeaderActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->inc:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/GradientHeaderActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->inc:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GradientHeaderActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    return p0
.end method

.method static synthetic access$1416(Lorg/telegram/ui/GradientHeaderActivity;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    return v0
.end method

.method static synthetic access$1424(Lorg/telegram/ui/GradientHeaderActivity;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GradientHeaderActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->minusHeaderHeight:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->headerBgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GradientHeaderActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->totalProgress:F

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/GradientHeaderActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->totalProgress:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/GradientHeaderActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->progressToFull:F

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/GradientHeaderActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->progressToFull:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/GradientHeaderActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->currentYOffset:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/GradientHeaderActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->currentYOffset:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GradientHeaderActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/GradientHeaderActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;->updateBackgroundImage()V

    return-void
.end method

.method private updateBackgroundImage()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->gradientCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateColors()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->headerBgPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v4, 0x3c

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->whiteBackground:Z

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->access$1900(Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v2, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    iget-object v0, v0, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;->updateBackgroundImage()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public applyScrolledPosition()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition(Z)V

    return-void
.end method

.method public applyScrolledPosition(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    :cond_1
    return-void
.end method

.method protected configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;->setData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected abstract createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end method

.method protected createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/GradientHeaderActivity$ContentView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/GradientHeaderActivity$ContentView;-><init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/GradientHeaderActivity$8;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/GradientHeaderActivity$8;-><init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget v2, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    iput v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v2, Lorg/telegram/ui/GradientHeaderActivity$4;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/GradientHeaderActivity$4;-><init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/high16 v2, 0x42880000    # 68.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->statusBarHeight:I

    add-int/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_2

    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v2, v1, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setFixedLastItemHeight()V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/GradientHeaderActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GradientHeaderActivity$5;-><init>(Lorg/telegram/ui/GradientHeaderActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lorg/telegram/ui/GradientHeaderActivity$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GradientHeaderActivity$6;-><init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->backgroundView:Lorg/telegram/ui/GradientHeaderActivity$BackgroundView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/GradientHeaderActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GradientHeaderActivity$7;-><init>(Lorg/telegram/ui/GradientHeaderActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setForceSkipTouches(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;->updateColors()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method protected drawActionBarShadow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Lorg/telegram/ui/GradientHeaderActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GradientHeaderActivity$3;-><init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 14

    new-instance v0, Lorg/telegram/ui/GradientHeaderActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GradientHeaderActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GradientHeaderActivity;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackgroundOverlay:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient1:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStarGradient2:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isActionBarCrossfadeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->whiteBackground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->updateDialogVisibility(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method public saveScrollPosition()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_1
    if-eqz v1, :cond_2

    iput v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    :cond_2
    return-void
.end method

.method public setDarkGradientLocation(FF)Landroid/graphics/Paint;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->darkGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->progress:F

    mul-float v1, v1, v2

    sub-float v5, p1, v1

    neg-float v6, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->darkGradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public setMinusHeaderHeight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->minusHeaderHeight:I

    return-void
.end method

.method public setWhiteBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->whiteBackground:Z

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->updateDialogVisibility(Z)V

    return-object p1
.end method

.method protected updateDialogVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->isDialogVisible:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->isDialogVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
