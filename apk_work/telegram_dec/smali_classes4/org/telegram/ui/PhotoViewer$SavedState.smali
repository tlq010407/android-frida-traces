.class Lorg/telegram/ui/PhotoViewer$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedState"
.end annotation


# instance fields
.field private index:I

.field private messages:Ljava/util/ArrayList;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;ILjava/util/ArrayList;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$SavedState;->messages:Ljava/util/ArrayList;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$SavedState;->index:I

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$SavedState;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-void
.end method


# virtual methods
.method public restore()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$6502(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, -0x7ffcff00

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x20000

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x110

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$6700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->messages:Ljava/util/ArrayList;

    iget v11, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->index:I

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    iget v15, v0, Lorg/telegram/ui/PhotoViewer$SavedState;->index:I

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v12 .. v17}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/PhotoViewer;->access$6800(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method
