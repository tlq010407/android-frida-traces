.class Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
