.class public Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BottomPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Tab"
.end annotation


# instance fields
.field private active:Z

.field final clickRect:Landroid/graphics/RectF;

.field public customEndFrameEnd:I

.field public customEndFrameMid:I

.field public customFrameInvert:Z

.field final drawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private drawableColor:I

.field final i:I

.field final layout:Landroid/text/StaticLayout;

.field final layoutLeft:F

.field final layoutWidth:F

.field final nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final paint:Landroid/text/TextPaint;

.field final ripple:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/BottomPagerTabs;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    iput-object v8, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->this$0:Lorg/telegram/ui/Components/BottomPagerTabs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Landroid/text/TextPaint;

    const/4 v10, 0x1

    invoke-direct {v11, v10}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->paint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawableColor:I

    move/from16 v1, p2

    iput v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->i:I

    move/from16 v1, p4

    iput v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameMid:I

    move/from16 v1, p5

    iput v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameEnd:I

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v9, v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/BottomPagerTabs;->access$000(Lorg/telegram/ui/Components/BottomPagerTabs;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v4, Landroid/graphics/Point;->x:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v3

    move-object/from16 v10, p6

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layoutWidth:F

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    :cond_1
    iput v5, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layoutLeft:F

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/BottomPagerTabs;->access$000(Lorg/telegram/ui/Components/BottomPagerTabs;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BottomPagerTabs$Tab;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->active:Z

    return p0
.end method


# virtual methods
.method public customFrameInvert()Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customFrameInvert:Z

    return-object p0
.end method

.method public setActive(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customFrameInvert:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->active:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->this$0:Lorg/telegram/ui/Components/BottomPagerTabs;

    invoke-static {v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->access$100(Lorg/telegram/ui/Components/BottomPagerTabs;)[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->i:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameMid:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameMid:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameEnd:I

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameMid:I

    if-gt p2, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameMid:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customEndFrameEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    if-eqz p2, :cond_7

    :goto_1
    goto :goto_0

    :cond_7
    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->active:Z

    return-void
.end method

.method public setColor(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawableColor:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
