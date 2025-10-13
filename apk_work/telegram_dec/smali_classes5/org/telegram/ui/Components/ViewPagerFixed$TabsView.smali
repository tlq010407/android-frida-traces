.class public abstract Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;
    }
.end annotation


# instance fields
.field private activeTextColorKey:I

.field private adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

.field private additionalTabWidth:I

.field private allTabsWidth:I

.field private animatingIndicator:Z

.field private animatingIndicatorProgress:F

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationTime:F

.field private backgroundColorKey:I

.field private counterPaint:Landroid/graphics/Paint;

.field private crossfadeAlpha:F

.field private crossfadeBitmap:Landroid/graphics/Bitmap;

.field private crossfadePaint:Landroid/graphics/Paint;

.field private currentPosition:I

.field private delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

.field private deletePaint:Landroid/graphics/Paint;

.field private editingAnimationProgress:F

.field private editingForwardAnimation:Z

.field private editingStartAnimationProgress:F

.field private hideProgress:F

.field private idToPosition:Landroid/util/SparseIntArray;

.field private ignoreLayout:Z

.field private indicatorProgress2:F

.field private interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidated:Z

.field private isEditing:Z

.field private isInHiddenMode:Z

.field private lastAnimationTime:J

.field lastDrawnIndicatorW:F

.field lastDrawnIndicatorX:F

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private manualScrollingToId:I

.field private manualScrollingToPosition:I

.field private orderChanged:Z

.field private overrideFromW:F

.field private overrideFromX:F

.field private positionToId:Landroid/util/SparseIntArray;

.field private positionToWidth:Landroid/util/SparseIntArray;

.field private positionToX:Landroid/util/SparseIntArray;

.field private preTabClick:Lorg/telegram/messenger/Utilities$Callback2Return;

.field private prevLayoutWidth:I

.field private previousId:I

.field private previousPosition:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollingToChild:I

.field private selectedTabId:I

.field private selectorColorKey:I

.field private selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final selectorPaint:Landroid/graphics/Paint;

.field private selectorType:I

.field private tabLineColorKey:I

.field public tabMarginDp:I

.field private tabs:Ljava/util/ArrayList;

.field tabsAnimator:Landroid/animation/ValueAnimator;

.field private textCounterPaint:Landroid/text/TextPaint;

.field private textPaint:Landroid/text/TextPaint;

.field private unactiveTextColorKey:I


# direct methods
.method public static synthetic $r8$lambda$5v7s2GIhG_3NHaS5AJTMTk81JS0(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$cIfBvx2uRnHBZN_4FVf-P1QuhrQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lambda$setIsEditing$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s9XQkjewyLUWZfL8qB0UQG4NpQk(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lambda$scrollToTab$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    new-instance v10, Landroid/text/TextPaint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->counterPaint:Landroid/graphics/Paint;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    const/16 v10, 0x10

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    const/4 v10, -0x1

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    iput v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    iput v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    iput v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->activeTextColorKey:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    iput v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->unactiveTextColorKey:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    iput v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorColorKey:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iput v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:I

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    new-instance v12, Landroid/util/SparseIntArray;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    new-instance v12, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorPaint:Landroid/graphics/Paint;

    iput-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorType:I

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    const/high16 v14, 0x41500000    # 13.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    const/16 v14, 0x9

    if-ne v3, v14, :cond_0

    const/high16 v15, 0x41600000    # 14.0f

    goto :goto_0

    :cond_0
    const/high16 v15, 0x41700000    # 15.0f

    :goto_0
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x0

    invoke-direct {v12, v15, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v14, 0x8

    new-array v14, v14, [F

    aput v12, v14, v8

    aput v12, v14, v11

    aput v12, v14, v7

    aput v12, v14, v6

    const/4 v12, 0x4

    aput v9, v14, v12

    aput v9, v14, v13

    aput v9, v14, v5

    const/4 v12, 0x7

    aput v9, v14, v12

    invoke-virtual {v15, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    new-instance v9, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v7}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_1

    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    if-ne v3, v6, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorColorKey:I

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$3;

    invoke-direct {v5, v0, v1, v8, v8}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;IZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v6, v8, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    new-instance v4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/16 v1, 0x9

    if-ne v3, v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v2, v3, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_3
    const/4 v3, -0x1

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    goto :goto_3

    :goto_4
    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->saveFromValues()V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->editingAnimationProgress:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousId:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->activeTextColorKey:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->unactiveTextColorKey:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorType:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textCounterPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->editingStartAnimationProgress:F

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->backgroundColorKey:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->counterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->deletePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastAnimationTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return p1
.end method

.method static synthetic access$3316(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->canPerformActions()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;

    iget p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onSamePageSelected()V

    return-void

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->preTabClick:Lorg/telegram/messenger/Utilities$Callback2Return;

    if-eqz p3, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    move-result-object p4

    iget p4, p4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Lorg/telegram/messenger/Utilities$Callback2Return;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    return-void
.end method

.method private synthetic lambda$scrollToTab$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setAnimationIdicatorProgress(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setIsEditing$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private saveFromValues()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorX:F

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->overrideFromX:F

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorW:F

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->overrideFromW:F

    return-void
.end method

.method private scrollToChild(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    if-eq v0, p1, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabsWidths()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-ne v2, v1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    if-eq v2, v1, :cond_1

    if-ne v2, p1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;-><init>(ILjava/lang/CharSequence;)V

    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, p4, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-boolean p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_0

    const p4, 0x3dcccccd    # 0.1f

    add-float/2addr v2, p4

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float p4, v2, v0

    if-lez p4, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    goto :goto_0

    :cond_0
    if-nez p4, :cond_2

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpl-float v2, p4, v1

    if-eqz v2, :cond_2

    const v2, 0x3df5c28f    # 0.12f

    sub-float/2addr p4, v2

    iput p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    cmpg-float p4, p4, v1

    if-gez p4, :cond_1

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-boolean p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    const/4 v2, -0x1

    if-nez p4, :cond_4

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    if-eq p4, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    invoke-virtual {p4, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p4

    if-eqz p4, :cond_7

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$3900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    add-float/2addr v4, p4

    float-to-int p4, v4

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p4

    if-eq p4, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    if-eqz v8, :cond_6

    int-to-float p4, v6

    sub-int/2addr v7, v6

    int-to-float v2, v7

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v2, v2, v6

    add-float/2addr p4, v2

    float-to-int p4, p4

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p4, v2

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    int-to-float v8, v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v6, v6, v7

    add-float/2addr v8, v6

    float-to-int v6, v8

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr v6, p4

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr v6, p4

    move p4, v6

    :goto_3
    int-to-float v2, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    const/4 p4, 0x0

    :goto_4
    int-to-float p4, p4

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr p4, v4

    float-to-int p4, p4

    if-eqz v2, :cond_a

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, p4, v7

    int-to-float v7, v7

    div-float/2addr v4, v0

    sub-float v8, p2, v4

    add-int/2addr p4, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p4, v2

    int-to-float p4, p4

    add-float/2addr p2, v4

    invoke-virtual {v5, v7, v8, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, p2, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    int-to-float v4, p4

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorX:F

    int-to-float v5, v2

    iput v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorW:F

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_9

    invoke-static {v4, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    float-to-int p4, p4

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->lastDrawnIndicatorW:F

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->indicatorProgress2:F

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    float-to-int v2, v0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, p4

    int-to-float p2, p2

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v6, v4

    add-float/2addr p2, v6

    float-to-int p2, p2

    invoke-virtual {v0, p4, v5, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    iget p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeAlpha:F

    mul-float p4, p4, v3

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadeBitmap:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->crossfadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    return p3
.end method

.method public finishAddingTabs()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getAnimatingIndicatorProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    return v0
.end method

.method public getCurrentTabId()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    return v0
.end method

.method public getFirstTabId()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getPreviousPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    return v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public hide(ZZ)V
    .locals 5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isInHiddenMode:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0xdc

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->hideProgress:F

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isAnimatingIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->prevLayoutWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_0

    iput p4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->prevLayoutWidth:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorType:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    if-ge v2, v0, :cond_1

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->additionalTabWidth:I

    if-eq v1, v0, :cond_3

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->updateTabsWidths()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->invalidated:Z

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public removeTabs()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->allTabsWidth:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTab(II)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollingToChild:I

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousPosition:I

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->previousId:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->needsTab(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    :cond_4
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animationTime:F

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicator:Z

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageSelected(IZ)V

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public selectTab(IIF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v2, p3, v0

    if-lez v2, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    const/4 v2, -0x1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->needsTab(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    goto :goto_2

    :cond_3
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    goto :goto_3

    :cond_4
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    :goto_3
    iput p3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    cmpl-float p1, p3, v0

    if-ltz p1, :cond_5

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->invalidateBlur()V

    :cond_6
    return-void
.end method

.method public selectTabWithId(IF)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v4, p2, v2

    if-lez v4, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToChild(I)V

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToPosition:I

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->manualScrollingToId:I

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->currentPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectedTabId:I

    :cond_4
    return-void
.end method

.method public setAnimationIdicatorProgress(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->animatingIndicatorProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->delegate:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    return-void
.end method

.method public setIsEditing(Z)V
    .locals 6

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->editingForwardAnimation:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isEditing:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->orderChanged:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->orderChanged:Z

    :cond_1
    return-void
.end method

.method public setPreTabClick(Lorg/telegram/messenger/Utilities$Callback2Return;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2Return<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->preTabClick:Lorg/telegram/messenger/Utilities$Callback2Return;

    return-void
.end method

.method public updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabLineColorKey:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
