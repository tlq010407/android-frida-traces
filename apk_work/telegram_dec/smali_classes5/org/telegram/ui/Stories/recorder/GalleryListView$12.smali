.class Lorg/telegram/ui/Stories/recorder/GalleryListView$12;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method public static synthetic $r8$lambda$DxPO9Yrd6xM-L-wx96Ace6svnQQ(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->lambda$onSearchCollapse$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDtGFLesjEDrq_BqNYHk7fOCUaA(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->lambda$onSearchExpand$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSearchCollapse$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onSearchExpand$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v5, 0x3f800000    # 1.0f

    new-array v6, v0, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v0, [F

    aput v5, v7, v1

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v0, [F

    aput v5, v8, v1

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$600(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    const v9, 0x3f4ccccd    # 0.8f

    new-array v10, v0, [F

    aput v9, v10, v1

    invoke-static {v3, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v0, [F

    aput v9, v4, v1

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v0, [F

    aput v8, v4, v1

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v0, [F

    aput v5, v6, v1

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$1000(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-array v0, v0, [F

    aput v8, v0, v1

    invoke-static {v4, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x140

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onSearchExpand()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v5, 0x3f4ccccd    # 0.8f

    new-array v6, v0, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v0, [F

    aput v5, v7, v1

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v0, [F

    aput v7, v8, v1

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$600(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    new-array v9, v0, [F

    aput v8, v9, v1

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v0, [F

    aput v8, v4, v1

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v0, [F

    aput v8, v4, v1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$1000(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v0, [F

    aput v7, v4, v1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$1000(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/FrameLayout;

    move-result-object v3

    new-array v0, v0, [F

    aput v8, v0, v1

    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$700(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x140

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$1100(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->load(Ljava/lang/String;)V

    return-void
.end method
