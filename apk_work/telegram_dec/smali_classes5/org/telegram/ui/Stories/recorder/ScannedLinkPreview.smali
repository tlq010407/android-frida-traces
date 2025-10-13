.class public Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;
    }
.end annotation


# instance fields
.field private final animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final blurLocation:[I

.field private blurRenderNode:Ljava/lang/Object;

.field private blurView:Landroid/view/View;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private clickListener:Lorg/telegram/messenger/Utilities$Callback;

.field private final clipBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private final currentAccount:I

.field private currentCancel:Ljava/lang/Runnable;

.field private currentLink:Ljava/lang/String;

.field private hasImage:Z

.field private hasResolved:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

.field private final resolvedListener:Ljava/lang/Runnable;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private final thisLocation:[I

.field private title:Lorg/telegram/ui/Components/Text;

.field private touch:Z


# direct methods
.method public static synthetic $r8$lambda$nRxLRc5cdHGIpB86bm4Y8RKUdWA(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wiYEV2WTsyApUEs3rpLBoo8cfSQ(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->lambda$setLink$0(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->open(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setLink$0(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setup()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private setup()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {v1, v0, v3, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->settings_arrow:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->setImage(Lorg/telegram/messenger/ImageReceiver;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v9, 0x0

    cmpg-float v2, v8, v9

    if-gtz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v10, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v13, v2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v3, :cond_2

    add-float v3, v14, v11

    add-float/2addr v3, v14

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v3, v10

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    add-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v3, :cond_3

    move v3, v11

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    add-float/2addr v5, v13

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v1

    add-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    mul-float v1, v1, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v8

    mul-float v4, v4, v6

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float/2addr v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v3

    div-float/2addr v15, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    div-float/2addr v9, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    div-float/2addr v2, v12

    invoke-virtual {v5, v6, v15, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/high16 v5, 0x41400000    # 12.0f

    if-lt v2, v3, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurRenderNode:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v9, v15, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    const/16 v9, 0x1f

    invoke-virtual {v7, v3, v6, v9}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurLocation:[I

    const/4 v6, 0x0

    aget v9, v3, v6

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->thisLocation:[I

    aget v6, v12, v6

    sub-int/2addr v9, v6

    int-to-float v6, v9

    const/4 v9, 0x1

    aget v3, v3, v9

    aget v9, v12, v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {v7, v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x70000000

    :goto_2
    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x23000000

    goto :goto_2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v11, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v10

    add-float/2addr v4, v14

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v4, v2, v11, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    add-float/2addr v2, v13

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v12, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v3, :cond_6

    add-float v3, v14, v11

    add-float/2addr v3, v14

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    add-float/2addr v2, v3

    add-float v3, v2, v10

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v4, v12, v2

    const/4 v5, -0x1

    move-object/from16 v2, p1

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasImage:Z

    if-eqz v3, :cond_7

    add-float/2addr v11, v14

    add-float v9, v11, v14

    :cond_7
    add-float/2addr v2, v9

    add-float v3, v2, v10

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    add-float/2addr v12, v2

    add-float/2addr v12, v13

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v4, v12, v2

    const/high16 v2, -0x1000000

    const v5, -0x60000001

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v5

    move-object/from16 v2, p1

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    :cond_5
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1
.end method

.method public inTouch()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->touch:Z

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

.method public isResolved()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public setBlurRenderNode(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurView:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->blurRenderNode:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->sourceLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentLink:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentAccount:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;)V

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->resolve(ILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->currentCancel:Ljava/lang/Runnable;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolved:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview$ResolvedLink;->sourceLink:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->hasResolved:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setup()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->resolvedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_1
    return-void
.end method

.method public whenClicked(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method
