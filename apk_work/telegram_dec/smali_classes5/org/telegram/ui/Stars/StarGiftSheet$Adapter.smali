.class Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$Adapter$SpaceView;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter$SpaceView;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object p2

    aget p2, p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter$SpaceView;->setHeight(II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter$SpaceView;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter$SpaceView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setHeights(II)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object v0

    aget v0, v0, v2

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object v0

    aput p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I

    move-result-object p1

    aput p2, p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
