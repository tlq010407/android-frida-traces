.class Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachRestrictedLayout$1;Landroid/content/Context;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
