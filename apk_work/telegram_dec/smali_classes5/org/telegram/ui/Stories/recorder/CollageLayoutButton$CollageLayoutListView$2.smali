.class Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->val$flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;->position:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$100(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(ZZ)V

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;->position:I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x20ffffff

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->val$flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;->position:I

    if-ltz v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$100(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(ZZ)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;->val$flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->remove(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
