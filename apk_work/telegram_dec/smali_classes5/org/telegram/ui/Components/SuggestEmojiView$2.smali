.class Lorg/telegram/ui/Components/SuggestEmojiView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$500(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->drawContainerEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$600(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$700(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v1

    const v2, 0x40d51eb8    # 6.66f

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v1, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$600(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$700(Lorg/telegram/ui/Components/SuggestEmojiView;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_1
    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$800(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$800(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$2;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$800(Lorg/telegram/ui/Components/SuggestEmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->attach()V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->detach()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
