.class Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;
.super Lorg/telegram/ui/Cells/WallpaperCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersListActivity$ListAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/WallpaperCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWallpaperClick(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->access$5500(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)V

    return-void
.end method

.method protected onWallpaperLongClick(Ljava/lang/Object;I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/WallpapersListActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity;->access$5600(Lorg/telegram/ui/WallpapersListActivity;Lorg/telegram/ui/Cells/WallpaperCell;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
