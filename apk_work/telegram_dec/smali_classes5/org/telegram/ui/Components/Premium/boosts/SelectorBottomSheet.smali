.class public Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;
    }
.end annotation


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final allSelectedObjects:Ljava/util/HashMap;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private final countriesLetters:Ljava/util/List;

.field private final countriesList:Ljava/util/List;

.field private final countriesMap:Ljava/util/Map;

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

.field private final items:Ljava/util/ArrayList;

.field private listPaddingTop:I

.field private final oldItems:Ljava/util/ArrayList;

.field private onCloseClick:Ljava/lang/Runnable;

.field private final openedIds:Ljava/util/HashSet;

.field private final peers:Ljava/util/ArrayList;

.field private query:Ljava/lang/String;

.field private final remoteSearchRunnable:Ljava/lang/Runnable;

.field private final searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

.field private final sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

.field private final selectedIds:Ljava/util/HashSet;

.field private selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

.field private selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

.field private final statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private top:I

.field private type:I

.field private final users:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$-ORJU7xZ8z_aowMb7PJaoFX14r0(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0V6DHB8VE3emYK_IParHL0AjcbQ(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMXyX0bpR1GQ88ZmjUd2n4zHP6s(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$loadData$7(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B_zS2dsHTnzpnaQ2qIzr1k_n7N0(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$prepare$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$DVj2HuRKVzr5GDJ9vmx6O8XUVS8(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dq3ULzRUqzqOxiV4UuaqkxZ-3Qo(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$loadData$8(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FNF3LzV7cp2NghAtn4qJGZ8PdAo(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;ZLandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$loadData$9(ZLandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPKLsZahMvfzimmFmXHvb6bMb5U(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$loadData$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NXJrcbs7WP7k4U1ZHxSPUPHGvRs(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->clearSearchAfterSelectChannel()V

    return-void
.end method

.method public static synthetic $r8$lambda$XKNlLjbtIUHOVoOaTfd_9uPnpS8(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDX_2tMMymqonXm2t4d0vgzeTO0(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bjH_gMtY_tvgrCDXNoGinXWjCcA(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$pGDc838R9EjAnw2iVu5MbJScHog(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$updateSectionCell$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9-tZrG2dHginL-I047fMFqvlto(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$new$5(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOPx9CNYNi2wciVKm_Y6d_-mEr4(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$hasChanges$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$umLAgW14eQpc4R0idsc3t05Xvvc(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->lambda$hasChanges$10()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZJ)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->users:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesMap:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesLetters:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesList:Ljava/util/List;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    const/high16 v4, 0x43060000    # 134.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->listPaddingTop:I

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v5, p3

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x15e

    move-object v6, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setCloseImageVisible(Z)V

    iget-object v6, v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v7, v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setOnSearchTextChange(Lorg/telegram/messenger/Utilities$Callback;)V

    new-instance v8, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v10, v11}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateSection()V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x37

    move v13, v15

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v10, -0x1

    move v13, v15

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v8, v10, v11, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0x30

    const/16 v8, 0x57

    const/4 v10, -0x1

    invoke-static {v10, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x57

    move v13, v15

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    iget-object v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setData(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v4, v1, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v6, 0x15e

    invoke-virtual {v2, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    invoke-direct {v0, v3, v3, v9}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->loadData(IZLjava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3, v9}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->loadData(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->loadData(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->listPaddingTop:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->listPaddingTop:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method private clearSearchAfterSelectChannel()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->getMyChannels(J)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    :cond_0
    return-void
.end method

.method private drawFilledStatusBar(Landroid/graphics/Canvas;I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    int-to-float v1, v1

    int-to-float p2, p2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float p2, p2, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private isSearching()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$hasChanges$10()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->save(Z)V

    return-void
.end method

.method private synthetic lambda$hasChanges$11()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$loadData$6(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->scrollToTop(Z)V

    return-void
.end method

.method private synthetic lambda$loadData$7(ZLjava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->scrollToTop(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadData$8(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$loadData$9(ZLandroid/util/Pair;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesMap:Ljava/util/Map;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesLetters:Ljava/util/List;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesMap:Ljava/util/Map;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-static {p1, p2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->scrollToTop(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->save(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$3(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;IFF)V
    .locals 10

    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCell;

    const/4 p3, 0x0

    const-wide/16 v0, 0x1

    const/4 p4, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->save(Z)V

    goto/16 :goto_4

    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz v3, :cond_1

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_1
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p2

    :goto_1
    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    if-eq v3, v2, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    int-to-long v6, v3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v8

    add-long/2addr v8, v0

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->showMaximumUsersToast()V

    return-void

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-virtual {v3, v2, v6, v7, p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {p0, v2, p4}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    if-eqz p2, :cond_7

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;J)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-static {p2, v3, v6, v7, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showPrivateChannelAlert(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->clearSearchAfterSelectChannel()V

    :cond_8
    :goto_4
    instance-of p2, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    if-eqz p2, :cond_c

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->getCountry()Lorg/telegram/tgnet/TLRPC$TL_help_country;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayCountriesMax()J

    move-result-wide v5

    add-long/2addr v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesList:Ljava/util/List;

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->isSearching()Z

    move-result p1

    if-eqz p1, :cond_b

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p4, p4}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    goto :goto_6

    :cond_b
    invoke-direct {p0, v2, p4}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    :cond_c
    :goto_6
    return-void
.end method

.method private synthetic lambda$prepare$12()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateSectionCell$13(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->spansContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;->removeAllSpans(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private loadData(IZLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Z)V

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadCountries(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    const/4 v2, 0x0

    const/16 v4, 0x32

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->searchChats(JILjava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Z)V

    const/4 v4, 0x0

    const/16 v5, 0x32

    const/4 v2, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadChatParticipants(JILjava/lang/String;IILorg/telegram/messenger/Utilities$Callback;)V

    :goto_0
    return-void
.end method

.method private matchLocal(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onSearch(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateItems(ZZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->scrollToTop(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->isSearching()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->getMyChannels(J)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method private save(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;->onCountrySelected(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;->onChatsSelected(Ljava/util/List;Z)V

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;->onUsersSelected(Ljava/util/List;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private showMaximumUsersToast()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayCountriesMax()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "BoostingSelectUpToWarningCountriesPlural"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "BoostingSelectUpToWarningChannelsGroupsPlural"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->BoostingSelectUpToWarningUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;->onShowToast(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateActionButton(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->BoostingSaveRecipients:I

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v3, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method

.method private updateCheckboxes(Z)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, v3

    if-ltz v2, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-boolean v5, v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    invoke-virtual {v4, v5, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v2

    const/16 v6, 0xc8

    if-le v2, v6, :cond_1

    const v5, 0x3e99999a    # 0.3f

    :cond_1
    invoke-virtual {v4, v5, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    :cond_2
    instance-of v2, v1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->getCountry()Lorg/telegram/tgnet/TLRPC$TL_help_country;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->setChecked(ZZ)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateList(ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateItems(ZZ)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateCheckboxes(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateActionButton(Z)V

    return-void
.end method

.method private updateSection()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_2

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayCountriesMax()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "BoostingSelectUpToCountriesPlural"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setLayerHeight(I)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BoostingSelectUpToGroupChannelPlural"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setLayerHeight(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Subscribers"

    goto :goto_1

    :cond_3
    const-string v0, "Members"

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSectionCell(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    sget v0, Lorg/telegram/messenger/R$string;->UsersDeselectAll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 3

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    return-object p1
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public dismissInternal()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingSelectCountry:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->BoostingAddChannelOrGroup:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->GiftPremium:I

    goto :goto_0
.end method

.method public getTop()I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->statusBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasChanges()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showUnsavedChanges(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateItems(ZZ)V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 2

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->top:I

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    int-to-float v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->drawFilledStatusBar(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public prepare(Ljava/util/List;I)V
    .locals 5

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->getMyChannels(J)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->users:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    neg-long v1, v1

    goto :goto_3

    :cond_2
    const-wide/16 v1, 0x0

    :goto_3
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_3

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v1, v1

    :cond_3
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_4

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    :cond_4
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_5

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_5
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-eqz v3, :cond_6

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->openedIds:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->spansContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;->removeAllSpans(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesList:Ljava/util/List;

    invoke-virtual {p1, p2, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateSection()V

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateList(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateActionButton(Z)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->scrollToTop(Z)V

    return-void
.end method

.method public scrollToTop(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public setOnCloseClick(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setSelectedObjectsListener(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedObjectsListener:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;

    return-void
.end method

.method public updateItems(ZZ)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_random:I

    sget v3, Lorg/telegram/messenger/R$string;->GiveawayChooseUsersRandomly:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asButton(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->sectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->countriesMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->isSearching()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->query:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->matchLocal(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asCountry(Lorg/telegram/tgnet/TLRPC$TL_help_country;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asLetter(Ljava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asNoUsers()Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float v0, v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asPad(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->updateSectionCell(Z)V

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    :goto_3
    return-void
.end method
