.class Lorg/telegram/ui/Components/ItemOptions$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions;->dismissDim(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$dimViewFinal:Lorg/telegram/ui/Components/ItemOptions$DimView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$dimViewFinal:Lorg/telegram/ui/Components/ItemOptions$DimView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$dimViewFinal:Lorg/telegram/ui/Components/ItemOptions$DimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$dimViewFinal:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$dimViewFinal:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$800(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$900(Lorg/telegram/ui/Components/ItemOptions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$6;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ItemOptions;->access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->invalidateCustom()V

    :cond_0
    return-void
.end method
