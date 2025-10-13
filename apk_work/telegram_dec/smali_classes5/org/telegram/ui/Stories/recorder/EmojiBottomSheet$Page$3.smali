.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;
.super Lorg/telegram/ui/Components/EmojiTabsStrip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    move-object/from16 v0, p10

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->val$this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onTabClick(I)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->scrollingAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop()F

    move-result p1

    float-to-int p1, p1

    const/high16 v2, 0x42cc0000    # 102.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method
