.class Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasePlaceProvider"
.end annotation


# instance fields
.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic this$0:Lorg/telegram/ui/CachedMediaLayout;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/CachedMediaLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CachedMediaLayout;Lorg/telegram/ui/CachedMediaLayout$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;-><init>(Lorg/telegram/ui/CachedMediaLayout;)V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/CachedMediaLayout;->access$1000(Lorg/telegram/ui/CachedMediaLayout;I)Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p3}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 p4, 0x0

    aget p4, p2, p4

    iput p4, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p4, 0x1

    aget p2, p2, p4

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    iget-object p2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setRecyclerListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BasePlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method
