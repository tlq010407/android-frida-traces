.class Lorg/telegram/ui/LanguageSelectActivity$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$600(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->drawItemBackground(Landroid/graphics/Canvas;III)V

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->access$700(Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->access$800(Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->access$700(Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->access$800(Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;III)V

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
