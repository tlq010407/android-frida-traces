.class Lorg/telegram/ui/Components/Bulletin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin;

.field final synthetic val$top:Z


# direct methods
.method public static synthetic $r8$lambda$BeEQxofGRs8lgJSJWDtUm9QUkmk(Lorg/telegram/ui/Components/Bulletin$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$2;->lambda$onLayoutChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sEqQ_ehS5ENeAds6gGyAYFIcf74(Lorg/telegram/ui/Components/Bulletin$2;ZLjava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$2;->lambda$onLayoutChange$1(ZLjava/lang/Float;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Bulletin;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Bulletin$2;->val$top:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningEnter:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onEnterTransitionEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Bulletin;->setCanHideOnShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLayoutChange$1(ZLjava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onBottomOffsetChange(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$200(Lorg/telegram/ui/Components/Bulletin;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onShow()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$400(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p3}, Lorg/telegram/ui/Components/Bulletin;->access$500(Lorg/telegram/ui/Components/Bulletin;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Bulletin;->access$600(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->access$302(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$700(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$700(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iget p3, p3, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {p2, p3}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getBottomOffset(I)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onShow(Lorg/telegram/ui/Components/Bulletin;)V

    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->access$800()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$900(Lorg/telegram/ui/Components/Bulletin;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$1000(Lorg/telegram/ui/Components/Bulletin;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningEnter:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$1100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    move-result-object p2

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    new-instance p5, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Bulletin$2;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->val$top:Z

    new-instance p6, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda2;

    invoke-direct {p6, p0, p1}, Lorg/telegram/ui/Components/Bulletin$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Bulletin$2;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iget p7, p1, Lorg/telegram/ui/Components/Bulletin;->currentBottomOffset:I

    invoke-interface/range {p2 .. p7}, Lorg/telegram/ui/Components/Bulletin$Layout$Transition;->animateEnter(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->val$top:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p3}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iget p4, p4, Lorg/telegram/ui/Components/Bulletin;->currentBottomOffset:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-interface {p1, p3}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onBottomOffsetChange(F)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onEnterTransitionStart()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onEnterTransitionEnd()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$2;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iget-boolean p3, p1, Lorg/telegram/ui/Components/Bulletin;->setCanHideOnShow:Z

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_6
    :goto_1
    return-void
.end method
