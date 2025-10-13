.class Lorg/telegram/ui/Components/TopicsTabsView$1;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private final linePaint:Landroid/graphics/Paint;

.field private final lineRect:Landroid/graphics/RectF;

.field private pinIcon:Landroid/graphics/drawable/Drawable;

.field private pinIconColor:I

.field private final pinnedBackgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->clip:Lorg/telegram/ui/GradientClip;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x140

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v3, 0x1a4

    invoke-direct {v0, p0, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawPinnedBackground(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->access$300(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinnedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIconColor:I

    if-eq v3, v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iput v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIconColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const v5, 0x402a3d71    # 2.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const v5, 0x415a8f5c    # 13.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const v5, 0x41451eb8    # 12.32f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->pinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animatedClip:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/16 v8, 0xff

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$1;->drawPinnedBackground(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TopicsTabsView;->access$000(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView;->access$100(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TopicsTabsView;->access$000(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/TopicsTabsView;->access$202(Lorg/telegram/ui/Components/TopicsTabsView;J)J

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TopicsTabsView;->access$100(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/TopicsTabsView;->access$002(Lorg/telegram/ui/Components/TopicsTabsView;J)J

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-eqz v7, :cond_3

    check-cast v6, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTopicId()J

    move-result-wide v7

    iget-object v9, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/TopicsTabsView;->access$100(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    move-object v3, v6

    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTopicId()J

    move-result-wide v7

    iget-object v9, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/TopicsTabsView;->access$200(Lorg/telegram/ui/Components/TopicsTabsView;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    move-object v4, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v3, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v3, v11

    invoke-virtual {v5, v6, v8, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v4, :cond_5

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v3, v5, v6, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->animateTab:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->lineRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    cmpl-float v3, v0, v1

    if-lez v3, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$1;->clip:Lorg/telegram/ui/GradientClip;

    invoke-virtual {v1, p1, v3, v2, v0}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
