.class Lorg/telegram/ui/Components/EmojiView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 9

    instance-of p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5400(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onClearEmojiRecent()V

    :cond_0
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->clearTouchesFor(Landroid/view/View;)V

    return v2

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    :cond_2
    const-string v3, "\ud83c\udffb"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffd"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffe"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udfff"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5400(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/CompoundEmoji;->isCompound(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5, p2}, Lorg/telegram/ui/Components/EmojiView;->access$5702(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView;->access$5802(Lorg/telegram/ui/Components/EmojiView;F)F

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView;->access$6002(Lorg/telegram/ui/Components/EmojiView;F)F

    if-eqz v4, :cond_5

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setSelection(I)V

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setEmoji(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupWidth()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getPopupHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v5

    mul-int v4, v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSelection()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    :goto_3
    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v0

    sub-int/2addr v5, v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v5, v7, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v1

    aget v1, v1, v0

    sub-int/2addr v1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v4, v1

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v0

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v0

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    sub-int/2addr v5, v1

    add-int/2addr v4, v5

    :cond_9
    :goto_5
    neg-int v1, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x41f00000    # 30.0f

    goto :goto_6

    :cond_b
    const/high16 v4, 0x41b00000    # 22.0f

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setupArrow(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {p2, p1, v1, v4}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$6;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    goto/16 :goto_0

    :cond_c
    return v0
.end method
