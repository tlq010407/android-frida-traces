.class Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$3;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
