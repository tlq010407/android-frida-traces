.class public abstract Lorg/telegram/ui/Cells/WallpaperCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;
    }
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private currentType:I

.field public drawStubBackground:Z

.field private framePaint:Landroid/graphics/Paint;

.field private isBottom:Z

.field private isTop:Z

.field size:I

.field private spanCount:I

.field private wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;


# direct methods
.method public static synthetic $r8$lambda$8dpyGrlVl1hGDs0tJ92aFiC74ww(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell;->lambda$new$1(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q_QRfw5jCUdMn0jn1d36fb8TnhQ(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell;->lambda$new$0(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/WallpaperCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->drawStubBackground:Z

    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    new-array p2, p2, [Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    array-length v2, v1

    if-ge p2, v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Landroid/content/Context;)V

    aput-object v2, v1, p2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, p2}, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, p2}, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->framePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->background_selected:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->backgroundPaint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->framePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->circlePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$000(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/WallpaperCell;->onWallpaperClick(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$000(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/WallpaperCell;->onWallpaperLongClick(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge p4, p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p5, p5, p4

    add-int v0, p2, p3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p5, p2, p1, v0, v1}, Landroid/view/View;->layout(IIII)V

    const/high16 p5, 0x40c00000    # 6.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p3, p5

    add-int/2addr p2, p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    iget p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->size:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->size:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr p2, v3

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    sub-int/2addr p2, v3

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x1c

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    iget v3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    div-int v3, p2, v3

    iget v4, p0, Lorg/telegram/ui/Cells/WallpaperCell;->currentType:I

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    const/high16 v6, 0x41600000    # 14.0f

    if-eqz v5, :cond_3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v5, v4

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isBottom:Z

    if-eqz v7, :cond_4

    const/high16 v0, 0x41600000    # 14.0f

    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p0, p1, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge v2, p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v0, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_5

    move p1, p2

    goto :goto_4

    :cond_5
    move p1, v3

    :goto_4
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/view/View;->measure(II)V

    sub-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected abstract onWallpaperClick(Ljava/lang/Object;I)V
.end method

.method protected onWallpaperLongClick(Ljava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setChecked(IZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->setChecked(ZZ)V

    return-void
.end method

.method public setParams(IZZ)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isBottom:Z

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    array-length v1, v0

    if-ge p3, v1, :cond_1

    aget-object v0, v0, p3

    if-ge p3, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->clearAnimation()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->size:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->size:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWallpaper(IILjava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->currentType:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    if-nez p3, :cond_0

    aget-object p1, p1, p2

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->clearAnimation()V

    goto :goto_0

    :cond_0
    aget-object p1, p1, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->setWallpaper(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method
