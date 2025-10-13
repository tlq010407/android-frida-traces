.class Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->renderHardwareViewToBitmap(Landroid/view/View;FLorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic val$whenBitmapDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$whenBitmapDone:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$whenBitmapDone:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$bitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$whenBitmapDone:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method
