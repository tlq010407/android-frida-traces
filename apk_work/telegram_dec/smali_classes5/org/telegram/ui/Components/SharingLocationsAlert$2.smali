.class Lorg/telegram/ui/Components/SharingLocationsAlert$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$2;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$2;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$100(Lorg/telegram/ui/Components/SharingLocationsAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$2;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$200(Lorg/telegram/ui/Components/SharingLocationsAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
