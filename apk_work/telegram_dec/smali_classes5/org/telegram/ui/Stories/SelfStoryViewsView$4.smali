.class Lorg/telegram/ui/Stories/SelfStoryViewsView$4;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$rI5OhLHjsORBJxvM7zSURaPfBhg(Lorg/telegram/ui/Stories/SelfStoryViewsView$4;Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->lambda$instantiateItem$0(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateSharedState()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    move-object p2, p3

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stories/SelfStoryViewsView$4$1;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->sharedFilterState:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    new-instance v5, Lorg/telegram/ui/Stories/SelfStoryViewsView$4$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView$4;)V

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsView$4$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView$4;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$200(Lorg/telegram/ui/Stories/SelfStoryViewsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$300(Lorg/telegram/ui/Stories/SelfStoryViewsView;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    invoke-virtual {v6, v0, v1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setStoryItem(JLorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    invoke-virtual {v6, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setListBottomPadding(F)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
