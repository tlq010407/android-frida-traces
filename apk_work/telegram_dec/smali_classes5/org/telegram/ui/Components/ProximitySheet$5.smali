.class Lorg/telegram/ui/Components/ProximitySheet$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProximitySheet;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ProximitySheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProximitySheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$400(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$400(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$402(Lorg/telegram/ui/Components/ProximitySheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$502(Lorg/telegram/ui/Components/ProximitySheet;I)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->access$400(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->access$400(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ProximitySheet;->access$402(Lorg/telegram/ui/Components/ProximitySheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$502(Lorg/telegram/ui/Components/ProximitySheet;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProximitySheet;->access$600(Lorg/telegram/ui/Components/ProximitySheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$5;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
