.class Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
