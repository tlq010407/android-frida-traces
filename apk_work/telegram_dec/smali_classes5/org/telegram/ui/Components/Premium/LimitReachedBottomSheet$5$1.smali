.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
