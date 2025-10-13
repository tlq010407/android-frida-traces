.class public abstract Lorg/telegram/ui/Components/HashtagHistoryView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private animation:Landroid/animation/AnimatorSet;

.field private currentAccount:I

.field private emptyImage:Landroid/widget/ImageView;

.field private emptyText:Landroid/widget/TextView;

.field public emptyView:Landroid/widget/FrameLayout;

.field private history:Ljava/util/ArrayList;

.field private recyclerView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$5aLkB4S7nkCy6f3OdDaXHR3hOmk(Lorg/telegram/ui/Components/HashtagHistoryView;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/HashtagHistoryView;->lambda$onLongClick$0(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$P5LrZoevB5oDx91WvgPdqh4z-eQ(Lorg/telegram/ui/Components/HashtagHistoryView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/HashtagHistoryView;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGa634B1mVooeZzsmlMaWWDERwQ(Lorg/telegram/ui/Components/HashtagHistoryView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/HashtagHistoryView;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8qBixMZJFkja1IqyxyBl-8FF_Y(Lorg/telegram/ui/Components/HashtagHistoryView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/HashtagHistoryView;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;)V

    new-instance v6, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;)V

    new-instance v7, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;)V

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->recyclerView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance p3, Lorg/telegram/ui/Components/HashtagHistoryView$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/HashtagHistoryView$1;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->recyclerView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/UniversalAdapter;

    iput-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->recyclerView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p0, p3, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyView:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyImage:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyImage:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyImage:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->large_hashtags:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyImage:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x31

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyText:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyText:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->HashtagSearchPlaceholder:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyView:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyText:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyView:Landroid/widget/FrameLayout;

    const/16 p3, 0xd2

    const/4 v0, -0x2

    invoke-static {p3, v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->recyclerView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HashtagHistoryView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/HashtagHistoryView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "$"

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_cashtag:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_hashtag:I

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3, v2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_clear_recent:I

    sget v1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onLongClick$0(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/HashtagSearchController;->removeHashtagFromHistory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagHistoryView;->update()V

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/HashtagSearchController;->clearHistory()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagHistoryView;->update()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/HashtagHistoryView;->onClick(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 1

    const/4 p2, 0x0

    const/4 p3, 0x1

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-eqz p1, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->history:Ljava/util/ArrayList;

    sub-int/2addr p1, p3

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p5, Lorg/telegram/messenger/R$string;->ClearSearchSingleAlertTitle:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p5, Lorg/telegram/messenger/R$string;->ClearSearchSingleHashtagAlertText:I

    new-array v0, p3, [Ljava/lang/Object;

    aput-object p1, v0, p2

    invoke-static {p5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->ClearSearchRemove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p5, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1}, Lorg/telegram/ui/Components/HashtagHistoryView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;Ljava/lang/String;)V

    invoke-virtual {p4, p2, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return p3

    :cond_0
    return p2
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onClick(Ljava/lang/String;)V
.end method

.method protected onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagHistoryView;->isShowing()Z

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    new-array v5, v0, [F

    aput v4, v5, v1

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/HashtagHistoryView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/HashtagHistoryView$2;-><init>(Lorg/telegram/ui/Components/HashtagHistoryView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->animation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
