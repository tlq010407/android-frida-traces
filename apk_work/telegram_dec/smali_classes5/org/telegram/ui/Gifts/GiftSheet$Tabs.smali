.class public Lorg/telegram/ui/Gifts/GiftSheet$Tabs;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tabs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;
    }
.end annotation


# instance fields
.field private animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final ceiledRect:Landroid/graphics/RectF;

.field private final flooredRect:Landroid/graphics/RectF;

.field private lastId:I

.field private final layout:Landroid/widget/LinearLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selected:I

.field private final selectedPaint:Landroid/graphics/Paint;

.field private final selectedRect:Landroid/graphics/RectF;

.field private final tabs:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$pxr5JRcoxM_ZyErkUeLv-H2RFw4(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;ILorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->lambda$set$0(ILorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->flooredRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->ceiledRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selectedRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selectedPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->lastId:I

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->layout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, p1, p2, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selected:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->flooredRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->ceiledRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selectedRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private synthetic lambda$set$0(ILorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public set(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->lastId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->lastId:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq p1, v3, :cond_4

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsTabText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p1, v5, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v4, 0x3d99999a    # 0.075f

    const v5, 0x3fb33333    # 1.4f

    invoke-static {p1, v4, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->layout:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    const/16 v6, 0x1a

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iput p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->selected:I

    if-nez v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float p2, p3

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1, p4}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$Tabs;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
