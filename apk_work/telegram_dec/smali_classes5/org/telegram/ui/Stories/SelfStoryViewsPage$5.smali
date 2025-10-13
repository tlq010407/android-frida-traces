.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;
.super Lorg/telegram/ui/Components/SearchField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method public static synthetic $r8$lambda$j9E3Ge0NIBwjm-6H_1J7xWnyd4E(Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->lambda$onTextChange$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onTextChange$0(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isSearchDebounce:Z

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$600(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isSearchDebounce:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isSearchDebounce:Z

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    return-void
.end method
