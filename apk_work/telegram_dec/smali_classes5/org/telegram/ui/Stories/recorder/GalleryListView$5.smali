.class Lorg/telegram/ui/Stories/recorder/GalleryListView$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
