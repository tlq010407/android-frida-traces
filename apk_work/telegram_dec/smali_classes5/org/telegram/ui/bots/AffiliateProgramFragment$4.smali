.class Lorg/telegram/ui/bots/AffiliateProgramFragment$4;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/AffiliateProgramFragment;->createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/AffiliateProgramFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/bots/AffiliateProgramFragment$4;->this$0:Lorg/telegram/ui/bots/AffiliateProgramFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/16 v0, 0x2a

    if-ne p2, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$4;->this$0:Lorg/telegram/ui/bots/AffiliateProgramFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment$4;->this$0:Lorg/telegram/ui/bots/AffiliateProgramFragment;

    invoke-static {p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->access$200(Lorg/telegram/ui/bots/AffiliateProgramFragment;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x15

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
