.class public final synthetic Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field public final synthetic f$2:Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;->$r8$lambda$dztC9n4utVtDI4yEDCFXxnud3hM(Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/view/View;)V

    return-void
.end method
