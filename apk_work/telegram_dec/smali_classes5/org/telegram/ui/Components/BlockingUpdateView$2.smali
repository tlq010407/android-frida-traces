.class Lorg/telegram/ui/Components/BlockingUpdateView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BlockingUpdateView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BlockingUpdateView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$000(Lorg/telegram/ui/Components/BlockingUpdateView;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/high16 p1, 0x42100000    # 36.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    iget-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {p2}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$000(Lorg/telegram/ui/Components/BlockingUpdateView;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p2

    add-int p3, p4, p1

    add-int/2addr p1, p5

    invoke-virtual {p2, p4, p5, p3, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    return-void
.end method
