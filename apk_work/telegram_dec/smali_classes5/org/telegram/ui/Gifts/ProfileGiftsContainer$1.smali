.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$100(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$200(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_1
    return-void
.end method
