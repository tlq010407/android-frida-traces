.class public Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorAlert"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;,
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;,
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;,
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private animationInProgress:Z

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomSaveLayout:Landroid/widget/FrameLayout;

.field private colorChangeAnimation:Landroid/animation/AnimatorSet;

.field private colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private ignoreTextChange:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private previousScrollPosition:I

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private startedColorChange:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;

.field private topBeforeSwitch:I


# direct methods
.method public static synthetic $r8$lambda$6xQTnnmj5Y3ngcEq6-k_s81GBCk(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJUmrtfCUXoTPHAiD8Jn-XFow54(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6RvopFy2TYnkxnrX4Nfoi9cgLE(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OqPLqwKBDNsx96uUbeGecDrK7vU(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vqu1h1faAbamf_CGAf7QeoX6aAo(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mg14mEyPyo7VUYa0E80TTnDjOTo(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/view/View;

    iput-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    new-array v4, v4, [Landroid/animation/AnimatorSet;

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Lorg/telegram/ui/Components/ThemeEditorView;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v8, 0x33

    invoke-static {v6, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Lorg/telegram/ui/Components/ThemeEditorView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v7, 0xf000000

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v5, v5, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    move-object/from16 v10, p3

    invoke-direct {v9, v0, v2, v10}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v4, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v9, -0xa0909

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$3;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v4, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/high16 v13, 0x42500000    # 52.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    invoke-direct {v1, v6, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v9, v4, v5

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, v5

    const/high16 v9, 0x12000000

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, v5

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v5

    invoke-virtual {v4, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x3a

    invoke-static {v6, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-static {v6, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v10

    const/16 v11, 0x53

    invoke-direct {v1, v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v10, v7, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v9, v9, v3

    invoke-virtual {v7, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    const/16 v9, 0x30

    invoke-static {v6, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const v10, -0xe65818

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v12, 0x11

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v13, 0x2f000000

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v14, 0x41900000    # 18.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v1, v15, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v9, Lorg/telegram/messenger/R$string;->CloseEditor:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    const/4 v15, -0x2

    invoke-static {v15, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v1, v9, v5, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v9, Lorg/telegram/messenger/R$string;->SaveTheme:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    const/16 v11, 0x35

    invoke-static {v15, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v9, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v8, 0x53

    const/16 v9, 0x30

    invoke-static {v6, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v4, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v8, 0x33

    invoke-static {v15, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-static {v15, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v8, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v8, Lorg/telegram/messenger/R$string;->Default:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x33

    invoke-static {v15, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v4, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v2, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x33

    invoke-static {v15, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->startedColorChange:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->startedColorChange:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorChangeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->previousScrollPosition:I

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->topBeforeSwitch:I

    return p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->getCurrentTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z

    return p1
.end method

.method private getCurrentTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    sub-int/2addr v3, v1

    return v3

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1102(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4902(Lorg/telegram/ui/Components/ThemeEditorView;I)I

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$5200(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->startEditing()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setColor(I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4700(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->close()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setPreviousColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDefaultColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, p1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private setColorPickerVisible(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v7, 0x8

    const-string v10, "scrollOffsetY"

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz p1, :cond_0

    iput-boolean v11, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->animationInProgress:Z

    iget-object v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {v15, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v13}, Landroid/view/View;->setAlpha(F)V

    iget v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    iput v15, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->previousScrollPosition:I

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v11, [F

    aput v12, v1, v14

    invoke-static {v8, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    new-array v2, v11, [F

    aput v12, v2, v14

    invoke-static {v8, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v12, v11, [F

    aput v13, v12, v14

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    new-array v3, v11, [F

    aput v13, v3, v14

    invoke-static {v12, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v12, v12, v14

    new-array v4, v11, [F

    aput v13, v4, v14

    invoke-static {v12, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    new-array v5, v11, [F

    aput v13, v5, v14

    invoke-static {v12, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    new-array v6, v11, [F

    aput v13, v6, v14

    invoke-static {v12, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    filled-new-array {v9}, [I

    move-result-object v9

    invoke-static {v0, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v14

    aput-object v2, v7, v11

    const/4 v1, 0x2

    aput-object v8, v7, v1

    const/4 v1, 0x3

    aput-object v3, v7, v1

    const/4 v1, 0x4

    aput-object v4, v7, v1

    const/4 v1, 0x5

    aput-object v5, v7, v1

    const/4 v1, 0x6

    aput-object v6, v7, v1

    const/4 v1, 0x7

    aput-object v9, v7, v1

    invoke-virtual {v15, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v15, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$5;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v15, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4600(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4600(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/LaunchActivity;->rebuildAllFragments(Z)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4700(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    invoke-static {v1, v14, v14, v14}, Lorg/telegram/ui/ActionBar/Theme;->saveCurrentTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    iput-boolean v11, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->animationInProgress:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [F

    aput v13, v4, v14

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomLayout:Landroid/widget/FrameLayout;

    new-array v5, v11, [F

    aput v13, v5, v14

    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v11, [F

    aput v12, v6, v14

    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    new-array v8, v11, [F

    aput v12, v8, v14

    invoke-static {v6, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->shadow:[Landroid/view/View;

    aget-object v8, v8, v14

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_0
    new-array v9, v11, [F

    aput v13, v9, v14

    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    new-array v13, v11, [F

    aput v12, v13, v14

    invoke-static {v9, v3, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->bottomSaveLayout:Landroid/widget/FrameLayout;

    new-array v15, v11, [F

    aput v12, v15, v14

    invoke-static {v13, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->previousScrollPosition:I

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-static {v0, v10, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v14

    aput-object v4, v7, v11

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const/4 v2, 0x4

    aput-object v8, v7, v2

    const/4 v2, 0x5

    aput-object v9, v7, v2

    const/4 v2, 0x6

    aput-object v3, v7, v2

    const/4 v2, 0x7

    aput-object v10, v7, v2

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$6;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$4900(Lorg/telegram/ui/Components/ThemeEditorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    return-void
.end method

.method private updateLayout()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->animationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->animationInProgress:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    if-le v0, v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->runShadowAnimation(IZ)V

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->runShadowAnimation(IZ)V

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setScrollOffsetY(I)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissInternal()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;->access$200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchField:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;->access$200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setScrollOffsetY(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->scrollOffsetY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
