.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

.field final synthetic val$containerView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iput-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;->val$containerView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;->val$containerView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
