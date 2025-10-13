.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;
.super Lorg/telegram/ui/Components/Paint/RenderView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$originalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/graphics/Bitmap;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-object p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->val$originalBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    return-void
.end method


# virtual methods
.method public selectBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->val$originalBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->select(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void
.end method
