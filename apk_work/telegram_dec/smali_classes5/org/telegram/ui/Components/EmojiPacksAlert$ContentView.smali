.class Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;
    }
.end annotation


# instance fields
.field attached:Z

.field private lastOpen:Ljava/lang/Boolean;

.field lineDrawables:Ljava/util/ArrayList;

.field lineDrawablesTmp:Ljava/util/ArrayList;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private previewImageVisible:Z

.field private final previewImageVisibleT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

.field unusedArrays:Ljava/util/ArrayList;

.field unusedLineDrawables:Ljava/util/ArrayList;

.field viewsGroupedByLines:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lastOpen:Ljava/lang/Boolean;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedArrays:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, p1

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisibleT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->attached:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2100(Lorg/telegram/ui/Components/EmojiPacksAlert;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->applyDefaultShadow(Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2300(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2202(Lorg/telegram/ui/Components/EmojiPacksAlert;F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2400(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    const/4 v11, 0x0

    invoke-static {v1, v11, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v12, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float v7, v3, v6

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    iput-boolean v10, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisible:Z

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisibleT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisible:Z

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v13

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v7

    const v13, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v13

    const v13, 0x3f19999a    # 0.6f

    add-float/2addr v7, v13

    mul-float v7, v7, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v5

    sub-float v6, v1, v6

    div-float/2addr v3, v5

    sub-float/2addr v6, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    div-float v14, v7, v5

    sub-float/2addr v13, v14

    sub-float/2addr v6, v14

    invoke-virtual {v3, v13, v6, v7, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iput-object v12, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_4
    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v3, v13, v2

    const/high16 v6, 0x41600000    # 14.0f

    mul-float v3, v3, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v3

    invoke-virtual {v6, v7, v1, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->path:Landroid/graphics/Path;

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v6, v3, v3, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->path:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lastOpen:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_7

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lastOpen:Ljava/lang/Boolean;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2500(Lorg/telegram/ui/Components/EmojiPacksAlert;Z)V

    :cond_7
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2600(Lorg/telegram/ui/Components/EmojiPacksAlert;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v3, v11, v13}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v14, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v14

    invoke-virtual {v6, v1, v14, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2800(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v11

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v8, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v1, v1, v15

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->updatePressedProgress()V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v4

    if-nez v4, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v4, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2900(Lorg/telegram/ui/Components/EmojiPacksAlert;I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3000(Lorg/telegram/ui/Components/EmojiPacksAlert;I)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_7

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v7, 0x0

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    iget v5, v5, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;->position:I

    if-ne v5, v3, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_13
    move-object v5, v12

    :goto_b
    if-nez v5, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    goto :goto_c

    :cond_14
    new-instance v4, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;)V

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    :goto_c
    iput v3, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;->position:I

    invoke-virtual {v4}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    goto :goto_d

    :cond_15
    move-object v4, v5

    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v6, v1, v2

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v1, v4

    move-object/from16 v2, p1

    move-wide/from16 v3, v16

    move/from16 v19, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_9

    :cond_16
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    iput-object v12, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_f

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v13

    if-gez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    float-to-int v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    sub-float/2addr v13, v5

    mul-float v13, v13, v15

    float-to-int v5, v13

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v4

    sub-int v5, v1, v3

    sub-int v6, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v1, v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2300(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hidePreviewEmoji()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->attached:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Landroid/util/LongSparseArray;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_2
    return-void
.end method

.method public setPreviewEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->attached:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisible:Z

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageVisibleT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v5, v6, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v9, "140_140"

    const-string v11, "140_140"

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public updateEmojiDrawables()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1702(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    return-void
.end method
