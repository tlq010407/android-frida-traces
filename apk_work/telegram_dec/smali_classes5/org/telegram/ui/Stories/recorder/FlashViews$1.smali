.class Lorg/telegram/ui/Stories/recorder/FlashViews$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/FlashViews;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/FlashViews;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews$1;->this$0:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews$1;->this$0:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->access$100(Lorg/telegram/ui/Stories/recorder/FlashViews;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews$1;->this$0:Lorg/telegram/ui/Stories/recorder/FlashViews;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->drawGradient(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews$1;->this$0:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->access$000(Lorg/telegram/ui/Stories/recorder/FlashViews;)V

    return-void
.end method
