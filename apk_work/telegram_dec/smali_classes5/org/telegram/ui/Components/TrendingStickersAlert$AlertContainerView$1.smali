.class Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;-><init>(Lorg/telegram/ui/Components/TrendingStickersAlert;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastIsWidthGreater:Z

.field private lastKeyboardHeight:I

.field final synthetic this$1:Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;Lorg/telegram/ui/Components/TrendingStickersAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->this$1:Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->val$this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IZ)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->lastKeyboardHeight:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->lastIsWidthGreater:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->lastKeyboardHeight:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->lastIsWidthGreater:Z

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->this$1:Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;->access$400(Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->this$1:Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;->this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TrendingStickersAlert;->setAllowNestedScroll(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView$1;->this$1:Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;->access$402(Lorg/telegram/ui/Components/TrendingStickersAlert$AlertContainerView;Z)Z

    :cond_1
    return-void
.end method
