.class Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->stickerDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
